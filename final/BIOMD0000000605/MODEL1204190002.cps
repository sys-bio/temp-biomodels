<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.16 (Build 104) (http://www.copasi.org) at 2016-04-07 22:26:03 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="16" versionDevel="104" copasiSourcesModified="0">
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
    <Function key="Function_40" name="function_4_v14_1" type="UserDefined" reversible="false">
      <Expression>
        kv14_1*cellvol^kv14_3/(cellvol^kv14_3+kv14_2)*(1-OsmoE/(OsmoE+kv14_4))*G6P/kv14_5/(1+G6P/kv14_5)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_272" name="G6P" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_268" name="OsmoE" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_254" name="cellvol" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_264" name="kv14_1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_266" name="kv14_2" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_258" name="kv14_3" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_270" name="kv14_4" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_274" name="kv14_5" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="function_4_v10Batch_1" type="UserDefined" reversible="true">
      <Expression>
        v10speed*cellnum/initcellnum-v10speed
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_271" name="cellnum" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_267" name="initcellnum" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_275" name="v10speed" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="function_4_vVG6P_1" type="UserDefined" reversible="true">
      <Expression>
        G6P*volchangespeed/cellvol
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_265" name="G6P" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_262" name="cellvol" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_273" name="volchangespeed" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="function_4_vVgluci_1" type="UserDefined" reversible="true">
      <Expression>
        glucose_i*volchangespeed/cellvol
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_278" name="cellvol" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_276" name="glucose_i" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_269" name="volchangespeed" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="function_4_vVStl1_1" type="UserDefined" reversible="true">
      <Expression>
        Stl1*volchangespeed/cellvol
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_279" name="Stl1" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_281" name="cellvol" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_246" name="volchangespeed" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="function_4_v4_1" type="UserDefined" reversible="false">
      <Expression>
        (kv4_2*(1-F26DP^kv4_5/(F26DP+kv4_3)^kv4_5)+kv4_1*F26DP^kv4_5/(F26DP+kv4_3)^kv4_5)*(G6P/kv4_4)^2/(1+(G6P/kv4_4)^2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_277" name="F26DP" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_290" name="G6P" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_288" name="kv4_1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_282" name="kv4_2" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_286" name="kv4_3" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_292" name="kv4_4" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_284" name="kv4_5" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="function_4_vVpyruvate_1" type="UserDefined" reversible="true">
      <Expression>
        pyruvate*volchangespeed/cellvol
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_285" name="cellvol" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_293" name="pyruvate" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_289" name="volchangespeed" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="function_4_vVPfk2627a_1" type="UserDefined" reversible="true">
      <Expression>
        Pfk2627a*volchangespeed/cellvol
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_283" name="Pfk2627a" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_294" name="cellvol" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_291" name="volchangespeed" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="function_4_vVstl1mRNA_1" type="UserDefined" reversible="true">
      <Expression>
        stl1mRNA*volchangespeed/cellvol
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_297" name="cellvol" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_295" name="stl1mRNA" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_287" name="volchangespeed" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="function_4_v1Batch_1" type="UserDefined" reversible="false">
      <Expression>
        v1speed*cellnum/initcellnum-v1speed
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_280" name="cellnum" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_300" name="initcellnum" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_298" name="v1speed" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="function_4_vVcin_1" type="UserDefined" reversible="true">
      <Expression>
        cin*volchangespeed/cellvol
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_303" name="cellvol" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_301" name="cin" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_296" name="volchangespeed" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="function_4_vVos_1" type="UserDefined" reversible="true">
      <Expression>
        vV_1*CellSurface*(Turgor-vV_2*vV_R*vV_T*(glycerol_e+OsmoE-(glycerol_i+cin)))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_299" name="CellSurface" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_316" name="OsmoE" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_306" name="Turgor" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_320" name="cin" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_314" name="glycerol_e" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_318" name="glycerol_i" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_304" name="vV_1" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_308" name="vV_2" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_310" name="vV_R" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_312" name="vV_T" order="9" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="function_4_vVethanol_i_1" type="UserDefined" reversible="true">
      <Expression>
        ethanol_i*volchangespeed/cellvol
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_313" name="cellvol" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_321" name="ethanol_i" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_317" name="volchangespeed" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="function_4_vVF16DP_1" type="UserDefined" reversible="true">
      <Expression>
        F16DP*volchangespeed/cellvol
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_311" name="F16DP" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_307" name="cellvol" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_319" name="volchangespeed" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="function_4_vVtrioseP_1" type="UserDefined" reversible="true">
      <Expression>
        trioseP*volchangespeed/cellvol
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_322" name="cellvol" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_305" name="trioseP" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_315" name="volchangespeed" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="function_4_vVPfk2627i_1" type="UserDefined" reversible="true">
      <Expression>
        Pfk2627i*volchangespeed/cellvol
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_323" name="Pfk2627i" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_325" name="cellvol" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_309" name="volchangespeed" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="function_4_v13a_1" type="UserDefined" reversible="true">
      <Expression>
        kv13a_1*CellSurface*Fps1r*(glycerol_i-kDiff*glycerol_e)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_302" name="CellSurface" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_328" name="Fps1r" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_334" name="glycerol_e" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_330" name="glycerol_i" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_332" name="kDiff" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_326" name="kv13a_1" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="function_4_v13b_1" type="UserDefined" reversible="false">
      <Expression>
        glycerol_e*kv13b_1*Stl1/(kv13b_2+glycerol_e)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_327" name="Stl1" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_335" name="glycerol_e" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_331" name="kv13b_1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_336" name="kv13b_2" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_58" name="function_4_v17f_1" type="UserDefined" reversible="false">
      <Expression>
        kv17f_1*Hog1PP^kx1/(Hog1PP^kx1+kv17f_2)+kv17f_3*AOG^kx2/(AOG^kx2+kv17f_4)+kv17f_6
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_344" name="AOG" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_329" name="Hog1PP" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_337" name="kv17f_1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_340" name="kv17f_2" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_342" name="kv17f_3" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_348" name="kv17f_4" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_350" name="kv17f_6" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_338" name="kx1" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_346" name="kx2" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_59" name="function_4_v18f_1" type="UserDefined" reversible="false">
      <Expression>
        kv18f_1*gpd1mRNA
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_347" name="gpd1mRNA" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_351" name="kv18f_1" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_60" name="function_4_v11_1" type="UserDefined" reversible="true">
      <Expression>
        kv11_1*CellSurface*(acetate_i-kv11_2*acetate_e)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_343" name="CellSurface" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_353" name="acetate_e" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_339" name="acetate_i" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_345" name="kv11_1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_324" name="kv11_2" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_61" name="function_4_v20f_1" type="UserDefined" reversible="false">
      <Expression>
        kv20f_1*Hog1PP^kv20f_x/(Hog1PP^kv20f_x+kv20f_2)+kv20f_3
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_333" name="Hog1PP" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_354" name="kv20f_1" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_356" name="kv20f_2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_358" name="kv20f_3" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_349" name="kv20f_x" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_62" name="function_4_v16f_1" type="UserDefined" reversible="false">
      <Expression>
        Hog1*kv16f_1*OsmoE*(kv16f_2/Vm)^kv16f_3
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_359" name="Hog1" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_352" name="OsmoE" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_363" name="Vm" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_355" name="kv16f_1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_361" name="kv16f_2" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_365" name="kv16f_3" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_63" name="function_4_v21f_1" type="UserDefined" reversible="false">
      <Expression>
        kv21f_1*stl1mRNA
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_366" name="kv21f_1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_362" name="stl1mRNA" order="1" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_64" name="function_4_v23f_1" type="UserDefined" reversible="false">
      <Expression>
        AOGi*kv23f_1*(kv23f_2/Vm)^kv23f_3
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_360" name="AOGi" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_369" name="Vm" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_341" name="kv23f_1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_367" name="kv23f_2" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_371" name="kv23f_3" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_65" name="function_4_v3_1" type="UserDefined" reversible="true">
      <Expression>
        (kv3_1*G6P/kv3_2-kv3_3*trehalose/kv3_4)/(1+G6P/kv3_2+trehalose/kv3_4)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_368" name="G6P" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_372" name="kv3_1" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_364" name="kv3_2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_374" name="kv3_3" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_378" name="kv3_4" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_376" name="trehalose" order="5" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_66" name="function_4_v13aBatch_1" type="UserDefined" reversible="true">
      <Expression>
        v13aspeed*cellnum/initcellnum-v13aspeed
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_375" name="cellnum" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_357" name="initcellnum" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_379" name="v13aspeed" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_67" name="function_4_v13bBatch_1" type="UserDefined" reversible="false">
      <Expression>
        v13bspeed*cellnum/initcellnum-v13bspeed
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_377" name="cellnum" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_381" name="initcellnum" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_370" name="v13bspeed" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_68" name="function_4_v12_1" type="UserDefined" reversible="true">
      <Expression>
        kv12_1*CellSurface*(ethanol_i-kv12_2*ethanol_e)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_373" name="CellSurface" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_388" name="ethanol_e" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_384" name="ethanol_i" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_382" name="kv12_1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_386" name="kv12_2" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_69" name="function_4_v5_1" type="UserDefined" reversible="true">
      <Expression>
        kv5_1*F16DP/kv5_2/(1+F16DP/kv5_2)-kv5_3*trioseP/kv5_4/(1+trioseP/kv5_4)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_385" name="F16DP" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_389" name="kv5_1" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_380" name="kv5_2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_391" name="kv5_3" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_395" name="kv5_4" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_393" name="trioseP" order="5" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_71" name="function_4_vVGpd1_1" type="UserDefined" reversible="true">
      <Expression>
        Gpd1*volchangespeed/cellvol
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_402" name="Gpd1" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_390" name="cellvol" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_398" name="volchangespeed" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_72" name="function_4_vVtrehalose_1" type="UserDefined" reversible="true">
      <Expression>
        trehalose*volchangespeed/cellvol
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_404" name="cellvol" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_394" name="trehalose" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_400" name="volchangespeed" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_73" name="function_4_vVgpd1mRNA_1" type="UserDefined" reversible="true">
      <Expression>
        gpd1mRNA*volchangespeed/cellvol
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_407" name="cellvol" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_405" name="gpd1mRNA" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_387" name="volchangespeed" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_74" name="function_4_v10_1" type="UserDefined" reversible="true">
      <Expression>
        kv10_1*CellSurface*(trehalose-kv10_2*trehalose_e)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_403" name="CellSurface" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_408" name="kv10_1" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_412" name="kv10_2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_410" name="trehalose" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_414" name="trehalose_e" order="4" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_75" name="function_4_v12Batch_1" type="UserDefined" reversible="true">
      <Expression>
        v12speed*cellnum/initcellnum-v12speed
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_411" name="cellnum" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_406" name="initcellnum" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_415" name="v12speed" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_76" name="function_4_v11Batch_1" type="UserDefined" reversible="true">
      <Expression>
        v11speed*cellnum/initcellnum-v11speed
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_413" name="cellnum" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_418" name="initcellnum" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_416" name="v11speed" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_77" name="function_4_vVHog1_1" type="UserDefined" reversible="true">
      <Expression>
        Hog1*volchangespeed/cellvol
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_419" name="Hog1" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_421" name="cellvol" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_409" name="volchangespeed" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_78" name="function_4_vVacetate_i_1" type="UserDefined" reversible="true">
      <Expression>
        acetate_i*volchangespeed/cellvol
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_422" name="acetate_i" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_424" name="cellvol" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_417" name="volchangespeed" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_79" name="Henri-Michaelis-Menten (irreversible)_1" type="UserDefined" reversible="false">
      <Expression>
        kv1_1*glucose_e/(kv1_2+glucose_e)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_420" name="glucose_e" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_425" name="kv1_1" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_427" name="kv1_2" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_80" name="function_4_v6_1_1" type="UserDefined" reversible="false">
      <Expression>
        trioseP^kv6_3*kv6_1*Gpd1/(kv6_2+trioseP^kv6_3)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_432" name="Gpd1" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_430" name="kv6_1" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_434" name="kv6_2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_423" name="kv6_3" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_428" name="trioseP" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_81" name="function_4_v6b_1_1" type="UserDefined" reversible="false">
      <Expression>
        kv6b_x*kv6b_4*trioseP^2/kv6b_5/(1+trioseP^2/kv6b_5)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_431" name="kv6b_4" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_437" name="kv6b_5" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_435" name="kv6b_x" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_426" name="trioseP" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_82" name="function_4_vVStl1_1_1" type="UserDefined" reversible="true">
      <Expression>
        glycerol_i*volchangespeed/cellvol
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_439" name="cellvol" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_438" name="glycerol_i" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_429" name="volchangespeed" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_83" name="function_4_vVtrioseP_1_1" type="UserDefined" reversible="true">
      <Expression>
        Hog1PP*volchangespeed/cellvol
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_440" name="Hog1PP" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_442" name="cellvol" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_436" name="volchangespeed" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_84" name="function_4_v19f_1" type="UserDefined" reversible="false">
      <Expression>
        kv19f_1*Hog1PP*Pfk2627i
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_433" name="Hog1PP" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_445" name="Pfk2627i" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_443" name="kv19f_1" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_85" name="function_4_v15f_1" type="UserDefined" reversible="false">
      <Expression>
        G6P*kv15f_1*Pfk2627a/(kv15f_2+G6P)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_446" name="G6P" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_448" name="Pfk2627a" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_441" name="kv15f_1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_450" name="kv15f_2" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_86" name="Henri-Michaelis-Menten (irreversible)_2" type="UserDefined" reversible="false">
      <Expression>
        kv15r_1*F26DP/(kv15r_2+F26DP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_447" name="F26DP" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_451" name="kv15r_1" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_452" name="kv15r_2" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_87" name="Henri-Michaelis-Menten (irreversible)_3" type="UserDefined" reversible="false">
      <Expression>
        kv2_1*glucose_i/(kv2_2+glucose_i)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_449" name="glucose_i" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_453" name="kv2_1" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_455" name="kv2_2" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_88" name="Henri-Michaelis-Menten (irreversible)_4" type="UserDefined" reversible="false">
      <Expression>
        kv7_1*trioseP/(kv7_2+trioseP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_456" name="kv7_1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_458" name="kv7_2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_444" name="trioseP" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_89" name="Henri-Michaelis-Menten (irreversible)_5" type="UserDefined" reversible="false">
      <Expression>
        kv8_1*pyruvate/(kv8_2+pyruvate)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_459" name="kv8_1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_461" name="kv8_2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_454" name="pyruvate" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_90" name="Henri-Michaelis-Menten (irreversible)_6" type="UserDefined" reversible="false">
      <Expression>
        kv9_1*pyruvate/(kv9_2+pyruvate)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_462" name="kv9_1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_464" name="kv9_2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_457" name="pyruvate" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_95" name="function_4_v22 [1]" type="UserDefined" reversible="false">
      <Expression>
        kv22_1*-Turgor/(kv22_3+-Turgor)*1.5*(1-Hog1PP*1.29462/(Hog1PP*1.29462+kv22_2))-kv22_1*Fps1r
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_675" name="Fps1r" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_673" name="Hog1PP" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_668" name="Turgor" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_678" name="kv22_1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_674" name="kv22_2" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_677" name="kv22_3" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_5" name="PetelenzKuehn_osmoadaptation_HOG1att" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mol" type="deterministic" avogadroConstant="6.02214179e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Model_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-11-30T18:31:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:go:GO:0006973"/>
    <CopasiMT:encodes rdf:resource="urn:miriam:go:GO:0061621"/>
    <CopasiMT:encodes rdf:resource="urn:miriam:go:GO:0071470"/>
    <CopasiMT:isHomologTo rdf:resource="urn:miriam:taxonomy:4932"/>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <ListOfCompartments>
      <Compartment key="Compartment_1" name="intra" simulationType="fixed" dimensionality="3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-10T10:34:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0005737" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isPartOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0044424" />
      </rdf:Bag>
    </CopasiMT:isPartOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_9" name="extra" simulationType="fixed" dimensionality="3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-10T10:34:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0005576" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_55" name="glycerol_i" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_55">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:43:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.chebi:CHEBI%3A17754" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0005622" />
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by ChEBI and GO is correct
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_51" name="cin" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_51">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.chebi:CHEBI%3A25728" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0005622" />
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_47" name="glucose_i" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:43:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.chebi:CHEBI%3A17234" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0005622" />
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by ChEBI and GO is correct
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_43" name="G6P" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:43:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.chebi:CHEBI%3A17665" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0005622" />
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by ChEBI and GO is correct
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_39" name="trehalose" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:45:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.chebi:CHEBI%3A27082" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0005622" />
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by ChEBI and GO is correct
However, the name is misleading, since all the other molecular species in the intracellular region are desinganed as xxxxx_i but for this one the _i is missing.
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_35" name="F16DP" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:43:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.chebi:CHEBI%3A16905" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0005622" />
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by ChEBI and GO is correct
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_31" name="F26DP" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:43:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:pubchem.compound:105021" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0005622" />
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by PubChem-compound and GO is correct
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_27" name="trioseP" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:46:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:pubchem.compound:4643300" />
        <rdf:li rdf:resource="urn:miriam:pubchem.compound:729" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0005622" />
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by PubChem-compound and GO is correct
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_23" name="Gpd1" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-11-30T18:33:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:uniprot:Q00055" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0005622" />
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by UniProt and GO is correct
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="pyruvate" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-11-30T18:33:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.chebi:CHEBI%3A15361" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0005622" />
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by ChEBI and GO is correct
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="acetate_i" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:42:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.chebi:CHEBI%3A30089" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0005622" />
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by ChEBI and GO is correct
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="ethanol_i" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:43:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.chebi:CHEBI%3A16236" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0005622" />
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by ChEBI and GO is correct
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="Hog1" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-11-30T18:33:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:uniprot:P32485" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by UnitProt is correct
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="Hog1PP" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-11-30T18:33:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:uniprot:P32485" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by UniProt is correct
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_116" name="Pfk2627a" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_116">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-11-30T18:33:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:sgd:S000005496" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:sgd:S000001369" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by SGD is correct
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_118" name="Pfk2627i" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_118">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-11-30T18:33:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:sgd:S000005496" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:sgd:S000001369" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by SGD is correct
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_120" name="AOG" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_120">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:42:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0045941" />
      </rdf:Bag>
    </CopasiMT:encodes>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_122" name="gpd1mRNA" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_122">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:43:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isEncodedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:sgd:S000002180" />
      </rdf:Bag>
    </CopasiMT:isEncodedBy>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by SGD is correct
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_124" name="stl1mRNA" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_124">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:45:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isEncodedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:sgd:S000002944" />
      </rdf:Bag>
    </CopasiMT:isEncodedBy>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by SGD is correct
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_126" name="Stl1" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_126">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-11-30T18:33:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:uniprot:P39932" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by UniProt is correct
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_128" name="AOGi" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_128">
    <CopasiMT:encodes>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0045941" />
      </rdf:Bag>
    </CopasiMT:encodes>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_130" name="Fps1r" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_130">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:43:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:uniprot:P23900" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by UniProt is correct
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_132" name="biomass" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_134" name="cellvol" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_134">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-10T10:34:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_136" name="glycerol_e" simulationType="reactions" compartment="Compartment_9">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_136">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:43:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.chebi:CHEBI%3A17754" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0005576" />
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by ChEBI and GO is correct
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_138" name="glucose_e" simulationType="reactions" compartment="Compartment_9">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_138">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:43:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.chebi:CHEBI%3A17234" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0005576" />
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by ChEBI and GO is correct
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_140" name="acetate_e" simulationType="reactions" compartment="Compartment_9">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_140">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:42:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.chebi:CHEBI%3A30089" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0005576" />
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by ChEBI and GO is correct
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_142" name="ethanol_e" simulationType="reactions" compartment="Compartment_9">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_142">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:43:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.chebi:CHEBI%3A16236" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0005576" />
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by ChEBI and GO is correct
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_144" name="trehalose_e" simulationType="reactions" compartment="Compartment_9">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_144">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:46:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.chebi:CHEBI%3A27082" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0005576" />
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by ChEBI and GO is correct
        </Comment>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_125" name="cellvol_init" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_124" name="kv19f_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_123" name="kv19r_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_122" name="kv17f_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_121" name="kv17f_3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_120" name="kv17f_6" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_119" name="parameter_97" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_118" name="vV_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_117" name="vV_2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_116" name="vV_R" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_115" name="vV_T" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_114" name="t_stress" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_113" name="kv1_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_112" name="kv1_2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_111" name="initcellnum" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_110" name="kv2_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_109" name="kv2_2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_108" name="kv3_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_107" name="kv3_2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_106" name="kv3_3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_105" name="kv3_4" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_104" name="kv4_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_103" name="kv4_2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_102" name="kv4_3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_101" name="kv4_4" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_100" name="kv4_5" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_99" name="kv5_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_98" name="kv5_2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_97" name="kv5_3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_96" name="kv5_4" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_95" name="kv6_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_94" name="kv6_2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_93" name="kv6_3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_92" name="kv6b_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_91" name="kv6b_2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_90" name="kv6b_3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_89" name="kv6b_4" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_88" name="kv6b_5" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_87" name="kv7_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_86" name="kv7_2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_85" name="kv8_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_84" name="kv8_2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_83" name="kv9_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_82" name="kv9_2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_81" name="kv16f_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_80" name="kv16f_2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_79" name="kv16f_3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_78" name="kv16r_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_77" name="kv15f_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_76" name="kv15f_2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_75" name="kv15r_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_74" name="kv15r_2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_73" name="kv17f_2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_72" name="kv17f_4" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_71" name="kv17f_5" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_70" name="kv17r_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_69" name="kv18f_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_68" name="kv18r_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_67" name="kv20f_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_66" name="kv20f_2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_65" name="kv20f_3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_64" name="kv20f_x" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_63" name="kv20r_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_62" name="kv21f_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_61" name="kv21r_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_60" name="kv23f_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_59" name="kv23f_2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_58" name="kv23f_3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_57" name="kv23r_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_56" name="kv22_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_55" name="kv22_2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_54" name="kv22_3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_53" name="kv14_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_52" name="kv14_2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_51" name="kv14_3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_50" name="kv14_4" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_49" name="kv14_5" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_48" name="kv10_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_47" name="kv10_2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_46" name="kv11_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_45" name="kv11_2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_44" name="kv12_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_43" name="kv12_2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_42" name="kv13a_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_41" name="kv13b_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_40" name="kv13b_2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_39" name="kx1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_38" name="kx2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_37" name="kv22_4_Hog1A" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_36" name="v" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_35" name="kv22_Hog1D_t" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_34" name="kv22_Hog1D_fT" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_33" name="kv22_Hog1D_d" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_32" name="v15f_v" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_31" name="v15r_v" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_30" name="v19r_v" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_29" name="Vm" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[intra],Vector=Metabolites[cellvol],Reference=Concentration&gt;+0.00024
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_28" name="CellSurface" simulationType="assignment">
        <Expression>
          (36*PI)^(1/3)*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[Vm],Reference=Value&gt;^(2/3)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_27" name="v13aspeed" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[intra],Vector=Metabolites[Fps1r],Reference=Concentration&gt;*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv13a_1],Reference=Value&gt;*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[CellSurface],Reference=Value&gt;*(&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[intra],Vector=Metabolites[glycerol_i],Reference=Concentration&gt;-&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[extra],Vector=Metabolites[glycerol_e],Reference=Concentration&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_26" name="v12speed" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv12_1],Reference=Value&gt;*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[CellSurface],Reference=Value&gt;*(&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[intra],Vector=Metabolites[ethanol_i],Reference=Concentration&gt;-&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv12_2],Reference=Value&gt;*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[extra],Vector=Metabolites[ethanol_e],Reference=Concentration&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_25" name="v11speed" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv11_1],Reference=Value&gt;*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[CellSurface],Reference=Value&gt;*(&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[intra],Vector=Metabolites[acetate_i],Reference=Concentration&gt;-&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv11_2],Reference=Value&gt;*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[extra],Vector=Metabolites[acetate_e],Reference=Concentration&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_24" name="v10speed" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv10_1],Reference=Value&gt;*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[CellSurface],Reference=Value&gt;*(&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[intra],Vector=Metabolites[trehalose],Reference=Concentration&gt;-&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv10_2],Reference=Value&gt;*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[extra],Vector=Metabolites[trehalose_e],Reference=Concentration&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_23" name="Turgor" simulationType="assignment">
        <Expression>
          if(&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[Vm],Reference=Value&gt; gt 0.00025*0.9+0.00025,-2.9*(1-(0.00025-(&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[Vm],Reference=Value&gt;-0.00025))/(0.00025-0.00025*0.9)),0)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_22" name="OsmoE" simulationType="assignment">
        <Expression>
          0.355586+&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[parameter_97],Reference=Value&gt;*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[input],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_21" name="input" simulationType="assignment">
        <Expression>
          if(&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Reference=Time&gt; lt &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[t_stress],Reference=Value&gt;,0,if(&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Reference=Time&gt; lt &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[t_stress],Reference=Value&gt;+5,(&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Reference=Time&gt;-&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[t_stress],Reference=Value&gt;)/5,1))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_20" name="volchangespeed" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[vV_1],Reference=Value&gt;*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[CellSurface],Reference=Value&gt;*(&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[Turgor],Reference=Value&gt;-&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[vV_2],Reference=Value&gt;*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[vV_R],Reference=Value&gt;*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[vV_T],Reference=Value&gt;*(&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[extra],Vector=Metabolites[glycerol_e],Reference=Concentration&gt;+&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[OsmoE],Reference=Value&gt;-(&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[intra],Vector=Metabolites[glycerol_i],Reference=Concentration&gt;+&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[intra],Vector=Metabolites[cin],Reference=Concentration&gt;)))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_19" name="relVM" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[Vm],Reference=Value&gt;/0.00048
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_18" name="OD" simulationType="assignment">
        <Expression>
          2.94557e-09*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Reference=Time&gt;^2+6.49182e-05*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Reference=Time&gt;+0.595608
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="cellnum" simulationType="assignment">
        <Expression>
          -6.54824e+06*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[OD],Reference=Value&gt;^2+3.05651e+07*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[OD],Reference=Value&gt;-4.72751e+06
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="v1speed" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv1_1],Reference=Value&gt;*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[extra],Vector=Metabolites[glucose_e],Reference=Concentration&gt;/(&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv1_2],Reference=Value&gt;+&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[extra],Vector=Metabolites[glucose_e],Reference=Concentration&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="v13bspeed" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[extra],Vector=Metabolites[glycerol_e],Reference=Concentration&gt;*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv13b_1],Reference=Value&gt;*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[intra],Vector=Metabolites[Stl1],Reference=Concentration&gt;/(&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv13b_2],Reference=Value&gt;+&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[extra],Vector=Metabolites[glycerol_e],Reference=Concentration&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="kv16r_1VARIABLE" simulationType="assignment">
        <Expression>
          if(&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Reference=Time&gt; lt 4800,0.444296,0.444296*(&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Reference=Time&gt;/4800)^3)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="glycerol_measured" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[intra],Vector=Metabolites[glycerol_i],Reference=Concentration&gt;*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[intra],Vector=Metabolites[cellvol],Reference=Concentration&gt;/&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[cellvol_init],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="Hog1PP_measured" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[intra],Vector=Metabolites[Hog1PP],Reference=Concentration&gt;*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[intra],Vector=Metabolites[cellvol],Reference=Concentration&gt;/&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[cellvol_init],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="Gpd1_measured" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[intra],Vector=Metabolites[Gpd1],Reference=Concentration&gt;*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[intra],Vector=Metabolites[cellvol],Reference=Concentration&gt;/&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[cellvol_init],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="gpd1mRNA_measured" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[intra],Vector=Metabolites[gpd1mRNA],Reference=Concentration&gt;*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[intra],Vector=Metabolites[cellvol],Reference=Concentration&gt;/&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[cellvol_init],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="glucose_measured" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[intra],Vector=Metabolites[glucose_i],Reference=Concentration&gt;*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[intra],Vector=Metabolites[cellvol],Reference=Concentration&gt;/&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[cellvol_init],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="pyruvate_measured" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[intra],Vector=Metabolites[pyruvate],Reference=Concentration&gt;*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[intra],Vector=Metabolites[cellvol],Reference=Concentration&gt;/&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[cellvol_init],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="acetate_measured" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[intra],Vector=Metabolites[acetate_i],Reference=Concentration&gt;*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[intra],Vector=Metabolites[cellvol],Reference=Concentration&gt;/&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[cellvol_init],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="ethanol_measured" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[intra],Vector=Metabolites[ethanol_i],Reference=Concentration&gt;*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[intra],Vector=Metabolites[cellvol],Reference=Concentration&gt;/&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[cellvol_init],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="trehalose_measured" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[intra],Vector=Metabolites[trehalose],Reference=Concentration&gt;*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[intra],Vector=Metabolites[cellvol],Reference=Concentration&gt;/&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[cellvol_init],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="F16DP_measured" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[intra],Vector=Metabolites[F16DP],Reference=Concentration&gt;*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[intra],Vector=Metabolites[cellvol],Reference=Concentration&gt;/&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[cellvol_init],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="quantity" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_2" name="trioseP_measured" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[intra],Vector=Metabolites[trioseP],Reference=Concentration&gt;*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[intra],Vector=Metabolites[cellvol],Reference=Concentration&gt;/&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[cellvol_init],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="stl1mRNA_measured" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[intra],Vector=Metabolites[stl1mRNA],Reference=Concentration&gt;*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[intra],Vector=Metabolites[cellvol],Reference=Concentration&gt;/&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[cellvol_init],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_0" name="kv6b_x" simulationType="fixed">
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_57" name="v1" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_57">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:39:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0046323" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by GO is correct
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_138" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4781" name="kv1_1" value="5.05249e-06"/>
          <Constant key="Parameter_4780" name="kv1_2" value="0.899814"/>
        </ListOfConstants>
        <KineticLaw function="Function_79">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_420">
              <SourceParameter reference="Metabolite_138"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_425">
              <SourceParameter reference="ModelValue_113"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_427">
              <SourceParameter reference="ModelValue_112"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_56" name="v10" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_56">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:39:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0015771" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by GO is correct
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_144" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4801" name="CellSurface" value="0.0296468"/>
          <Constant key="Parameter_4798" name="kv10_1" value="1.83291e-07"/>
          <Constant key="Parameter_4802" name="kv10_2" value="4.26512"/>
        </ListOfConstants>
        <KineticLaw function="Function_74">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_403">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_408">
              <SourceParameter reference="ModelValue_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_412">
              <SourceParameter reference="ModelValue_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_410">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_414">
              <SourceParameter reference="Metabolite_144"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_55" name="v10Batch" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_55">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:39:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0051049" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by GO is correct
        </Comment>
        <ListOfProducts>
          <Product metabolite="Metabolite_144" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4803" name="cellnum" value="1.11543e+07"/>
          <Constant key="Parameter_4804" name="initcellnum" value="6.95472e+06"/>
          <Constant key="Parameter_4805" name="v10speed" value="1.05682e-11"/>
        </ListOfConstants>
        <KineticLaw function="Function_41">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_111"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_54" name="v11" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_54">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:39:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0006846" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by GO is correct
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_140" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4525" name="CellSurface" value="0.0296468"/>
          <Constant key="Parameter_4524" name="kv11_1" value="3.2863e-06"/>
          <Constant key="Parameter_4484" name="kv11_2" value="1.17279"/>
        </ListOfConstants>
        <KineticLaw function="Function_60">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_343">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_353">
              <SourceParameter reference="Metabolite_140"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_345">
              <SourceParameter reference="ModelValue_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_324">
              <SourceParameter reference="ModelValue_45"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_53" name="v11Batch" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_53">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:39:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0051049" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by GO is correct
        </Comment>
        <ListOfProducts>
          <Product metabolite="Metabolite_140" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4485" name="cellnum" value="1.11543e+07"/>
          <Constant key="Parameter_4486" name="initcellnum" value="6.95472e+06"/>
          <Constant key="Parameter_4487" name="v11speed" value="9.04431e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_76">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_413">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_418">
              <SourceParameter reference="ModelValue_111"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_416">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_52" name="v12" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_52">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:39:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0005215" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by GO is correct
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_142" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4488" name="CellSurface" value="0.0296468"/>
          <Constant key="Parameter_4489" name="kv12_1" value="1.00927e-05"/>
          <Constant key="Parameter_4490" name="kv12_2" value="0.148586"/>
        </ListOfConstants>
        <KineticLaw function="Function_68">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_373">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_388">
              <SourceParameter reference="Metabolite_142"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_384">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_382">
              <SourceParameter reference="ModelValue_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_386">
              <SourceParameter reference="ModelValue_43"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_51" name="v12Batch" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:39:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0051049" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by GO is correct
        </Comment>
        <ListOfProducts>
          <Product metabolite="Metabolite_142" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4491" name="cellnum" value="1.11543e+07"/>
          <Constant key="Parameter_4529" name="initcellnum" value="6.95472e+06"/>
          <Constant key="Parameter_4528" name="v12speed" value="5.59192e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_75">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_411">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_406">
              <SourceParameter reference="ModelValue_111"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_415">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_50" name="v13a" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_50">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:39:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0015793" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by GO is correct
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_55" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_136" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_130" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4527" name="kDiff" value="1"/>
          <Constant key="Parameter_4526" name="CellSurface" value="0.0296468"/>
          <Constant key="Parameter_4510" name="kv13a_1" value="6.28899e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_56">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="Metabolite_130"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="Metabolite_136"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="Metabolite_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_332">
              <SourceParameter reference="Parameter_4527"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="ModelValue_42"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_49" name="v13aBatch" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:39:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0051049" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by GO is correct
        </Comment>
        <ListOfProducts>
          <Product metabolite="Metabolite_136" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4511" name="cellnum" value="1.11543e+07"/>
          <Constant key="Parameter_4492" name="initcellnum" value="6.95472e+06"/>
          <Constant key="Parameter_4493" name="v13aspeed" value="8.29211e-09"/>
        </ListOfConstants>
        <KineticLaw function="Function_66">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_375">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_357">
              <SourceParameter reference="ModelValue_111"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_379">
              <SourceParameter reference="ModelValue_27"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_48" name="v13b" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:39:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0015793" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by GO is correct
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_136" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_55" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_126" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4494" name="kv13b_1" value="1.27001e-07"/>
          <Constant key="Parameter_4495" name="kv13b_2" value="3.69196e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_57">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="Metabolite_126"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="Metabolite_136"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_47" name="v13bBatch" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:39:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0051049" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by GO is correct
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_136" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4496" name="cellnum" value="1.11543e+07"/>
          <Constant key="Parameter_4497" name="initcellnum" value="6.95472e+06"/>
          <Constant key="Parameter_4498" name="v13bspeed" value="5.46501e-10"/>
        </ListOfConstants>
        <KineticLaw function="Function_67">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_377">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_381">
              <SourceParameter reference="ModelValue_111"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_370">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_46" name="v14" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:39:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isPartOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0016049" />
      </rdf:Bag>
    </CopasiMT:isPartOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by GO is correct
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_132" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_134" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4499" name="OsmoE" value="0.355586"/>
          <Constant key="Parameter_4500" name="kv14_1" value="0.808051"/>
          <Constant key="Parameter_4501" name="kv14_2" value="6.05922e-06"/>
          <Constant key="Parameter_4502" name="kv14_3" value="2.05157"/>
          <Constant key="Parameter_4503" name="kv14_4" value="0.420621"/>
          <Constant key="Parameter_4504" name="kv14_5" value="1.23049"/>
        </ListOfConstants>
        <KineticLaw function="Function_40">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_254">
              <SourceParameter reference="Metabolite_134"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_53"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="ModelValue_52"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_258">
              <SourceParameter reference="ModelValue_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="ModelValue_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="ModelValue_49"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_45" name="v15f" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:39:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0003873" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by GO is correct
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_116" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4505" name="kv15f_1" value="4.99507e-05"/>
          <Constant key="Parameter_4506" name="kv15f_2" value="6.95877"/>
        </ListOfConstants>
        <KineticLaw function="Function_85">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_446">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_448">
              <SourceParameter reference="Metabolite_116"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_441">
              <SourceParameter reference="ModelValue_77"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_450">
              <SourceParameter reference="ModelValue_76"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_44" name="v15r" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:39:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0004331" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by GO is correct
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4507" name="kv15r_1" value="1.84829e-07"/>
          <Constant key="Parameter_4508" name="kv15r_2" value="3.3187e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_86">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_447">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_451">
              <SourceParameter reference="ModelValue_75"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_452">
              <SourceParameter reference="ModelValue_74"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_43" name="v16f" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:39:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0016310" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by GO is correct
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4509" name="OsmoE" value="0.355586"/>
          <Constant key="Parameter_4532" name="Vm" value="0.00048"/>
          <Constant key="Parameter_4533" name="kv16f_1" value="0.156118"/>
          <Constant key="Parameter_4534" name="kv16f_2" value="0.000452424"/>
          <Constant key="Parameter_4535" name="kv16f_3" value="14.9448"/>
        </ListOfConstants>
        <KineticLaw function="Function_62">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_359">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_352">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_363">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_355">
              <SourceParameter reference="ModelValue_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="ModelValue_80"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_365">
              <SourceParameter reference="ModelValue_79"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_42" name="v16r" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:39:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0016311" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by GO is correct
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4536" name="k1" value="0.588072"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_78"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_41" name="v17f" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:39:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0006350" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by GO is correct
        </Comment>
        <ListOfProducts>
          <Product metabolite="Metabolite_122" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_120" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4537" name="kv17f_1" value="0"/>
          <Constant key="Parameter_4538" name="kv17f_2" value="0.547886"/>
          <Constant key="Parameter_4539" name="kv17f_3" value="0.421394"/>
          <Constant key="Parameter_4540" name="kv17f_4" value="6.86959e-10"/>
          <Constant key="Parameter_4541" name="kv17f_6" value="7.85767e-09"/>
          <Constant key="Parameter_4542" name="kx1" value="1.97771"/>
          <Constant key="Parameter_4543" name="kx2" value="5.37171"/>
        </ListOfConstants>
        <KineticLaw function="Function_58">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_344">
              <SourceParameter reference="Metabolite_120"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="ModelValue_122"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_340">
              <SourceParameter reference="ModelValue_73"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_342">
              <SourceParameter reference="ModelValue_121"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_348">
              <SourceParameter reference="ModelValue_72"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_350">
              <SourceParameter reference="ModelValue_120"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_338">
              <SourceParameter reference="ModelValue_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_346">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_40" name="v17r" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:39:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0006402" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by GO is correct
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_122" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4544" name="k1" value="0.00151498"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_122"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_39" name="v18f" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:39:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0006412" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by GO is correct
        </Comment>
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_122" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4545" name="kv18f_1" value="0.00646553"/>
        </ListOfConstants>
        <KineticLaw function="Function_59">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_347">
              <SourceParameter reference="Metabolite_122"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_351">
              <SourceParameter reference="ModelValue_69"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_38" name="v18r" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_38">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:39:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0030163" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by GO is correct
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4546" name="k1" value="0.000132549"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_68"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_37" name="v19f" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:40:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0043085" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by GO is correct
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_118" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_116" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4547" name="kv19f_1" value="0.299127"/>
        </ListOfConstants>
        <KineticLaw function="Function_84">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_433">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_445">
              <SourceParameter reference="Metabolite_118"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_443">
              <SourceParameter reference="ModelValue_124"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_36" name="v19r" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_36">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:40:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0043086" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by GO is correct
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_116" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_118" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4548" name="k1" value="0.0605655"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_123"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_116"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_35" name="v1Batch" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:40:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0051049" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by GO is correct
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_138" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4549" name="cellnum" value="1.11543e+07"/>
          <Constant key="Parameter_4550" name="initcellnum" value="6.95472e+06"/>
          <Constant key="Parameter_4551" name="v1speed" value="5.56534e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_49">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="ModelValue_111"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_34" name="v2" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_34">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:40:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0004340" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by GO is correct
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4552" name="kv2_1" value="0.00303855"/>
          <Constant key="Parameter_4553" name="kv2_2" value="0.40864"/>
        </ListOfConstants>
        <KineticLaw function="Function_87">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_449">
              <SourceParameter reference="Metabolite_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_453">
              <SourceParameter reference="ModelValue_110"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_455">
              <SourceParameter reference="ModelValue_109"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_33" name="v20f" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:40:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0006350" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by GO is correct
        </Comment>
        <ListOfProducts>
          <Product metabolite="Metabolite_124" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4554" name="kv20f_1" value="0"/>
          <Constant key="Parameter_4555" name="kv20f_2" value="0.0167845"/>
          <Constant key="Parameter_4556" name="kv20f_3" value="4.05843e-06"/>
          <Constant key="Parameter_4557" name="kv20f_x" value="1.55858"/>
        </ListOfConstants>
        <KineticLaw function="Function_61">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_354">
              <SourceParameter reference="ModelValue_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_356">
              <SourceParameter reference="ModelValue_66"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_358">
              <SourceParameter reference="ModelValue_65"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_349">
              <SourceParameter reference="ModelValue_64"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_32" name="v20r" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:40:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0006402" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by GO is correct
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_124" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4558" name="k1" value="0.000705933"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_63"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_124"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_31" name="v21f" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:40:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0006412" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by GO is correct
        </Comment>
        <ListOfProducts>
          <Product metabolite="Metabolite_126" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_124" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4559" name="kv21f_1" value="0.00121673"/>
        </ListOfConstants>
        <KineticLaw function="Function_63">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_366">
              <SourceParameter reference="ModelValue_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_362">
              <SourceParameter reference="Metabolite_124"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_30" name="v21r" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:40:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0030163" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by GO is correct
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_126" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4562" name="k1" value="0.000214247"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_126"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_29" name="v22" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:40:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0051049" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by GO is correct
        </Comment>
        <ListOfProducts>
          <Product metabolite="Metabolite_130" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4563" name="Turgor" value="-0.58"/>
          <Constant key="Parameter_4564" name="kv22_1" value="8.0075"/>
          <Constant key="Parameter_4560" name="kv22_2" value="0.0215179"/>
          <Constant key="Parameter_4561" name="kv22_3" value="0.0554729"/>
        </ListOfConstants>
        <KineticLaw function="Function_95">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_675">
              <SourceParameter reference="Metabolite_130"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_673">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_668">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_678">
              <SourceParameter reference="ModelValue_56"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_674">
              <SourceParameter reference="ModelValue_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_677">
              <SourceParameter reference="ModelValue_54"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_28" name="v23f" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:40:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0043085" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by GO is correct
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_128" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_120" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4565" name="Vm" value="0.00048"/>
          <Constant key="Parameter_4566" name="kv23f_1" value="8.80535e-06"/>
          <Constant key="Parameter_4567" name="kv23f_2" value="0.00051235"/>
          <Constant key="Parameter_4568" name="kv23f_3" value="6.95727"/>
        </ListOfConstants>
        <KineticLaw function="Function_64">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Metabolite_128"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_369">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_341">
              <SourceParameter reference="ModelValue_60"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_367">
              <SourceParameter reference="ModelValue_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_371">
              <SourceParameter reference="ModelValue_58"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_27" name="v23r" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:40:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0043086" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by GO is correct
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_120" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_128" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4569" name="k1" value="0.000209875"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_57"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_120"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_26" name="v3" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:40:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0005992" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by GO is correct
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_43" stoichiometry="2"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4570" name="kv3_1" value="6.17387e-06"/>
          <Constant key="Parameter_4571" name="kv3_2" value="0.81114"/>
          <Constant key="Parameter_4572" name="kv3_3" value="0.000737808"/>
          <Constant key="Parameter_4573" name="kv3_4" value="0.166996"/>
        </ListOfConstants>
        <KineticLaw function="Function_65">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_368">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_372">
              <SourceParameter reference="ModelValue_108"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_364">
              <SourceParameter reference="ModelValue_107"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_374">
              <SourceParameter reference="ModelValue_106"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_378">
              <SourceParameter reference="ModelValue_105"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="v4" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:40:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0004347" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0003872" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by GO is correct
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4574" name="kv4_1" value="0.0628885"/>
          <Constant key="Parameter_4575" name="kv4_2" value="0.00230714"/>
          <Constant key="Parameter_4576" name="kv4_3" value="0.00171631"/>
          <Constant key="Parameter_4577" name="kv4_4" value="2.67143"/>
          <Constant key="Parameter_4578" name="kv4_5" value="0.583865"/>
        </ListOfConstants>
        <KineticLaw function="Function_45">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="ModelValue_104"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="ModelValue_103"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="ModelValue_102"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="ModelValue_101"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="ModelValue_100"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="v5" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:40:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0004332" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by GO is correct
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_27" stoichiometry="2"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4579" name="kv5_1" value="0.00383315"/>
          <Constant key="Parameter_4580" name="kv5_2" value="1.74463"/>
          <Constant key="Parameter_4581" name="kv5_3" value="0.00656128"/>
          <Constant key="Parameter_4582" name="kv5_4" value="1.13994"/>
        </ListOfConstants>
        <KineticLaw function="Function_69">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_385">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_389">
              <SourceParameter reference="ModelValue_99"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_380">
              <SourceParameter reference="ModelValue_98"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_391">
              <SourceParameter reference="ModelValue_97"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_395">
              <SourceParameter reference="ModelValue_96"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_393">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="v6" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:40:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0004367" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0043136" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by GO is correct
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_55" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4588" name="kv6_1" value="0.0118992"/>
          <Constant key="Parameter_4587" name="kv6_2" value="0.230864"/>
          <Constant key="Parameter_4586" name="kv6_3" value="1.76504"/>
        </ListOfConstants>
        <KineticLaw function="Function_80">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_432">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_430">
              <SourceParameter reference="ModelValue_95"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_434">
              <SourceParameter reference="ModelValue_94"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_423">
              <SourceParameter reference="ModelValue_93"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_428">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="v6b" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:40:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0006114" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by GO is correct
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_55" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4584" name="kv6b_4" value="4.61918e-05"/>
          <Constant key="Parameter_4583" name="kv6b_5" value="0.292627"/>
          <Constant key="Parameter_4585" name="kv6b_x" value="28.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_81">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_431">
              <SourceParameter reference="ModelValue_89"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_437">
              <SourceParameter reference="ModelValue_88"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_435">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_426">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="v7" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:40:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0042866" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by GO is correct
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4589" name="kv7_1" value="0.00983997"/>
          <Constant key="Parameter_4590" name="kv7_2" value="0.317879"/>
        </ListOfConstants>
        <KineticLaw function="Function_88">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_456">
              <SourceParameter reference="ModelValue_87"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_458">
              <SourceParameter reference="ModelValue_86"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_444">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="v8" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:40:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0019413" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by GO is correct
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4592" name="kv8_1" value="0.0135676"/>
          <Constant key="Parameter_4593" name="kv8_2" value="1.50827"/>
        </ListOfConstants>
        <KineticLaw function="Function_89">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_459">
              <SourceParameter reference="ModelValue_85"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_461">
              <SourceParameter reference="ModelValue_84"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_454">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="v9" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:40:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0006115" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by GO is correct
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4591" name="kv9_1" value="0.214937"/>
          <Constant key="Parameter_4594" name="kv9_2" value="0.923665"/>
        </ListOfConstants>
        <KineticLaw function="Function_90">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_462">
              <SourceParameter reference="ModelValue_83"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_464">
              <SourceParameter reference="ModelValue_82"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_457">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="vVacetate_i" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:39:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isPartOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0008361" />
      </rdf:Bag>
    </CopasiMT:isPartOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by GO is correct
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_134" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4595" name="volchangespeed" value="4.31302e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_78">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_422">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_424">
              <SourceParameter reference="Metabolite_134"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_417">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="vVcin" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:40:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isPartOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0008361" />
      </rdf:Bag>
    </CopasiMT:isPartOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by GO is correct
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_134" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4596" name="volchangespeed" value="4.31302e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_50">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="Metabolite_134"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Metabolite_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="vVethanol_i" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:39:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isPartOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0008361" />
      </rdf:Bag>
    </CopasiMT:isPartOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by GO is correct
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_134" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4597" name="volchangespeed" value="4.31302e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_52">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_313">
              <SourceParameter reference="Metabolite_134"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="vVF16DP" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:40:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isPartOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0008361" />
      </rdf:Bag>
    </CopasiMT:isPartOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by GO is correct
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_134" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4598" name="volchangespeed" value="4.31302e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_53">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="Metabolite_134"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_319">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="vVG6P" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:39:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isPartOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0008361" />
      </rdf:Bag>
    </CopasiMT:isPartOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by GO is correct
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_134" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4599" name="volchangespeed" value="4.31302e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_42">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_134"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="vVgluci" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:40:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isPartOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0008361" />
      </rdf:Bag>
    </CopasiMT:isPartOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by GO is correct
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_134" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4600" name="volchangespeed" value="4.31302e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_43">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="Metabolite_134"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Metabolite_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="vVGpd1" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:40:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isPartOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0008361" />
      </rdf:Bag>
    </CopasiMT:isPartOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by GO is correct
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_134" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4601" name="volchangespeed" value="4.31302e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_71">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_402">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_390">
              <SourceParameter reference="Metabolite_134"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_398">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="vVgpd1mRNA" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:39:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isPartOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0008361" />
      </rdf:Bag>
    </CopasiMT:isPartOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by GO is correct
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_122" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_134" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4602" name="volchangespeed" value="4.31302e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_73">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_407">
              <SourceParameter reference="Metabolite_134"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_405">
              <SourceParameter reference="Metabolite_122"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_387">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="vVHog1" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:40:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isPartOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0008361" />
      </rdf:Bag>
    </CopasiMT:isPartOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by GO is correct
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_134" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4603" name="volchangespeed" value="4.31302e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_77">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_419">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_421">
              <SourceParameter reference="Metabolite_134"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_409">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="vVos" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:39:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isPartOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0008361" />
      </rdf:Bag>
    </CopasiMT:isPartOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by GO is correct
        </Comment>
        <ListOfProducts>
          <Product metabolite="Metabolite_134" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_136" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_55" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4604" name="CellSurface" value="0.0296468"/>
          <Constant key="Parameter_4605" name="OsmoE" value="0.355586"/>
          <Constant key="Parameter_4606" name="Turgor" value="-0.58"/>
          <Constant key="Parameter_4607" name="vV_1" value="3.56294e-05"/>
          <Constant key="Parameter_4608" name="vV_2" value="0.00116532"/>
          <Constant key="Parameter_4609" name="vV_R" value="8.314"/>
          <Constant key="Parameter_4610" name="vV_T" value="298.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_51">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_320">
              <SourceParameter reference="Metabolite_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="Metabolite_136"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="Metabolite_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="ModelValue_118"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="ModelValue_117"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="ModelValue_116"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_312">
              <SourceParameter reference="ModelValue_115"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="vVPfk2627a" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:40:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isPartOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0008361" />
      </rdf:Bag>
    </CopasiMT:isPartOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by GO is correct
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_116" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_134" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4611" name="volchangespeed" value="4.31302e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_47">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Metabolite_116"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="Metabolite_134"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="vVPfk2627i" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:39:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isPartOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0008361" />
      </rdf:Bag>
    </CopasiMT:isPartOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by GO is correct
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_118" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_134" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4612" name="volchangespeed" value="4.31302e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_55">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_323">
              <SourceParameter reference="Metabolite_118"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_325">
              <SourceParameter reference="Metabolite_134"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_309">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="vVpyruvate" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:40:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isPartOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0008361" />
      </rdf:Bag>
    </CopasiMT:isPartOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by GO is correct
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_134" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4613" name="volchangespeed" value="4.31302e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_46">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="Metabolite_134"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="vVStl1" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:39:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isPartOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0008361" />
      </rdf:Bag>
    </CopasiMT:isPartOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by GO is correct
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_126" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_134" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4614" name="volchangespeed" value="4.31302e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_44">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="Metabolite_126"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Metabolite_134"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_246">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="vVstl1mRNA" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:41:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isPartOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0008361" />
      </rdf:Bag>
    </CopasiMT:isPartOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by GO is correct
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_124" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_134" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4615" name="volchangespeed" value="4.31302e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_48">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="Metabolite_134"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="Metabolite_124"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="vVtrehalose" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:39:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isPartOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0008361" />
      </rdf:Bag>
    </CopasiMT:isPartOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by GO is correct
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_134" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4616" name="volchangespeed" value="4.31302e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_72">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_404">
              <SourceParameter reference="Metabolite_134"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_394">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_400">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="vVtrioseP" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:39:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isPartOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0008361" />
      </rdf:Bag>
    </CopasiMT:isPartOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by GO is correct
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_134" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4617" name="volchangespeed" value="4.31302e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_54">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="Metabolite_134"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="vVglyci" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:39:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isPartOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0008361" />
      </rdf:Bag>
    </CopasiMT:isPartOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by GO is correct
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_55" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_134" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4618" name="volchangespeed" value="4.31302e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_82">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_439">
              <SourceParameter reference="Metabolite_134"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_438">
              <SourceParameter reference="Metabolite_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_429">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_0" name="vVHog1PP" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:40:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isPartOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0008361" />
      </rdf:Bag>
    </CopasiMT:isPartOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by GO is correct
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_134" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4619" name="volchangespeed" value="4.31302e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_83">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_440">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_442">
              <SourceParameter reference="Metabolite_134"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_436">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[intra]" value="0.00025" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[extra]" value="0.5" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[intra],Vector=Metabolites[glycerol_i]" value="1.759263336467175e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[intra],Vector=Metabolites[cin]" value="8.770692469019425e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[intra],Vector=Metabolites[glucose_i]" value="5.68637727449856e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[intra],Vector=Metabolites[G6P]" value="9.738736706407452e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[intra],Vector=Metabolites[trehalose]" value="3.871619901436525e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[intra],Vector=Metabolites[F16DP]" value="1.728911741845575e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[intra],Vector=Metabolites[F26DP]" value="3622393563457376" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[intra],Vector=Metabolites[trioseP]" value="1.084078865397745e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[intra],Vector=Metabolites[Gpd1]" value="4.18314529623322e+18" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[intra],Vector=Metabolites[pyruvate]" value="1.083795824733615e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[intra],Vector=Metabolites[acetate_i]" value="1.400923316930463e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[intra],Vector=Metabolites[ethanol_i]" value="2.8140264156312e+21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[intra],Vector=Metabolites[Hog1]" value="4.79269143286255e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[intra],Vector=Metabolites[Hog1PP]" value="2.17890123174885e+18" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[intra],Vector=Metabolites[Pfk2627a]" value="1.91085570067595e+18" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[intra],Vector=Metabolites[Pfk2627i]" value="1.951158884605525e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[intra],Vector=Metabolites[AOG]" value="3.860162776681059e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[intra],Vector=Metabolites[gpd1mRNA]" value="1.936660578246101e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[intra],Vector=Metabolites[stl1mRNA]" value="2.9185707971056e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[intra],Vector=Metabolites[Stl1]" value="6.479643901786326e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[intra],Vector=Metabolites[AOGi]" value="3.976706275672025e+18" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[intra],Vector=Metabolites[Fps1r]" value="5.834386464342275e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[intra],Vector=Metabolites[biomass]" value="6.8170042848621e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[intra],Vector=Metabolites[cellvol]" value="3.613285074000015e+16" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[extra],Vector=Metabolites[glycerol_e]" value="6.2934994990574e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[extra],Vector=Metabolites[glucose_e]" value="3.3538512056868e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[extra],Vector=Metabolites[acetate_e]" value="5.679361479313199e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[extra],Vector=Metabolites[ethanol_e]" value="5.400265318055651e+21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Compartments[extra],Vector=Metabolites[trehalose_e]" value="4.42479879091145e+19" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[cellvol_init]" value="0.000240000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv19f_1]" value="0.299127" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv19r_1]" value="0.0605655" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv17f_1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv17f_3]" value="0.421394" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv17f_6]" value="7.857670000000001e-09" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[parameter_97]" value="0.8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[vV_1]" value="3.56294e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[vV_2]" value="0.00116532" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[vV_R]" value="8.314" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[vV_T]" value="298.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[t_stress]" value="3600" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv1_1]" value="5.05249e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv1_2]" value="0.899814" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[initcellnum]" value="6954722.464" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv2_1]" value="0.00303855" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv2_2]" value="0.40864" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv3_1]" value="6.17387e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv3_2]" value="0.81114" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv3_3]" value="0.000737808" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv3_4]" value="0.166996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv4_1]" value="0.0628885" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv4_2]" value="0.00230714" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv4_3]" value="0.00171631" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv4_4]" value="2.67143" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv4_5]" value="0.583865" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv5_1]" value="0.00383315" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv5_2]" value="1.74463" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv5_3]" value="0.00656128" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv5_4]" value="1.13994" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv6_1]" value="0.0118992" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv6_2]" value="0.230864" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv6_3]" value="1.76504" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv6b_1]" value="0.859104" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv6b_2]" value="0.0307535" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv6b_3]" value="1.20045" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv6b_4]" value="4.61918e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv6b_5]" value="0.292627" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv7_1]" value="0.00983997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv7_2]" value="0.317879" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv8_1]" value="0.0135676" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv8_2]" value="1.50827" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv9_1]" value="0.214937" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv9_2]" value="0.923665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv16f_1]" value="0.156118" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv16f_2]" value="0.000452424" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv16f_3]" value="14.9448" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv16r_1]" value="0.588072" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv15f_1]" value="4.99507e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv15f_2]" value="6.95877" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv15r_1]" value="1.84829e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv15r_2]" value="3.3187e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv17f_2]" value="0.547886" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv17f_4]" value="6.86959e-10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv17f_5]" value="18.9989" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv17r_1]" value="0.00151498" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv18f_1]" value="0.00646553" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv18r_1]" value="0.000132549" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv20f_1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv20f_2]" value="0.0167845" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv20f_3]" value="4.05843e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv20f_x]" value="1.55858" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv20r_1]" value="0.000705933" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv21f_1]" value="0.00121673" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv21r_1]" value="0.000214247" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv23f_1]" value="8.80535e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv23f_2]" value="0.00051235" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv23f_3]" value="6.95727" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv23r_1]" value="0.000209875" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv22_1]" value="8.0075" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv22_2]" value="0.0215179" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv22_3]" value="0.0554729" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv14_1]" value="0.808051" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv14_2]" value="6.05922e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv14_3]" value="2.05157" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv14_4]" value="0.420621" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv14_5]" value="1.23049" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv10_1]" value="1.83291e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv10_2]" value="4.26512" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv11_1]" value="3.2863e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv11_2]" value="1.17279" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv12_1]" value="1.00927e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv12_2]" value="0.148586" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv13a_1]" value="6.28899e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv13b_1]" value="1.27001e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv13b_2]" value="3.69196e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kx1]" value="1.97771" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kx2]" value="5.37171" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv22_4_Hog1A]" value="1.25187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[v]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv22_Hog1D_t]" value="5536" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv22_Hog1D_fT]" value="0.0256901" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv22_Hog1D_d]" value="0.000294357" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[v15f_v]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[v15r_v]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[v19r_v]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[Vm]" value="0.000480000000000001" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[CellSurface]" value="0.0296468313433281" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[v13aspeed]" value="8.292105767954515e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[v12speed]" value="5.591919475117349e-06" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[v11speed]" value="9.044305237084971e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[v10speed]" value="1.056818126363336e-11" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[Turgor]" value="-0.5800000000001183" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[OsmoE]" value="0.355586" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[input]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[volchangespeed]" value="4.313022447677932e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[relVM]" value="1.000000000000002" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[OD]" value="0.595608" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[cellnum]" value="11154327.21154661" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[v1speed]" value="5.565344731298914e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[v13bspeed]" value="5.465005307575242e-10" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv16r_1VARIABLE]" value="0.444296" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[glycerol_measured]" value="0.116853" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[Hog1PP_measured]" value="0.0144726" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[Gpd1_measured]" value="0.02778509999999997" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[gpd1mRNA_measured]" value="0.001286360000000001" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[glucose_measured]" value="3.776980000000006" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[pyruvate_measured]" value="0.07198739999999999" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[acetate_measured]" value="0.9305150000000003" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[ethanol_measured]" value="18.6912" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[trehalose_measured]" value="0.00257159" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[F16DP_measured]" value="0.114837" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[quantity]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[trioseP_measured]" value="0.07200620000000001" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[stl1mRNA_measured]" value="0.00193856" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv6b_x]" value="28.5" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v1],ParameterGroup=Parameters,Parameter=kv1_1" value="5.05249e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv1_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v1],ParameterGroup=Parameters,Parameter=kv1_2" value="0.899814" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv1_2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v10]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v10],ParameterGroup=Parameters,Parameter=CellSurface" value="0.0296468313433281" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[CellSurface],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v10],ParameterGroup=Parameters,Parameter=kv10_1" value="1.83291e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv10_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v10],ParameterGroup=Parameters,Parameter=kv10_2" value="4.26512" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv10_2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v10Batch]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v10Batch],ParameterGroup=Parameters,Parameter=cellnum" value="11154327.21154661" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[cellnum],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v10Batch],ParameterGroup=Parameters,Parameter=initcellnum" value="6954722.464" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[initcellnum],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v10Batch],ParameterGroup=Parameters,Parameter=v10speed" value="1.056818126363336e-11" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[v10speed],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v11]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v11],ParameterGroup=Parameters,Parameter=CellSurface" value="0.0296468313433281" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[CellSurface],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v11],ParameterGroup=Parameters,Parameter=kv11_1" value="3.2863e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv11_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v11],ParameterGroup=Parameters,Parameter=kv11_2" value="1.17279" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv11_2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v11Batch]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v11Batch],ParameterGroup=Parameters,Parameter=cellnum" value="11154327.21154661" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[cellnum],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v11Batch],ParameterGroup=Parameters,Parameter=initcellnum" value="6954722.464" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[initcellnum],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v11Batch],ParameterGroup=Parameters,Parameter=v11speed" value="9.044305237084971e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[v11speed],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v12]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v12],ParameterGroup=Parameters,Parameter=CellSurface" value="0.0296468313433281" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[CellSurface],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v12],ParameterGroup=Parameters,Parameter=kv12_1" value="1.00927e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv12_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v12],ParameterGroup=Parameters,Parameter=kv12_2" value="0.148586" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv12_2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v12Batch]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v12Batch],ParameterGroup=Parameters,Parameter=cellnum" value="11154327.21154661" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[cellnum],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v12Batch],ParameterGroup=Parameters,Parameter=initcellnum" value="6954722.464" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[initcellnum],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v12Batch],ParameterGroup=Parameters,Parameter=v12speed" value="5.591919475117349e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[v12speed],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v13a]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v13a],ParameterGroup=Parameters,Parameter=kDiff" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v13a],ParameterGroup=Parameters,Parameter=CellSurface" value="0.0296468313433281" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[CellSurface],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v13a],ParameterGroup=Parameters,Parameter=kv13a_1" value="6.28899e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv13a_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v13aBatch]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v13aBatch],ParameterGroup=Parameters,Parameter=cellnum" value="11154327.21154661" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[cellnum],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v13aBatch],ParameterGroup=Parameters,Parameter=initcellnum" value="6954722.464" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[initcellnum],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v13aBatch],ParameterGroup=Parameters,Parameter=v13aspeed" value="8.292105767954515e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[v13aspeed],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v13b]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v13b],ParameterGroup=Parameters,Parameter=kv13b_1" value="1.27001e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv13b_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v13b],ParameterGroup=Parameters,Parameter=kv13b_2" value="3.69196e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv13b_2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v13bBatch]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v13bBatch],ParameterGroup=Parameters,Parameter=cellnum" value="11154327.21154661" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[cellnum],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v13bBatch],ParameterGroup=Parameters,Parameter=initcellnum" value="6954722.464" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[initcellnum],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v13bBatch],ParameterGroup=Parameters,Parameter=v13bspeed" value="5.465005307575242e-10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[v13bspeed],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v14]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v14],ParameterGroup=Parameters,Parameter=OsmoE" value="0.355586" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[OsmoE],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v14],ParameterGroup=Parameters,Parameter=kv14_1" value="0.808051" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv14_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v14],ParameterGroup=Parameters,Parameter=kv14_2" value="6.05922e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv14_2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v14],ParameterGroup=Parameters,Parameter=kv14_3" value="2.05157" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv14_3],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v14],ParameterGroup=Parameters,Parameter=kv14_4" value="0.420621" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv14_4],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v14],ParameterGroup=Parameters,Parameter=kv14_5" value="1.23049" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv14_5],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v15f]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v15f],ParameterGroup=Parameters,Parameter=kv15f_1" value="4.99507e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv15f_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v15f],ParameterGroup=Parameters,Parameter=kv15f_2" value="6.95877" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv15f_2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v15r]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v15r],ParameterGroup=Parameters,Parameter=kv15r_1" value="1.84829e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv15r_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v15r],ParameterGroup=Parameters,Parameter=kv15r_2" value="3.3187e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv15r_2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v16f]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v16f],ParameterGroup=Parameters,Parameter=OsmoE" value="0.355586" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[OsmoE],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v16f],ParameterGroup=Parameters,Parameter=Vm" value="0.000480000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[Vm],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v16f],ParameterGroup=Parameters,Parameter=kv16f_1" value="0.156118" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv16f_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v16f],ParameterGroup=Parameters,Parameter=kv16f_2" value="0.000452424" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv16f_2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v16f],ParameterGroup=Parameters,Parameter=kv16f_3" value="14.9448" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv16f_3],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v16r]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v16r],ParameterGroup=Parameters,Parameter=k1" value="0.588072" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv16r_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v17f]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v17f],ParameterGroup=Parameters,Parameter=kv17f_1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv17f_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v17f],ParameterGroup=Parameters,Parameter=kv17f_2" value="0.547886" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv17f_2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v17f],ParameterGroup=Parameters,Parameter=kv17f_3" value="0.421394" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv17f_3],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v17f],ParameterGroup=Parameters,Parameter=kv17f_4" value="6.86959e-10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv17f_4],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v17f],ParameterGroup=Parameters,Parameter=kv17f_6" value="7.857670000000001e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv17f_6],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v17f],ParameterGroup=Parameters,Parameter=kx1" value="1.97771" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kx1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v17f],ParameterGroup=Parameters,Parameter=kx2" value="5.37171" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kx2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v17r]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v17r],ParameterGroup=Parameters,Parameter=k1" value="0.00151498" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv17r_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v18f]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v18f],ParameterGroup=Parameters,Parameter=kv18f_1" value="0.00646553" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv18f_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v18r]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v18r],ParameterGroup=Parameters,Parameter=k1" value="0.000132549" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv18r_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v19f]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v19f],ParameterGroup=Parameters,Parameter=kv19f_1" value="0.299127" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv19f_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v19r]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v19r],ParameterGroup=Parameters,Parameter=k1" value="0.0605655" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv19r_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v1Batch]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v1Batch],ParameterGroup=Parameters,Parameter=cellnum" value="11154327.21154661" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[cellnum],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v1Batch],ParameterGroup=Parameters,Parameter=initcellnum" value="6954722.464" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[initcellnum],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v1Batch],ParameterGroup=Parameters,Parameter=v1speed" value="5.565344731298914e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[v1speed],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v2],ParameterGroup=Parameters,Parameter=kv2_1" value="0.00303855" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv2_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v2],ParameterGroup=Parameters,Parameter=kv2_2" value="0.40864" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv2_2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v20f]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v20f],ParameterGroup=Parameters,Parameter=kv20f_1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv20f_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v20f],ParameterGroup=Parameters,Parameter=kv20f_2" value="0.0167845" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv20f_2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v20f],ParameterGroup=Parameters,Parameter=kv20f_3" value="4.05843e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv20f_3],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v20f],ParameterGroup=Parameters,Parameter=kv20f_x" value="1.55858" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv20f_x],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v20r]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v20r],ParameterGroup=Parameters,Parameter=k1" value="0.000705933" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv20r_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v21f]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v21f],ParameterGroup=Parameters,Parameter=kv21f_1" value="0.00121673" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv21f_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v21r]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v21r],ParameterGroup=Parameters,Parameter=k1" value="0.000214247" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv21r_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v22]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v22],ParameterGroup=Parameters,Parameter=Turgor" value="-0.5800000000001183" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[Turgor],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v22],ParameterGroup=Parameters,Parameter=kv22_1" value="8.0075" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv22_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v22],ParameterGroup=Parameters,Parameter=kv22_2" value="0.0215179" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv22_2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v22],ParameterGroup=Parameters,Parameter=kv22_3" value="0.0554729" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv22_3],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v23f]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v23f],ParameterGroup=Parameters,Parameter=Vm" value="0.000480000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[Vm],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v23f],ParameterGroup=Parameters,Parameter=kv23f_1" value="8.80535e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv23f_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v23f],ParameterGroup=Parameters,Parameter=kv23f_2" value="0.00051235" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv23f_2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v23f],ParameterGroup=Parameters,Parameter=kv23f_3" value="6.95727" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv23f_3],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v23r]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v23r],ParameterGroup=Parameters,Parameter=k1" value="0.000209875" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv23r_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v3],ParameterGroup=Parameters,Parameter=kv3_1" value="6.17387e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv3_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v3],ParameterGroup=Parameters,Parameter=kv3_2" value="0.81114" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv3_2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v3],ParameterGroup=Parameters,Parameter=kv3_3" value="0.000737808" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv3_3],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v3],ParameterGroup=Parameters,Parameter=kv3_4" value="0.166996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv3_4],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v4],ParameterGroup=Parameters,Parameter=kv4_1" value="0.0628885" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv4_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v4],ParameterGroup=Parameters,Parameter=kv4_2" value="0.00230714" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv4_2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v4],ParameterGroup=Parameters,Parameter=kv4_3" value="0.00171631" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv4_3],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v4],ParameterGroup=Parameters,Parameter=kv4_4" value="2.67143" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv4_4],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v4],ParameterGroup=Parameters,Parameter=kv4_5" value="0.583865" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv4_5],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v5]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v5],ParameterGroup=Parameters,Parameter=kv5_1" value="0.00383315" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv5_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v5],ParameterGroup=Parameters,Parameter=kv5_2" value="1.74463" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv5_2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v5],ParameterGroup=Parameters,Parameter=kv5_3" value="0.00656128" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv5_3],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v5],ParameterGroup=Parameters,Parameter=kv5_4" value="1.13994" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv5_4],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v6]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v6],ParameterGroup=Parameters,Parameter=kv6_1" value="0.0118992" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv6_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v6],ParameterGroup=Parameters,Parameter=kv6_2" value="0.230864" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv6_2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v6],ParameterGroup=Parameters,Parameter=kv6_3" value="1.76504" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv6_3],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v6b]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v6b],ParameterGroup=Parameters,Parameter=kv6b_4" value="4.61918e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv6b_4],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v6b],ParameterGroup=Parameters,Parameter=kv6b_5" value="0.292627" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv6b_5],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v6b],ParameterGroup=Parameters,Parameter=kv6b_x" value="28.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv6b_x],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v7]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v7],ParameterGroup=Parameters,Parameter=kv7_1" value="0.00983997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv7_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v7],ParameterGroup=Parameters,Parameter=kv7_2" value="0.317879" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv7_2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v8]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v8],ParameterGroup=Parameters,Parameter=kv8_1" value="0.0135676" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv8_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v8],ParameterGroup=Parameters,Parameter=kv8_2" value="1.50827" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv8_2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v9]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v9],ParameterGroup=Parameters,Parameter=kv9_1" value="0.214937" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv9_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[v9],ParameterGroup=Parameters,Parameter=kv9_2" value="0.923665" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[kv9_2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[vVacetate_i]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[vVacetate_i],ParameterGroup=Parameters,Parameter=volchangespeed" value="4.313022447677932e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[volchangespeed],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[vVcin]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[vVcin],ParameterGroup=Parameters,Parameter=volchangespeed" value="4.313022447677932e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[volchangespeed],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[vVethanol_i]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[vVethanol_i],ParameterGroup=Parameters,Parameter=volchangespeed" value="4.313022447677932e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[volchangespeed],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[vVF16DP]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[vVF16DP],ParameterGroup=Parameters,Parameter=volchangespeed" value="4.313022447677932e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[volchangespeed],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[vVG6P]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[vVG6P],ParameterGroup=Parameters,Parameter=volchangespeed" value="4.313022447677932e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[volchangespeed],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[vVgluci]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[vVgluci],ParameterGroup=Parameters,Parameter=volchangespeed" value="4.313022447677932e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[volchangespeed],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[vVGpd1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[vVGpd1],ParameterGroup=Parameters,Parameter=volchangespeed" value="4.313022447677932e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[volchangespeed],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[vVgpd1mRNA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[vVgpd1mRNA],ParameterGroup=Parameters,Parameter=volchangespeed" value="4.313022447677932e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[volchangespeed],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[vVHog1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[vVHog1],ParameterGroup=Parameters,Parameter=volchangespeed" value="4.313022447677932e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[volchangespeed],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[vVos]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[vVos],ParameterGroup=Parameters,Parameter=CellSurface" value="0.0296468313433281" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[CellSurface],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[vVos],ParameterGroup=Parameters,Parameter=OsmoE" value="0.355586" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[OsmoE],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[vVos],ParameterGroup=Parameters,Parameter=Turgor" value="-0.5800000000001183" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[Turgor],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[vVos],ParameterGroup=Parameters,Parameter=vV_1" value="3.56294e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[vV_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[vVos],ParameterGroup=Parameters,Parameter=vV_2" value="0.00116532" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[vV_2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[vVos],ParameterGroup=Parameters,Parameter=vV_R" value="8.314" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[vV_R],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[vVos],ParameterGroup=Parameters,Parameter=vV_T" value="298.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[vV_T],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[vVPfk2627a]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[vVPfk2627a],ParameterGroup=Parameters,Parameter=volchangespeed" value="4.313022447677932e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[volchangespeed],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[vVPfk2627i]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[vVPfk2627i],ParameterGroup=Parameters,Parameter=volchangespeed" value="4.313022447677932e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[volchangespeed],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[vVpyruvate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[vVpyruvate],ParameterGroup=Parameters,Parameter=volchangespeed" value="4.313022447677932e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[volchangespeed],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[vVStl1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[vVStl1],ParameterGroup=Parameters,Parameter=volchangespeed" value="4.313022447677932e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[volchangespeed],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[vVstl1mRNA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[vVstl1mRNA],ParameterGroup=Parameters,Parameter=volchangespeed" value="4.313022447677932e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[volchangespeed],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[vVtrehalose]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[vVtrehalose],ParameterGroup=Parameters,Parameter=volchangespeed" value="4.313022447677932e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[volchangespeed],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[vVtrioseP]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[vVtrioseP],ParameterGroup=Parameters,Parameter=volchangespeed" value="4.313022447677932e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[volchangespeed],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[vVglyci]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[vVglyci],ParameterGroup=Parameters,Parameter=volchangespeed" value="4.313022447677932e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[volchangespeed],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[vVHog1PP]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Reactions[vVHog1PP],ParameterGroup=Parameters,Parameter=volchangespeed" value="4.313022447677932e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[volchangespeed],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_5"/>
      <StateTemplateVariable objectReference="Metabolite_43"/>
      <StateTemplateVariable objectReference="Metabolite_27"/>
      <StateTemplateVariable objectReference="Metabolite_55"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_136"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_116"/>
      <StateTemplateVariable objectReference="Metabolite_122"/>
      <StateTemplateVariable objectReference="Metabolite_124"/>
      <StateTemplateVariable objectReference="Metabolite_126"/>
      <StateTemplateVariable objectReference="Metabolite_47"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_39"/>
      <StateTemplateVariable objectReference="Metabolite_35"/>
      <StateTemplateVariable objectReference="Metabolite_120"/>
      <StateTemplateVariable objectReference="Metabolite_118"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_138"/>
      <StateTemplateVariable objectReference="Metabolite_140"/>
      <StateTemplateVariable objectReference="Metabolite_142"/>
      <StateTemplateVariable objectReference="Metabolite_144"/>
      <StateTemplateVariable objectReference="Metabolite_31"/>
      <StateTemplateVariable objectReference="Metabolite_51"/>
      <StateTemplateVariable objectReference="Metabolite_134"/>
      <StateTemplateVariable objectReference="Metabolite_130"/>
      <StateTemplateVariable objectReference="Metabolite_132"/>
      <StateTemplateVariable objectReference="Metabolite_128"/>
      <StateTemplateVariable objectReference="ModelValue_29"/>
      <StateTemplateVariable objectReference="ModelValue_28"/>
      <StateTemplateVariable objectReference="ModelValue_27"/>
      <StateTemplateVariable objectReference="ModelValue_26"/>
      <StateTemplateVariable objectReference="ModelValue_25"/>
      <StateTemplateVariable objectReference="ModelValue_24"/>
      <StateTemplateVariable objectReference="ModelValue_23"/>
      <StateTemplateVariable objectReference="ModelValue_22"/>
      <StateTemplateVariable objectReference="ModelValue_21"/>
      <StateTemplateVariable objectReference="ModelValue_20"/>
      <StateTemplateVariable objectReference="ModelValue_18"/>
      <StateTemplateVariable objectReference="ModelValue_17"/>
      <StateTemplateVariable objectReference="ModelValue_16"/>
      <StateTemplateVariable objectReference="ModelValue_15"/>
      <StateTemplateVariable objectReference="ModelValue_19"/>
      <StateTemplateVariable objectReference="ModelValue_14"/>
      <StateTemplateVariable objectReference="ModelValue_13"/>
      <StateTemplateVariable objectReference="ModelValue_12"/>
      <StateTemplateVariable objectReference="ModelValue_11"/>
      <StateTemplateVariable objectReference="ModelValue_10"/>
      <StateTemplateVariable objectReference="ModelValue_9"/>
      <StateTemplateVariable objectReference="ModelValue_8"/>
      <StateTemplateVariable objectReference="ModelValue_7"/>
      <StateTemplateVariable objectReference="ModelValue_6"/>
      <StateTemplateVariable objectReference="ModelValue_5"/>
      <StateTemplateVariable objectReference="ModelValue_4"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
      <StateTemplateVariable objectReference="Compartment_9"/>
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
      <StateTemplateVariable objectReference="ModelValue_3"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 9.738736706407452e+19 1.084078865397745e+19 1.759263336467175e+19 1.083795824733615e+19 6.2934994990574e+20 4.18314529623322e+18 4.79269143286255e+19 1.91085570067595e+18 1.936660578246101e+17 2.9185707971056e+17 6.479643901786326e+17 5.68637727449856e+20 2.8140264156312e+21 1.400923316930463e+20 3.871619901436525e+17 1.728911741845575e+19 3.860162776681059e+17 1.951158884605525e+19 2.17890123174885e+18 3.3538512056868e+22 5.679361479313199e+20 5.400265318055651e+21 4.42479879091145e+19 3622393563457376 8.770692469019425e+19 3.613285074000015e+16 5.834386464342275e+19 6.8170042848621e+20 3.976706275672025e+18 0.000480000000000001 0.0296468313433281 8.292105767954515e-09 5.591919475117349e-06 9.044305237084971e-08 1.056818126363336e-11 -0.5800000000001183 0.355586 0 4.313022447677932e-07 0.595608 11154327.21154661 5.565344731298914e-07 5.465005307575242e-10 1.000000000000002 0.444296 0.116853 0.0144726 0.02778509999999997 0.001286360000000001 3.776980000000006 0.07198739999999999 0.9305150000000003 18.6912 0.00257159 0.114837 0.07200620000000001 0.00193856 0.00025 0.5 0.000240000000000001 0.299127 0.0605655 0 0.421394 7.857670000000001e-09 0.8 3.56294e-05 0.00116532 8.314 298.5 3600 5.05249e-06 0.899814 6954722.464 0.00303855 0.40864 6.17387e-06 0.81114 0.000737808 0.166996 0.0628885 0.00230714 0.00171631 2.67143 0.583865 0.00383315 1.74463 0.00656128 1.13994 0.0118992 0.230864 1.76504 0.859104 0.0307535 1.20045 4.61918e-05 0.292627 0.00983997 0.317879 0.0135676 1.50827 0.214937 0.923665 0.156118 0.000452424 14.9448 0.588072 4.99507e-05 6.95877 1.84829e-07 3.3187e-05 0.547886 6.86959e-10 18.9989 0.00151498 0.00646553 0.000132549 0 0.0167845 4.05843e-06 1.55858 0.000705933 0.00121673 0.000214247 8.80535e-06 0.00051235 6.95727 0.000209875 8.0075 0.0215179 0.0554729 0.808051 6.05922e-06 2.05157 0.420621 1.23049 1.83291e-07 4.26512 3.2863e-06 1.17279 1.00927e-05 0.148586 6.28899e-06 1.27001e-07 3.69196e-07 1.97771 5.37171 1.25187 1 5536 0.0256901 0.000294357 1 1 1 0 28.5 
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
        <Parameter name="StepNumber" type="unsignedInteger" value="724"/>
        <Parameter name="StepSize" type="float" value="22.4066"/>
        <Parameter name="Duration" type="float" value="16200"/>
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
    <Task key="Task_20" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_13" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_26"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1e-09"/>
        <Parameter name="Use Reeder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
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
    <PlotSpecification name="Figure S12C" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[Hog1PP_measured]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[Hog1PP_measured],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[glycerol_measured]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_HOG1att,Vector=Values[glycerol_measured],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="10.1371_journal.pcbi.1003663.s002.XML">
    <SBMLMap SBMLid="AOG" COPASIkey="Metabolite_120"/>
    <SBMLMap SBMLid="AOGi" COPASIkey="Metabolite_128"/>
    <SBMLMap SBMLid="CellSurface" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="F16DP" COPASIkey="Metabolite_35"/>
    <SBMLMap SBMLid="F16DP_measured" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="F26DP" COPASIkey="Metabolite_31"/>
    <SBMLMap SBMLid="Fps1r" COPASIkey="Metabolite_130"/>
    <SBMLMap SBMLid="G6P" COPASIkey="Metabolite_43"/>
    <SBMLMap SBMLid="Gpd1" COPASIkey="Metabolite_23"/>
    <SBMLMap SBMLid="Gpd1_measured" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="Henri_Michaelis_Menten__irreversible__1" COPASIkey="Function_79"/>
    <SBMLMap SBMLid="Henri_Michaelis_Menten__irreversible__2" COPASIkey="Function_86"/>
    <SBMLMap SBMLid="Henri_Michaelis_Menten__irreversible__3" COPASIkey="Function_87"/>
    <SBMLMap SBMLid="Henri_Michaelis_Menten__irreversible__4" COPASIkey="Function_88"/>
    <SBMLMap SBMLid="Henri_Michaelis_Menten__irreversible__5" COPASIkey="Function_89"/>
    <SBMLMap SBMLid="Henri_Michaelis_Menten__irreversible__6" COPASIkey="Function_90"/>
    <SBMLMap SBMLid="Hog1" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="Hog1PP" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="Hog1PP_measured" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="OD" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="OsmoE" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="Pfk2627a" COPASIkey="Metabolite_116"/>
    <SBMLMap SBMLid="Pfk2627i" COPASIkey="Metabolite_118"/>
    <SBMLMap SBMLid="Stl1" COPASIkey="Metabolite_126"/>
    <SBMLMap SBMLid="Turgor" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="Vm" COPASIkey="ModelValue_29"/>
    <SBMLMap SBMLid="acetate_e" COPASIkey="Metabolite_140"/>
    <SBMLMap SBMLid="acetate_i" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="acetate_measured" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="biomass" COPASIkey="Metabolite_132"/>
    <SBMLMap SBMLid="cellnum" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="cellvol" COPASIkey="Metabolite_134"/>
    <SBMLMap SBMLid="cellvol_init" COPASIkey="ModelValue_125"/>
    <SBMLMap SBMLid="cin" COPASIkey="Metabolite_51"/>
    <SBMLMap SBMLid="ethanol_e" COPASIkey="Metabolite_142"/>
    <SBMLMap SBMLid="ethanol_i" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="ethanol_measured" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="extra" COPASIkey="Compartment_9"/>
    <SBMLMap SBMLid="function_4_v10Batch_1" COPASIkey="Function_41"/>
    <SBMLMap SBMLid="function_4_v10_1" COPASIkey="Function_74"/>
    <SBMLMap SBMLid="function_4_v11Batch_1" COPASIkey="Function_76"/>
    <SBMLMap SBMLid="function_4_v11_1" COPASIkey="Function_60"/>
    <SBMLMap SBMLid="function_4_v12Batch_1" COPASIkey="Function_75"/>
    <SBMLMap SBMLid="function_4_v12_1" COPASIkey="Function_68"/>
    <SBMLMap SBMLid="function_4_v13aBatch_1" COPASIkey="Function_66"/>
    <SBMLMap SBMLid="function_4_v13a_1" COPASIkey="Function_56"/>
    <SBMLMap SBMLid="function_4_v13bBatch_1" COPASIkey="Function_67"/>
    <SBMLMap SBMLid="function_4_v13b_1" COPASIkey="Function_57"/>
    <SBMLMap SBMLid="function_4_v14_1" COPASIkey="Function_40"/>
    <SBMLMap SBMLid="function_4_v15f_1" COPASIkey="Function_85"/>
    <SBMLMap SBMLid="function_4_v16f_1" COPASIkey="Function_62"/>
    <SBMLMap SBMLid="function_4_v17f_1" COPASIkey="Function_58"/>
    <SBMLMap SBMLid="function_4_v18f_1" COPASIkey="Function_59"/>
    <SBMLMap SBMLid="function_4_v19f_1" COPASIkey="Function_84"/>
    <SBMLMap SBMLid="function_4_v1Batch_1" COPASIkey="Function_49"/>
    <SBMLMap SBMLid="function_4_v20f_1" COPASIkey="Function_61"/>
    <SBMLMap SBMLid="function_4_v21f_1" COPASIkey="Function_63"/>
    <SBMLMap SBMLid="function_4_v22" COPASIkey="Function_95"/>
    <SBMLMap SBMLid="function_4_v23f_1" COPASIkey="Function_64"/>
    <SBMLMap SBMLid="function_4_v3_1" COPASIkey="Function_65"/>
    <SBMLMap SBMLid="function_4_v4_1" COPASIkey="Function_45"/>
    <SBMLMap SBMLid="function_4_v5_1" COPASIkey="Function_69"/>
    <SBMLMap SBMLid="function_4_v6_1_1" COPASIkey="Function_80"/>
    <SBMLMap SBMLid="function_4_v6b_1_1" COPASIkey="Function_81"/>
    <SBMLMap SBMLid="function_4_vVF16DP_1" COPASIkey="Function_53"/>
    <SBMLMap SBMLid="function_4_vVG6P_1" COPASIkey="Function_42"/>
    <SBMLMap SBMLid="function_4_vVGpd1_1" COPASIkey="Function_71"/>
    <SBMLMap SBMLid="function_4_vVHog1_1" COPASIkey="Function_77"/>
    <SBMLMap SBMLid="function_4_vVPfk2627a_1" COPASIkey="Function_47"/>
    <SBMLMap SBMLid="function_4_vVPfk2627i_1" COPASIkey="Function_55"/>
    <SBMLMap SBMLid="function_4_vVStl1_1" COPASIkey="Function_44"/>
    <SBMLMap SBMLid="function_4_vVStl1_1_1" COPASIkey="Function_82"/>
    <SBMLMap SBMLid="function_4_vVacetate_i_1" COPASIkey="Function_78"/>
    <SBMLMap SBMLid="function_4_vVcin_1" COPASIkey="Function_50"/>
    <SBMLMap SBMLid="function_4_vVethanol_i_1" COPASIkey="Function_52"/>
    <SBMLMap SBMLid="function_4_vVgluci_1" COPASIkey="Function_43"/>
    <SBMLMap SBMLid="function_4_vVgpd1mRNA_1" COPASIkey="Function_73"/>
    <SBMLMap SBMLid="function_4_vVos_1" COPASIkey="Function_51"/>
    <SBMLMap SBMLid="function_4_vVpyruvate_1" COPASIkey="Function_46"/>
    <SBMLMap SBMLid="function_4_vVstl1mRNA_1" COPASIkey="Function_48"/>
    <SBMLMap SBMLid="function_4_vVtrehalose_1" COPASIkey="Function_72"/>
    <SBMLMap SBMLid="function_4_vVtrioseP_1" COPASIkey="Function_54"/>
    <SBMLMap SBMLid="function_4_vVtrioseP_1_1" COPASIkey="Function_83"/>
    <SBMLMap SBMLid="glucose_e" COPASIkey="Metabolite_138"/>
    <SBMLMap SBMLid="glucose_i" COPASIkey="Metabolite_47"/>
    <SBMLMap SBMLid="glucose_measured" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="glycerol_e" COPASIkey="Metabolite_136"/>
    <SBMLMap SBMLid="glycerol_i" COPASIkey="Metabolite_55"/>
    <SBMLMap SBMLid="glycerol_measured" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="gpd1mRNA" COPASIkey="Metabolite_122"/>
    <SBMLMap SBMLid="gpd1mRNA_measured" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="initcellnum" COPASIkey="ModelValue_111"/>
    <SBMLMap SBMLid="input" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="intra" COPASIkey="Compartment_1"/>
    <SBMLMap SBMLid="kv10_1" COPASIkey="ModelValue_48"/>
    <SBMLMap SBMLid="kv10_2" COPASIkey="ModelValue_47"/>
    <SBMLMap SBMLid="kv11_1" COPASIkey="ModelValue_46"/>
    <SBMLMap SBMLid="kv11_2" COPASIkey="ModelValue_45"/>
    <SBMLMap SBMLid="kv12_1" COPASIkey="ModelValue_44"/>
    <SBMLMap SBMLid="kv12_2" COPASIkey="ModelValue_43"/>
    <SBMLMap SBMLid="kv13a_1" COPASIkey="ModelValue_42"/>
    <SBMLMap SBMLid="kv13b_1" COPASIkey="ModelValue_41"/>
    <SBMLMap SBMLid="kv13b_2" COPASIkey="ModelValue_40"/>
    <SBMLMap SBMLid="kv14_1" COPASIkey="ModelValue_53"/>
    <SBMLMap SBMLid="kv14_2" COPASIkey="ModelValue_52"/>
    <SBMLMap SBMLid="kv14_3" COPASIkey="ModelValue_51"/>
    <SBMLMap SBMLid="kv14_4" COPASIkey="ModelValue_50"/>
    <SBMLMap SBMLid="kv14_5" COPASIkey="ModelValue_49"/>
    <SBMLMap SBMLid="kv15f_1" COPASIkey="ModelValue_77"/>
    <SBMLMap SBMLid="kv15f_2" COPASIkey="ModelValue_76"/>
    <SBMLMap SBMLid="kv15r_1" COPASIkey="ModelValue_75"/>
    <SBMLMap SBMLid="kv15r_2" COPASIkey="ModelValue_74"/>
    <SBMLMap SBMLid="kv16f_1" COPASIkey="ModelValue_81"/>
    <SBMLMap SBMLid="kv16f_2" COPASIkey="ModelValue_80"/>
    <SBMLMap SBMLid="kv16f_3" COPASIkey="ModelValue_79"/>
    <SBMLMap SBMLid="kv16r_1" COPASIkey="ModelValue_78"/>
    <SBMLMap SBMLid="kv16r_1VARIABLE" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="kv17f_1" COPASIkey="ModelValue_122"/>
    <SBMLMap SBMLid="kv17f_2" COPASIkey="ModelValue_73"/>
    <SBMLMap SBMLid="kv17f_3" COPASIkey="ModelValue_121"/>
    <SBMLMap SBMLid="kv17f_4" COPASIkey="ModelValue_72"/>
    <SBMLMap SBMLid="kv17f_5" COPASIkey="ModelValue_71"/>
    <SBMLMap SBMLid="kv17f_6" COPASIkey="ModelValue_120"/>
    <SBMLMap SBMLid="kv17r_1" COPASIkey="ModelValue_70"/>
    <SBMLMap SBMLid="kv18f_1" COPASIkey="ModelValue_69"/>
    <SBMLMap SBMLid="kv18r_1" COPASIkey="ModelValue_68"/>
    <SBMLMap SBMLid="kv19f_1" COPASIkey="ModelValue_124"/>
    <SBMLMap SBMLid="kv19r_1" COPASIkey="ModelValue_123"/>
    <SBMLMap SBMLid="kv1_1" COPASIkey="ModelValue_113"/>
    <SBMLMap SBMLid="kv1_2" COPASIkey="ModelValue_112"/>
    <SBMLMap SBMLid="kv20f_1" COPASIkey="ModelValue_67"/>
    <SBMLMap SBMLid="kv20f_2" COPASIkey="ModelValue_66"/>
    <SBMLMap SBMLid="kv20f_3" COPASIkey="ModelValue_65"/>
    <SBMLMap SBMLid="kv20f_x" COPASIkey="ModelValue_64"/>
    <SBMLMap SBMLid="kv20r_1" COPASIkey="ModelValue_63"/>
    <SBMLMap SBMLid="kv21f_1" COPASIkey="ModelValue_62"/>
    <SBMLMap SBMLid="kv21r_1" COPASIkey="ModelValue_61"/>
    <SBMLMap SBMLid="kv22_1" COPASIkey="ModelValue_56"/>
    <SBMLMap SBMLid="kv22_2" COPASIkey="ModelValue_55"/>
    <SBMLMap SBMLid="kv22_3" COPASIkey="ModelValue_54"/>
    <SBMLMap SBMLid="kv22_4_Hog1A" COPASIkey="ModelValue_37"/>
    <SBMLMap SBMLid="kv22_Hog1D_d" COPASIkey="ModelValue_33"/>
    <SBMLMap SBMLid="kv22_Hog1D_fT" COPASIkey="ModelValue_34"/>
    <SBMLMap SBMLid="kv22_Hog1D_t" COPASIkey="ModelValue_35"/>
    <SBMLMap SBMLid="kv23f_1" COPASIkey="ModelValue_60"/>
    <SBMLMap SBMLid="kv23f_2" COPASIkey="ModelValue_59"/>
    <SBMLMap SBMLid="kv23f_3" COPASIkey="ModelValue_58"/>
    <SBMLMap SBMLid="kv23r_1" COPASIkey="ModelValue_57"/>
    <SBMLMap SBMLid="kv2_1" COPASIkey="ModelValue_110"/>
    <SBMLMap SBMLid="kv2_2" COPASIkey="ModelValue_109"/>
    <SBMLMap SBMLid="kv3_1" COPASIkey="ModelValue_108"/>
    <SBMLMap SBMLid="kv3_2" COPASIkey="ModelValue_107"/>
    <SBMLMap SBMLid="kv3_3" COPASIkey="ModelValue_106"/>
    <SBMLMap SBMLid="kv3_4" COPASIkey="ModelValue_105"/>
    <SBMLMap SBMLid="kv4_1" COPASIkey="ModelValue_104"/>
    <SBMLMap SBMLid="kv4_2" COPASIkey="ModelValue_103"/>
    <SBMLMap SBMLid="kv4_3" COPASIkey="ModelValue_102"/>
    <SBMLMap SBMLid="kv4_4" COPASIkey="ModelValue_101"/>
    <SBMLMap SBMLid="kv4_5" COPASIkey="ModelValue_100"/>
    <SBMLMap SBMLid="kv5_1" COPASIkey="ModelValue_99"/>
    <SBMLMap SBMLid="kv5_2" COPASIkey="ModelValue_98"/>
    <SBMLMap SBMLid="kv5_3" COPASIkey="ModelValue_97"/>
    <SBMLMap SBMLid="kv5_4" COPASIkey="ModelValue_96"/>
    <SBMLMap SBMLid="kv6_1" COPASIkey="ModelValue_95"/>
    <SBMLMap SBMLid="kv6_2" COPASIkey="ModelValue_94"/>
    <SBMLMap SBMLid="kv6_3" COPASIkey="ModelValue_93"/>
    <SBMLMap SBMLid="kv6b_1" COPASIkey="ModelValue_92"/>
    <SBMLMap SBMLid="kv6b_2" COPASIkey="ModelValue_91"/>
    <SBMLMap SBMLid="kv6b_3" COPASIkey="ModelValue_90"/>
    <SBMLMap SBMLid="kv6b_4" COPASIkey="ModelValue_89"/>
    <SBMLMap SBMLid="kv6b_5" COPASIkey="ModelValue_88"/>
    <SBMLMap SBMLid="kv6b_x" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="kv7_1" COPASIkey="ModelValue_87"/>
    <SBMLMap SBMLid="kv7_2" COPASIkey="ModelValue_86"/>
    <SBMLMap SBMLid="kv8_1" COPASIkey="ModelValue_85"/>
    <SBMLMap SBMLid="kv8_2" COPASIkey="ModelValue_84"/>
    <SBMLMap SBMLid="kv9_1" COPASIkey="ModelValue_83"/>
    <SBMLMap SBMLid="kv9_2" COPASIkey="ModelValue_82"/>
    <SBMLMap SBMLid="kx1" COPASIkey="ModelValue_39"/>
    <SBMLMap SBMLid="kx2" COPASIkey="ModelValue_38"/>
    <SBMLMap SBMLid="parameter_97" COPASIkey="ModelValue_119"/>
    <SBMLMap SBMLid="pyruvate" COPASIkey="Metabolite_19"/>
    <SBMLMap SBMLid="pyruvate_measured" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="quantity" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="relVM" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="stl1mRNA" COPASIkey="Metabolite_124"/>
    <SBMLMap SBMLid="stl1mRNA_measured" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="t_stress" COPASIkey="ModelValue_114"/>
    <SBMLMap SBMLid="trehalose" COPASIkey="Metabolite_39"/>
    <SBMLMap SBMLid="trehalose_e" COPASIkey="Metabolite_144"/>
    <SBMLMap SBMLid="trehalose_measured" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="trioseP" COPASIkey="Metabolite_27"/>
    <SBMLMap SBMLid="trioseP_measured" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="v" COPASIkey="ModelValue_36"/>
    <SBMLMap SBMLid="v1" COPASIkey="Reaction_57"/>
    <SBMLMap SBMLid="v10" COPASIkey="Reaction_56"/>
    <SBMLMap SBMLid="v10Batch" COPASIkey="Reaction_55"/>
    <SBMLMap SBMLid="v10speed" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="v11" COPASIkey="Reaction_54"/>
    <SBMLMap SBMLid="v11Batch" COPASIkey="Reaction_53"/>
    <SBMLMap SBMLid="v11speed" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="v12" COPASIkey="Reaction_52"/>
    <SBMLMap SBMLid="v12Batch" COPASIkey="Reaction_51"/>
    <SBMLMap SBMLid="v12speed" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="v13a" COPASIkey="Reaction_50"/>
    <SBMLMap SBMLid="v13aBatch" COPASIkey="Reaction_49"/>
    <SBMLMap SBMLid="v13aspeed" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="v13b" COPASIkey="Reaction_48"/>
    <SBMLMap SBMLid="v13bBatch" COPASIkey="Reaction_47"/>
    <SBMLMap SBMLid="v13bspeed" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="v14" COPASIkey="Reaction_46"/>
    <SBMLMap SBMLid="v15f" COPASIkey="Reaction_45"/>
    <SBMLMap SBMLid="v15f_v" COPASIkey="ModelValue_32"/>
    <SBMLMap SBMLid="v15r" COPASIkey="Reaction_44"/>
    <SBMLMap SBMLid="v15r_v" COPASIkey="ModelValue_31"/>
    <SBMLMap SBMLid="v16f" COPASIkey="Reaction_43"/>
    <SBMLMap SBMLid="v16r" COPASIkey="Reaction_42"/>
    <SBMLMap SBMLid="v17f" COPASIkey="Reaction_41"/>
    <SBMLMap SBMLid="v17r" COPASIkey="Reaction_40"/>
    <SBMLMap SBMLid="v18f" COPASIkey="Reaction_39"/>
    <SBMLMap SBMLid="v18r" COPASIkey="Reaction_38"/>
    <SBMLMap SBMLid="v19f" COPASIkey="Reaction_37"/>
    <SBMLMap SBMLid="v19r" COPASIkey="Reaction_36"/>
    <SBMLMap SBMLid="v19r_v" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="v1Batch" COPASIkey="Reaction_35"/>
    <SBMLMap SBMLid="v1speed" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="v2" COPASIkey="Reaction_34"/>
    <SBMLMap SBMLid="v20f" COPASIkey="Reaction_33"/>
    <SBMLMap SBMLid="v20r" COPASIkey="Reaction_32"/>
    <SBMLMap SBMLid="v21f" COPASIkey="Reaction_31"/>
    <SBMLMap SBMLid="v21r" COPASIkey="Reaction_30"/>
    <SBMLMap SBMLid="v22" COPASIkey="Reaction_29"/>
    <SBMLMap SBMLid="v23f" COPASIkey="Reaction_28"/>
    <SBMLMap SBMLid="v23r" COPASIkey="Reaction_27"/>
    <SBMLMap SBMLid="v3" COPASIkey="Reaction_26"/>
    <SBMLMap SBMLid="v4" COPASIkey="Reaction_25"/>
    <SBMLMap SBMLid="v5" COPASIkey="Reaction_24"/>
    <SBMLMap SBMLid="v6" COPASIkey="Reaction_23"/>
    <SBMLMap SBMLid="v6b" COPASIkey="Reaction_22"/>
    <SBMLMap SBMLid="v7" COPASIkey="Reaction_21"/>
    <SBMLMap SBMLid="v8" COPASIkey="Reaction_20"/>
    <SBMLMap SBMLid="v9" COPASIkey="Reaction_19"/>
    <SBMLMap SBMLid="vVF16DP" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="vVG6P" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="vVGpd1" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="vVHog1" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="vVHog1PP" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="vVPfk2627a" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="vVPfk2627i" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="vVStl1" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="vV_1" COPASIkey="ModelValue_118"/>
    <SBMLMap SBMLid="vV_2" COPASIkey="ModelValue_117"/>
    <SBMLMap SBMLid="vV_R" COPASIkey="ModelValue_116"/>
    <SBMLMap SBMLid="vV_T" COPASIkey="ModelValue_115"/>
    <SBMLMap SBMLid="vVacetate_i" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="vVcin" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="vVethanol_i" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="vVgluci" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="vVglyci" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="vVgpd1mRNA" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="vVos" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="vVpyruvate" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="vVstl1mRNA" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="vVtrehalose" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="vVtrioseP" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="volchangespeed" COPASIkey="ModelValue_20"/>
  </SBMLReference>
</COPASI>
