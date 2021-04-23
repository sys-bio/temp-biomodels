<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.16 (Build 104) (http://www.copasi.org) at 2016-04-07 22:31:55 UTC -->
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
    <Function key="Function_96" name="v22_t_1" type="UserDefined" reversible="false">
      <Expression>
        if(PetelenzKuehn_osmoadaptation_hog1D lt kv22_Hog1D_t,kv22_1*-Turgor/(kv22_3+-Turgor)*1.5*1-kv22_1*Fps1r,(kv22_1*kv22_Hog1D_fT/(kv22_3+kv22_Hog1D_fT)*1.5*1-kv22_1*Fps1r)*kv22_Hog1D_d)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_700" name="Fps1r" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_707" name="PetelenzKuehn_osmoadaptation_hog1D" order="1" role="time"/>
        <ParameterDescription key="FunctionParameter_711" name="Turgor" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_688" name="kv22_1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_691" name="kv22_3" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_696" name="kv22_Hog1D_d" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_703" name="kv22_Hog1D_fT" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_713" name="kv22_Hog1D_t" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_8" name="PetelenzKuehn_osmoadaptation_hog1D" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mol" type="deterministic" avogadroConstant="6.02214179e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Model_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-11-30T18:20:06Z</dcterms:W3CDTF>
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
      <Compartment key="Compartment_5" name="intra" simulationType="fixed" dimensionality="3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_5">
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
      <Compartment key="Compartment_15" name="extra" simulationType="fixed" dimensionality="3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_15">
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
      <Metabolite key="Metabolite_171" name="glycerol_i" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_171">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:14:57Z</dcterms:W3CDTF>
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
      <Metabolite key="Metabolite_167" name="cin" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_167">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:18:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:chebi:CHEBI:25728" />
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
      <Metabolite key="Metabolite_163" name="glucose_i" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_163">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:14:41Z</dcterms:W3CDTF>
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
      <Metabolite key="Metabolite_159" name="G6P" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_159">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:13:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:chebi:CHEBI:17665" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:go:GO:0005622" />
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
      <Metabolite key="Metabolite_155" name="trehalose" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_155">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:26:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:chebi:CHEBI:27082" />
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
      <Metabolite key="Metabolite_151" name="F16DP" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_151">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:11:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:chebi:CHEBI:16905" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:go:GO:0005622" />
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
      <Metabolite key="Metabolite_147" name="F26DP" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_147">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:11:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:pubchem.compound:105021" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:go:GO:0005622" />
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
      <Metabolite key="Metabolite_61" name="trioseP" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_61">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:29:07Z</dcterms:W3CDTF>
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
        <rdf:li rdf:resource="urn:miriam:go:GO:0005622" />
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
      <Metabolite key="Metabolite_69" name="Gpd1" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_69">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:15:28Z</dcterms:W3CDTF>
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
      <Metabolite key="Metabolite_77" name="pyruvate" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_77">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:24:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:chebi:CHEBI:15361" />
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
      <Metabolite key="Metabolite_85" name="acetate_i" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_85">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:11:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:chebi:CHEBI:30089" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:go:GO:0005622" />
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
      <Metabolite key="Metabolite_93" name="ethanol_i" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_93">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:12:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:chebi:CHEBI:16236" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:go:GO:0005622" />
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
      <Metabolite key="Metabolite_101" name="Hog1" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_101">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:17:10Z</dcterms:W3CDTF>
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
      <Metabolite key="Metabolite_109" name="Hog1PP" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_109">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:19:28Z</dcterms:W3CDTF>
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
      <Metabolite key="Metabolite_203" name="Pfk2627a" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_203">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:19:31Z</dcterms:W3CDTF>
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
The S000005496 is for Pfk27 locus information
The S000001369 is for Pfk26 locus information
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_205" name="Pfk2627i" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_205">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:23:54Z</dcterms:W3CDTF>
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
The S000005496 is for Pfk27 locus information
The S000001369 is for Pfk26 locus information
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_207" name="AOG" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_207">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:18:22Z</dcterms:W3CDTF>
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
      <Metabolite key="Metabolite_209" name="gpd1mRNA" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_209">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:15:53Z</dcterms:W3CDTF>
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
      <Metabolite key="Metabolite_211" name="stl1mRNA" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_211">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:25:56Z</dcterms:W3CDTF>
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
      <Metabolite key="Metabolite_213" name="Stl1" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_213">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:25:27Z</dcterms:W3CDTF>
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
      <Metabolite key="Metabolite_215" name="AOGi" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_215">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:31:54Z</dcterms:W3CDTF>
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
      <Metabolite key="Metabolite_217" name="Fps1r" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_217">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:13:05Z</dcterms:W3CDTF>
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
Annotatin by UniProt is correct
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_219" name="biomass" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_219">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:18:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_221" name="cellvol" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_221">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:18:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_223" name="glycerol_e" simulationType="reactions" compartment="Compartment_15">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_223">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:14:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:chebi:CHEBI:17754" />
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
      <Metabolite key="Metabolite_225" name="glucose_e" simulationType="reactions" compartment="Compartment_15">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_225">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:14:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:chebi:CHEBI:17234" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:go:GO:0005576" />
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
      <Metabolite key="Metabolite_227" name="acetate_e" simulationType="reactions" compartment="Compartment_15">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_227">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:11:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:chebi:CHEBI:30089" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:go:GO:0005576" />
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
      <Metabolite key="Metabolite_229" name="ethanol_e" simulationType="reactions" compartment="Compartment_15">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_229">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:12:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:chebi:CHEBI:16236" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:go:GO:0005576" />
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
      <Metabolite key="Metabolite_231" name="trehalose_e" simulationType="reactions" compartment="Compartment_15">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_231">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:26:49Z</dcterms:W3CDTF>
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
      <ModelValue key="ModelValue_126" name="cellvol_init" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_127" name="kv19f_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_128" name="kv19r_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_129" name="kv17f_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_130" name="kv17f_3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_131" name="kv17f_6" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_132" name="parameter_97" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_133" name="vV_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_134" name="vV_2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_135" name="vV_R" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_136" name="vV_T" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_137" name="t_stress" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_138" name="kv1_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_139" name="kv1_2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_140" name="initcellnum" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_141" name="kv2_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_142" name="kv2_2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_143" name="kv3_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_144" name="kv3_2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_145" name="kv3_3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_146" name="kv3_4" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_147" name="kv4_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_148" name="kv4_2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_149" name="kv4_3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_150" name="kv4_4" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_151" name="kv4_5" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_152" name="kv5_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_153" name="kv5_2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_154" name="kv5_3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_155" name="kv5_4" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_156" name="kv6_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_157" name="kv6_2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_158" name="kv6_3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_159" name="kv6b_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_160" name="kv6b_2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_161" name="kv6b_3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_162" name="kv6b_4" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_163" name="kv6b_5" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_164" name="kv7_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_165" name="kv7_2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_166" name="kv8_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_167" name="kv8_2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_168" name="kv9_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_169" name="kv9_2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_170" name="kv16f_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_171" name="kv16f_2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_172" name="kv16f_3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_173" name="kv16r_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_174" name="kv15f_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_175" name="kv15f_2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_176" name="kv15r_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_177" name="kv15r_2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_178" name="kv17f_2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_179" name="kv17f_4" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_180" name="kv17f_5" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_181" name="kv17r_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_182" name="kv18f_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_183" name="kv18r_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_184" name="kv20f_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_185" name="kv20f_2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_186" name="kv20f_3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_187" name="kv20f_x" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_188" name="kv20r_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_189" name="kv21f_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_190" name="kv21r_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_191" name="kv23f_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_192" name="kv23f_2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_193" name="kv23f_3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_194" name="kv23r_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_195" name="kv22_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_196" name="kv22_2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_197" name="kv22_3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_198" name="kv14_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_199" name="kv14_2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_200" name="kv14_3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_201" name="kv14_4" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_202" name="kv14_5" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_203" name="kv10_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_204" name="kv10_2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_205" name="kv11_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_206" name="kv11_2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_207" name="kv12_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_208" name="kv12_2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_209" name="kv13a_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_210" name="kv13b_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_211" name="kv13b_2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_212" name="kx1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_213" name="kx2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_214" name="kv22_4_Hog1A" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_215" name="v" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_216" name="kv22_Hog1D_t" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_217" name="kv22_Hog1D_fT" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_218" name="kv22_Hog1D_d" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_219" name="v15f_v" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_220" name="v15r_v" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_221" name="v19r_v" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_222" name="Vm" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[intra],Vector=Metabolites[cellvol],Reference=Concentration&gt;+0.00024
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_223" name="CellSurface" simulationType="assignment">
        <Expression>
          (36*PI)^(1/3)*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[Vm],Reference=Value&gt;^(2/3)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_224" name="v13aspeed" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[intra],Vector=Metabolites[Fps1r],Reference=Concentration&gt;*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv13a_1],Reference=Value&gt;*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[CellSurface],Reference=Value&gt;*(&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[intra],Vector=Metabolites[glycerol_i],Reference=Concentration&gt;-&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[extra],Vector=Metabolites[glycerol_e],Reference=Concentration&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_225" name="v12speed" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv12_1],Reference=Value&gt;*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[CellSurface],Reference=Value&gt;*(&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[intra],Vector=Metabolites[ethanol_i],Reference=Concentration&gt;-&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv12_2],Reference=Value&gt;*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[extra],Vector=Metabolites[ethanol_e],Reference=Concentration&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_226" name="v11speed" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv11_1],Reference=Value&gt;*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[CellSurface],Reference=Value&gt;*(&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[intra],Vector=Metabolites[acetate_i],Reference=Concentration&gt;-&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv11_2],Reference=Value&gt;*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[extra],Vector=Metabolites[acetate_e],Reference=Concentration&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_227" name="v10speed" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv10_1],Reference=Value&gt;*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[CellSurface],Reference=Value&gt;*(&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[intra],Vector=Metabolites[trehalose],Reference=Concentration&gt;-&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv10_2],Reference=Value&gt;*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[extra],Vector=Metabolites[trehalose_e],Reference=Concentration&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_228" name="Turgor" simulationType="assignment">
        <Expression>
          if(&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[Vm],Reference=Value&gt; gt 0.00025*0.9+0.00025,-2.9*(1-(0.00025-(&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[Vm],Reference=Value&gt;-0.00025))/(0.00025-0.00025*0.9)),0)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_229" name="OsmoE" simulationType="assignment">
        <Expression>
          0.355586+&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[parameter_97],Reference=Value&gt;*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[input],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_230" name="input" simulationType="assignment">
        <Expression>
          if(&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Reference=Time&gt; lt &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[t_stress],Reference=Value&gt;,0,if(&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Reference=Time&gt; lt &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[t_stress],Reference=Value&gt;+5,(&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Reference=Time&gt;-&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[t_stress],Reference=Value&gt;)/5,1))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_231" name="volchangespeed" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[vV_1],Reference=Value&gt;*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[CellSurface],Reference=Value&gt;*(&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[Turgor],Reference=Value&gt;-&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[vV_2],Reference=Value&gt;*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[vV_R],Reference=Value&gt;*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[vV_T],Reference=Value&gt;*(&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[extra],Vector=Metabolites[glycerol_e],Reference=Concentration&gt;+&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[OsmoE],Reference=Value&gt;-(&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[intra],Vector=Metabolites[glycerol_i],Reference=Concentration&gt;+&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[intra],Vector=Metabolites[cin],Reference=Concentration&gt;)))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_232" name="relVM" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[Vm],Reference=Value&gt;/0.00048
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_233" name="OD" simulationType="assignment">
        <Expression>
          2.94557e-09*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Reference=Time&gt;^2+6.49182e-05*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Reference=Time&gt;+0.595608
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_234" name="cellnum" simulationType="assignment">
        <Expression>
          -6.54824e+06*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[OD],Reference=Value&gt;^2+3.05651e+07*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[OD],Reference=Value&gt;-4.72751e+06
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_235" name="v1speed" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv1_1],Reference=Value&gt;*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[extra],Vector=Metabolites[glucose_e],Reference=Concentration&gt;/(&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv1_2],Reference=Value&gt;+&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[extra],Vector=Metabolites[glucose_e],Reference=Concentration&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_236" name="v13bspeed" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[extra],Vector=Metabolites[glycerol_e],Reference=Concentration&gt;*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv13b_1],Reference=Value&gt;*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[intra],Vector=Metabolites[Stl1],Reference=Concentration&gt;/(&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv13b_2],Reference=Value&gt;+&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[extra],Vector=Metabolites[glycerol_e],Reference=Concentration&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_237" name="kv16r_1VARIABLE" simulationType="assignment">
        <Expression>
          if(&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Reference=Time&gt; lt 4800,0.444296,0.444296*(&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Reference=Time&gt;/4800)^3)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_238" name="glycerol_measured" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[intra],Vector=Metabolites[glycerol_i],Reference=Concentration&gt;*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[intra],Vector=Metabolites[cellvol],Reference=Concentration&gt;/&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[cellvol_init],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_239" name="Hog1PP_measured" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[intra],Vector=Metabolites[Hog1PP],Reference=Concentration&gt;*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[intra],Vector=Metabolites[cellvol],Reference=Concentration&gt;/&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[cellvol_init],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_240" name="Gpd1_measured" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[intra],Vector=Metabolites[Gpd1],Reference=Concentration&gt;*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[intra],Vector=Metabolites[cellvol],Reference=Concentration&gt;/&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[cellvol_init],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_241" name="gpd1mRNA_measured" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[intra],Vector=Metabolites[gpd1mRNA],Reference=Concentration&gt;*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[intra],Vector=Metabolites[cellvol],Reference=Concentration&gt;/&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[cellvol_init],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_242" name="glucose_measured" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[intra],Vector=Metabolites[glucose_i],Reference=Concentration&gt;*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[intra],Vector=Metabolites[cellvol],Reference=Concentration&gt;/&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[cellvol_init],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_243" name="pyruvate_measured" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[intra],Vector=Metabolites[pyruvate],Reference=Concentration&gt;*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[intra],Vector=Metabolites[cellvol],Reference=Concentration&gt;/&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[cellvol_init],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_244" name="acetate_measured" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[intra],Vector=Metabolites[acetate_i],Reference=Concentration&gt;*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[intra],Vector=Metabolites[cellvol],Reference=Concentration&gt;/&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[cellvol_init],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_245" name="ethanol_measured" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[intra],Vector=Metabolites[ethanol_i],Reference=Concentration&gt;*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[intra],Vector=Metabolites[cellvol],Reference=Concentration&gt;/&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[cellvol_init],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_246" name="trehalose_measured" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[intra],Vector=Metabolites[trehalose],Reference=Concentration&gt;*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[intra],Vector=Metabolites[cellvol],Reference=Concentration&gt;/&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[cellvol_init],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_247" name="F16DP_measured" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[intra],Vector=Metabolites[F16DP],Reference=Concentration&gt;*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[intra],Vector=Metabolites[cellvol],Reference=Concentration&gt;/&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[cellvol_init],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_248" name="quantity" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_249" name="trioseP_measured" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[intra],Vector=Metabolites[trioseP],Reference=Concentration&gt;*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[intra],Vector=Metabolites[cellvol],Reference=Concentration&gt;/&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[cellvol_init],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_250" name="stl1mRNA_measured" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[intra],Vector=Metabolites[stl1mRNA],Reference=Concentration&gt;*&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[intra],Vector=Metabolites[cellvol],Reference=Concentration&gt;/&lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[cellvol_init],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_251" name="kv6b_x" simulationType="fixed">
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_58" name="v1" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_58">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:32:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:go:GO:0046323" />
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
          <Substrate metabolite="Metabolite_225" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_163" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4815" name="kv1_1" value="5.05249e-06"/>
          <Constant key="Parameter_4816" name="kv1_2" value="0.899814"/>
        </ListOfConstants>
        <KineticLaw function="Function_79">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_420">
              <SourceParameter reference="Metabolite_225"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_425">
              <SourceParameter reference="ModelValue_138"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_427">
              <SourceParameter reference="ModelValue_139"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_59" name="v10" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_59">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:33:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:go:GO:0015771" />
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
          <Substrate metabolite="Metabolite_155" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_231" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4706" name="CellSurface" value="0.0300572"/>
          <Constant key="Parameter_4707" name="kv10_1" value="1.83291e-07"/>
          <Constant key="Parameter_4708" name="kv10_2" value="4.26512"/>
        </ListOfConstants>
        <KineticLaw function="Function_74">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_403">
              <SourceParameter reference="ModelValue_223"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_408">
              <SourceParameter reference="ModelValue_203"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_412">
              <SourceParameter reference="ModelValue_204"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_410">
              <SourceParameter reference="Metabolite_155"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_414">
              <SourceParameter reference="Metabolite_231"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_60" name="v10Batch" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_60">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:34:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:go:GO:0051049" />
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
          <Product metabolite="Metabolite_231" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4806" name="cellnum" value="1.11543e+07"/>
          <Constant key="Parameter_4807" name="initcellnum" value="6.95472e+06"/>
          <Constant key="Parameter_4808" name="v10speed" value="1.30198e-11"/>
        </ListOfConstants>
        <KineticLaw function="Function_41">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_234"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_140"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_227"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_61" name="v11" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_61">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:35:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:go:GO:0006846" />
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
          <Substrate metabolite="Metabolite_85" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_227" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4809" name="CellSurface" value="0.0300572"/>
          <Constant key="Parameter_4810" name="kv11_1" value="3.2863e-06"/>
          <Constant key="Parameter_4811" name="kv11_2" value="1.17279"/>
        </ListOfConstants>
        <KineticLaw function="Function_60">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_343">
              <SourceParameter reference="ModelValue_223"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_353">
              <SourceParameter reference="Metabolite_227"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="Metabolite_85"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_345">
              <SourceParameter reference="ModelValue_205"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_324">
              <SourceParameter reference="ModelValue_206"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_62" name="v11Batch" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_62">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:35:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:go:GO:0051049" />
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
          <Product metabolite="Metabolite_227" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4812" name="cellnum" value="1.11543e+07"/>
          <Constant key="Parameter_4813" name="initcellnum" value="6.95472e+06"/>
          <Constant key="Parameter_4814" name="v11speed" value="5.25953e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_76">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_413">
              <SourceParameter reference="ModelValue_234"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_418">
              <SourceParameter reference="ModelValue_140"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_416">
              <SourceParameter reference="ModelValue_226"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_63" name="v12" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_63">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:37:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:go:GO:0005215" />
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
          <Substrate metabolite="Metabolite_93" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_229" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4831" name="CellSurface" value="0.0300572"/>
          <Constant key="Parameter_4832" name="kv12_1" value="1.00927e-05"/>
          <Constant key="Parameter_4833" name="kv12_2" value="0.148586"/>
        </ListOfConstants>
        <KineticLaw function="Function_68">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_373">
              <SourceParameter reference="ModelValue_223"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_388">
              <SourceParameter reference="Metabolite_229"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_384">
              <SourceParameter reference="Metabolite_93"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_382">
              <SourceParameter reference="ModelValue_207"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_386">
              <SourceParameter reference="ModelValue_208"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_64" name="v12Batch" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_64">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:37:11Z</dcterms:W3CDTF>
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
          <Product metabolite="Metabolite_229" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4834" name="cellnum" value="1.11543e+07"/>
          <Constant key="Parameter_4835" name="initcellnum" value="6.95472e+06"/>
          <Constant key="Parameter_4836" name="v12speed" value="2.00814e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_75">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_411">
              <SourceParameter reference="ModelValue_234"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_406">
              <SourceParameter reference="ModelValue_140"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_415">
              <SourceParameter reference="ModelValue_225"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_65" name="v13a" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_65">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:39:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:go:GO:0015793" />
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
          <Substrate metabolite="Metabolite_171" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_223" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_217" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4837" name="kDiff" value="1"/>
          <Constant key="Parameter_4838" name="CellSurface" value="0.0300572"/>
          <Constant key="Parameter_4839" name="kv13a_1" value="6.28899e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_56">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="ModelValue_223"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="Metabolite_217"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="Metabolite_223"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="Metabolite_171"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_332">
              <SourceParameter reference="Parameter_4837"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="ModelValue_209"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_66" name="v13aBatch" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_66">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:37:13Z</dcterms:W3CDTF>
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
          <Product metabolite="Metabolite_223" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4840" name="cellnum" value="1.11543e+07"/>
          <Constant key="Parameter_4841" name="initcellnum" value="6.95472e+06"/>
          <Constant key="Parameter_4842" name="v13aspeed" value="1.36836e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_66">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_375">
              <SourceParameter reference="ModelValue_234"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_357">
              <SourceParameter reference="ModelValue_140"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_379">
              <SourceParameter reference="ModelValue_224"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_67" name="v13b" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_67">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:40:29Z</dcterms:W3CDTF>
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
          <Substrate metabolite="Metabolite_223" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_171" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_213" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4843" name="kv13b_1" value="1.27001e-07"/>
          <Constant key="Parameter_4844" name="kv13b_2" value="3.69196e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_57">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="Metabolite_213"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="Metabolite_223"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="ModelValue_210"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="ModelValue_211"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_68" name="v13bBatch" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_68">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:37:15Z</dcterms:W3CDTF>
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
          <Substrate metabolite="Metabolite_223" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4845" name="cellnum" value="1.11543e+07"/>
          <Constant key="Parameter_4846" name="initcellnum" value="6.95472e+06"/>
          <Constant key="Parameter_4847" name="v13bspeed" value="1.15695e-09"/>
        </ListOfConstants>
        <KineticLaw function="Function_67">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_377">
              <SourceParameter reference="ModelValue_234"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_381">
              <SourceParameter reference="ModelValue_140"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_370">
              <SourceParameter reference="ModelValue_236"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_69" name="v14" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_69">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:36:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isPartOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:go:GO:0016049" />
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
          <Substrate metabolite="Metabolite_159" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_219" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_221" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4848" name="OsmoE" value="0.355586"/>
          <Constant key="Parameter_4849" name="kv14_1" value="0.808051"/>
          <Constant key="Parameter_4850" name="kv14_2" value="6.05922e-06"/>
          <Constant key="Parameter_4851" name="kv14_3" value="2.05157"/>
          <Constant key="Parameter_4852" name="kv14_4" value="0.420621"/>
          <Constant key="Parameter_4853" name="kv14_5" value="1.23049"/>
        </ListOfConstants>
        <KineticLaw function="Function_40">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Metabolite_159"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="ModelValue_229"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_254">
              <SourceParameter reference="Metabolite_221"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_198"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="ModelValue_199"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_258">
              <SourceParameter reference="ModelValue_200"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="ModelValue_201"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="ModelValue_202"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_70" name="v15f" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_70">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:33:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:go:GO:0003873" />
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
          <Substrate metabolite="Metabolite_159" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_203" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4854" name="kv15f_1" value="4.99507e-05"/>
          <Constant key="Parameter_4855" name="kv15f_2" value="6.95877"/>
        </ListOfConstants>
        <KineticLaw function="Function_85">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_446">
              <SourceParameter reference="Metabolite_159"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_448">
              <SourceParameter reference="Metabolite_203"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_441">
              <SourceParameter reference="ModelValue_174"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_450">
              <SourceParameter reference="ModelValue_175"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_71" name="v15r" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_71">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:44:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:go:GO:0004331" />
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
          <Substrate metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_159" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4868" name="kv15r_1" value="1.84829e-07"/>
          <Constant key="Parameter_4869" name="kv15r_2" value="3.3187e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_86">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_447">
              <SourceParameter reference="Metabolite_147"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_451">
              <SourceParameter reference="ModelValue_176"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_452">
              <SourceParameter reference="ModelValue_177"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_72" name="v17f" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_72">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:45:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:go:GO:0006350" />
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
          <Product metabolite="Metabolite_209" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_109" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_207" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4870" name="kv17f_1" value="0.000411446"/>
          <Constant key="Parameter_4873" name="kv17f_2" value="0.547886"/>
          <Constant key="Parameter_4758" name="kv17f_3" value="0.421394"/>
          <Constant key="Parameter_4759" name="kv17f_4" value="6.86959e-10"/>
          <Constant key="Parameter_4871" name="kv17f_6" value="7.85767e-09"/>
          <Constant key="Parameter_4872" name="kx1" value="1.97771"/>
          <Constant key="Parameter_4760" name="kx2" value="5.37171"/>
        </ListOfConstants>
        <KineticLaw function="Function_58">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_344">
              <SourceParameter reference="Metabolite_207"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="Metabolite_109"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="ModelValue_129"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_340">
              <SourceParameter reference="ModelValue_178"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_342">
              <SourceParameter reference="ModelValue_130"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_348">
              <SourceParameter reference="ModelValue_179"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_350">
              <SourceParameter reference="ModelValue_131"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_338">
              <SourceParameter reference="ModelValue_212"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_346">
              <SourceParameter reference="ModelValue_213"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_73" name="v17r" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_73">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:46:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:go:GO:0006402" />
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
          <Substrate metabolite="Metabolite_209" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4761" name="k1" value="0.00151498"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_181"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_209"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_74" name="v18f" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_74">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:48:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:go:GO:0006412" />
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
          <Product metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_209" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4762" name="kv18f_1" value="0.00646553"/>
        </ListOfConstants>
        <KineticLaw function="Function_59">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_347">
              <SourceParameter reference="Metabolite_209"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_351">
              <SourceParameter reference="ModelValue_182"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_75" name="v18r" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_75">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:53:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:go:GO:0030163" />
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
          <Substrate metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4763" name="k1" value="0.000132549"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_183"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_69"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_76" name="v1Batch" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_76">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:37:03Z</dcterms:W3CDTF>
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
          <Substrate metabolite="Metabolite_225" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4764" name="cellnum" value="1.11543e+07"/>
          <Constant key="Parameter_4765" name="initcellnum" value="6.95472e+06"/>
          <Constant key="Parameter_4766" name="v1speed" value="5.77982e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_49">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="ModelValue_234"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="ModelValue_140"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="ModelValue_235"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_77" name="v2" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_77">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:56:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:go:GO:0004340" />
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
          <Substrate metabolite="Metabolite_163" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_159" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4767" name="kv2_1" value="0.00303855"/>
          <Constant key="Parameter_4768" name="kv2_2" value="0.40864"/>
        </ListOfConstants>
        <KineticLaw function="Function_87">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_449">
              <SourceParameter reference="Metabolite_163"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_453">
              <SourceParameter reference="ModelValue_141"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_455">
              <SourceParameter reference="ModelValue_142"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_78" name="v20f" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_78">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:50:05Z</dcterms:W3CDTF>
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
          <Product metabolite="Metabolite_211" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_109" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4874" name="kv20f_1" value="9.81887e-05"/>
          <Constant key="Parameter_4875" name="kv20f_2" value="0.0167845"/>
          <Constant key="Parameter_4514" name="kv20f_3" value="4.05843e-06"/>
          <Constant key="Parameter_4513" name="kv20f_x" value="1.55858"/>
        </ListOfConstants>
        <KineticLaw function="Function_61">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Metabolite_109"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_354">
              <SourceParameter reference="ModelValue_184"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_356">
              <SourceParameter reference="ModelValue_185"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_358">
              <SourceParameter reference="ModelValue_186"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_349">
              <SourceParameter reference="ModelValue_187"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_79" name="v20r" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_79">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:47:49Z</dcterms:W3CDTF>
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
          <Substrate metabolite="Metabolite_211" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4512" name="k1" value="0.000705933"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_188"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_211"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_80" name="v21f" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_80">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:50:20Z</dcterms:W3CDTF>
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
          <Product metabolite="Metabolite_213" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_211" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4483" name="kv21f_1" value="0.00121673"/>
        </ListOfConstants>
        <KineticLaw function="Function_63">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_366">
              <SourceParameter reference="ModelValue_189"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_362">
              <SourceParameter reference="Metabolite_211"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_81" name="v21r" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_81">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:50:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:go:GO:0030163" />
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
          <Substrate metabolite="Metabolite_213" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4482" name="k1" value="0.000214247"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_190"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_213"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_82" name="v22" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_82">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:57:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:go:GO:0051049" />
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
          <Product metabolite="Metabolite_217" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_109" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4481" name="Turgor" value="-1.74"/>
          <Constant key="Parameter_4480" name="kv22_1" value="8.0075"/>
          <Constant key="Parameter_4474" name="kv22_3" value="0.0554729"/>
          <Constant key="Parameter_4475" name="kv22_Hog1D_d" value="0.000294357"/>
          <Constant key="Parameter_4476" name="kv22_Hog1D_fT" value="0.0256901"/>
          <Constant key="Parameter_4478" name="kv22_Hog1D_t" value="5536"/>
        </ListOfConstants>
        <KineticLaw function="Function_96">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_700">
              <SourceParameter reference="Metabolite_217"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_707">
              <SourceParameter reference="Model_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_711">
              <SourceParameter reference="ModelValue_228"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_688">
              <SourceParameter reference="ModelValue_195"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_691">
              <SourceParameter reference="ModelValue_197"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_696">
              <SourceParameter reference="ModelValue_218"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_703">
              <SourceParameter reference="ModelValue_217"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_713">
              <SourceParameter reference="ModelValue_216"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_83" name="v23f" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_83">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:01:09Z</dcterms:W3CDTF>
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
          <Substrate metabolite="Metabolite_215" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_207" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4479" name="Vm" value="0.00049"/>
          <Constant key="Parameter_4477" name="kv23f_1" value="8.80535e-06"/>
          <Constant key="Parameter_4473" name="kv23f_2" value="0.00051235"/>
          <Constant key="Parameter_4472" name="kv23f_3" value="6.95727"/>
        </ListOfConstants>
        <KineticLaw function="Function_64">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Metabolite_215"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_369">
              <SourceParameter reference="ModelValue_222"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_341">
              <SourceParameter reference="ModelValue_191"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_367">
              <SourceParameter reference="ModelValue_192"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_371">
              <SourceParameter reference="ModelValue_193"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_84" name="v23r" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_84">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:56:56Z</dcterms:W3CDTF>
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
          <Substrate metabolite="Metabolite_207" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_215" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4470" name="k1" value="0.000209875"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_194"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_207"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_85" name="v3" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_85">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:01:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:go:GO:0005992" />
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
          <Substrate metabolite="Metabolite_159" stoichiometry="2"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_155" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4469" name="kv3_1" value="6.17387e-06"/>
          <Constant key="Parameter_4471" name="kv3_2" value="0.81114"/>
          <Constant key="Parameter_4468" name="kv3_3" value="0.000737808"/>
          <Constant key="Parameter_4467" name="kv3_4" value="0.166996"/>
        </ListOfConstants>
        <KineticLaw function="Function_65">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_368">
              <SourceParameter reference="Metabolite_159"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_372">
              <SourceParameter reference="ModelValue_143"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_364">
              <SourceParameter reference="ModelValue_144"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_374">
              <SourceParameter reference="ModelValue_145"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_378">
              <SourceParameter reference="ModelValue_146"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_155"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_86" name="v4" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_86">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:02:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:go:GO:0004347" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:go:GO:0003872" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Annotation conducted by the authors
Annotation by GO is correct
GO:0003872 production of F16DP
GO:0004347 production of F26DP
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_159" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_151" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4466" name="kv4_1" value="0.0628885"/>
          <Constant key="Parameter_4465" name="kv4_2" value="0.00230714"/>
          <Constant key="Parameter_4464" name="kv4_3" value="0.00171631"/>
          <Constant key="Parameter_4463" name="kv4_4" value="2.67143"/>
          <Constant key="Parameter_4462" name="kv4_5" value="0.583865"/>
        </ListOfConstants>
        <KineticLaw function="Function_45">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="Metabolite_147"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Metabolite_159"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="ModelValue_147"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="ModelValue_148"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="ModelValue_149"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="ModelValue_150"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="ModelValue_151"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_87" name="v5" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_87">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:05:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:go:GO:0004332" />
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
          <Substrate metabolite="Metabolite_151" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_61" stoichiometry="2"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4461" name="kv5_1" value="0.00383315"/>
          <Constant key="Parameter_4460" name="kv5_2" value="1.74463"/>
          <Constant key="Parameter_4459" name="kv5_3" value="0.00656128"/>
          <Constant key="Parameter_4458" name="kv5_4" value="1.13994"/>
        </ListOfConstants>
        <KineticLaw function="Function_69">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_385">
              <SourceParameter reference="Metabolite_151"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_389">
              <SourceParameter reference="ModelValue_152"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_380">
              <SourceParameter reference="ModelValue_153"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_391">
              <SourceParameter reference="ModelValue_154"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_395">
              <SourceParameter reference="ModelValue_155"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_393">
              <SourceParameter reference="Metabolite_61"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_88" name="v6" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_88">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:06:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:go:GO:0004367" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:go:GO:0043136" />
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
          <Substrate metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_171" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4457" name="kv6_1" value="0.0118992"/>
          <Constant key="Parameter_4456" name="kv6_2" value="0.230864"/>
          <Constant key="Parameter_4455" name="kv6_3" value="1.76504"/>
        </ListOfConstants>
        <KineticLaw function="Function_80">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_432">
              <SourceParameter reference="Metabolite_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_430">
              <SourceParameter reference="ModelValue_156"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_434">
              <SourceParameter reference="ModelValue_157"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_423">
              <SourceParameter reference="ModelValue_158"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_428">
              <SourceParameter reference="Metabolite_61"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_89" name="v6b" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_89">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:08:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:go:GO:0006114" />
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
          <Substrate metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_171" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4454" name="kv6b_4" value="4.61918e-05"/>
          <Constant key="Parameter_4453" name="kv6b_5" value="0.292627"/>
          <Constant key="Parameter_4452" name="kv6b_x" value="28.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_81">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_431">
              <SourceParameter reference="ModelValue_162"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_437">
              <SourceParameter reference="ModelValue_163"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_435">
              <SourceParameter reference="ModelValue_251"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_426">
              <SourceParameter reference="Metabolite_61"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_90" name="v7" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_90">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:08:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:go:GO:0042866" />
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
          <Substrate metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_77" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4451" name="kv7_1" value="0.00983997"/>
          <Constant key="Parameter_4450" name="kv7_2" value="0.317879"/>
        </ListOfConstants>
        <KineticLaw function="Function_88">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_456">
              <SourceParameter reference="ModelValue_164"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_458">
              <SourceParameter reference="ModelValue_165"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_444">
              <SourceParameter reference="Metabolite_61"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_91" name="v8" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_91">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:09:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:go:GO:0019413" />
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
          <Substrate metabolite="Metabolite_77" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_85" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4449" name="kv8_1" value="0.0135676"/>
          <Constant key="Parameter_4448" name="kv8_2" value="1.50827"/>
        </ListOfConstants>
        <KineticLaw function="Function_89">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_459">
              <SourceParameter reference="ModelValue_166"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_461">
              <SourceParameter reference="ModelValue_167"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_454">
              <SourceParameter reference="Metabolite_77"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_92" name="v9" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_92">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T02:10:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:go:GO:0006115" />
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
          <Substrate metabolite="Metabolite_77" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_93" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4447" name="kv9_1" value="0.214937"/>
          <Constant key="Parameter_4446" name="kv9_2" value="0.923665"/>
        </ListOfConstants>
        <KineticLaw function="Function_90">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_462">
              <SourceParameter reference="ModelValue_168"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_464">
              <SourceParameter reference="ModelValue_169"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_457">
              <SourceParameter reference="Metabolite_77"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_93" name="vVacetate_i" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_93">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:55:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isPartOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:go:GO:0008361" />
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
          <Substrate metabolite="Metabolite_85" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_221" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4445" name="volchangespeed" value="-1.14357e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_78">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_422">
              <SourceParameter reference="Metabolite_85"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_424">
              <SourceParameter reference="Metabolite_221"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_417">
              <SourceParameter reference="ModelValue_231"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_94" name="vVcin" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_94">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:55:25Z</dcterms:W3CDTF>
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
          <Substrate metabolite="Metabolite_167" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_221" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4444" name="volchangespeed" value="-1.14357e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_50">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="Metabolite_221"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Metabolite_167"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="ModelValue_231"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_95" name="vVethanol_i" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_95">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:55:26Z</dcterms:W3CDTF>
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
          <Substrate metabolite="Metabolite_93" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_221" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4443" name="volchangespeed" value="-1.14357e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_52">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_313">
              <SourceParameter reference="Metabolite_221"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="Metabolite_93"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="ModelValue_231"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_96" name="vVF16DP" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_96">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:55:27Z</dcterms:W3CDTF>
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
          <Substrate metabolite="Metabolite_151" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_221" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4442" name="volchangespeed" value="-1.14357e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_53">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="Metabolite_151"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="Metabolite_221"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_319">
              <SourceParameter reference="ModelValue_231"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_97" name="vVG6P" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_97">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:55:28Z</dcterms:W3CDTF>
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
          <Substrate metabolite="Metabolite_159" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_221" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4441" name="volchangespeed" value="-1.14357e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_42">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Metabolite_159"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_221"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="ModelValue_231"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_98" name="vVgluci" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_98">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:55:29Z</dcterms:W3CDTF>
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
          <Substrate metabolite="Metabolite_163" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_221" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4440" name="volchangespeed" value="-1.14357e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_43">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="Metabolite_221"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Metabolite_163"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="ModelValue_231"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_99" name="vVGpd1" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_99">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:55:30Z</dcterms:W3CDTF>
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
          <Substrate metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_221" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4439" name="volchangespeed" value="-1.14357e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_71">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_402">
              <SourceParameter reference="Metabolite_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_390">
              <SourceParameter reference="Metabolite_221"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_398">
              <SourceParameter reference="ModelValue_231"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_100" name="vVgpd1mRNA" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_100">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:55:31Z</dcterms:W3CDTF>
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
          <Substrate metabolite="Metabolite_209" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_221" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4438" name="volchangespeed" value="-1.14357e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_73">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_407">
              <SourceParameter reference="Metabolite_221"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_405">
              <SourceParameter reference="Metabolite_209"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_387">
              <SourceParameter reference="ModelValue_231"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_101" name="vVHog1" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_101">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:55:32Z</dcterms:W3CDTF>
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
          <Substrate metabolite="Metabolite_101" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_221" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4829" name="volchangespeed" value="-1.14357e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_77">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_419">
              <SourceParameter reference="Metabolite_101"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_421">
              <SourceParameter reference="Metabolite_221"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_409">
              <SourceParameter reference="ModelValue_231"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_102" name="vVos" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_102">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:55:33Z</dcterms:W3CDTF>
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
          <Product metabolite="Metabolite_221" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_223" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_171" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_167" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4828" name="CellSurface" value="0.0300572"/>
          <Constant key="Parameter_4817" name="OsmoE" value="0.355586"/>
          <Constant key="Parameter_4818" name="Turgor" value="-1.74"/>
          <Constant key="Parameter_4819" name="vV_1" value="3.56294e-05"/>
          <Constant key="Parameter_4825" name="vV_2" value="0.00116532"/>
          <Constant key="Parameter_4824" name="vV_R" value="8.314"/>
          <Constant key="Parameter_4823" name="vV_T" value="298.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_51">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="ModelValue_223"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="ModelValue_229"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="ModelValue_228"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_320">
              <SourceParameter reference="Metabolite_167"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="Metabolite_223"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="Metabolite_171"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="ModelValue_133"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="ModelValue_134"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="ModelValue_135"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_312">
              <SourceParameter reference="ModelValue_136"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_103" name="vVPfk2627a" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_103">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:55:34Z</dcterms:W3CDTF>
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
          <Substrate metabolite="Metabolite_203" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_221" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4820" name="volchangespeed" value="-1.14357e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_47">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Metabolite_203"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="Metabolite_221"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="ModelValue_231"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_104" name="vVPfk2627i" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_104">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:55:35Z</dcterms:W3CDTF>
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
          <Substrate metabolite="Metabolite_205" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_221" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4821" name="volchangespeed" value="-1.14357e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_55">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_323">
              <SourceParameter reference="Metabolite_205"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_325">
              <SourceParameter reference="Metabolite_221"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_309">
              <SourceParameter reference="ModelValue_231"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_105" name="vVpyruvate" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_105">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:55:35Z</dcterms:W3CDTF>
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
          <Substrate metabolite="Metabolite_77" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_221" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4822" name="volchangespeed" value="-1.14357e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_46">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="Metabolite_221"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="Metabolite_77"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="ModelValue_231"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_106" name="vVStl1" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_106">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:55:36Z</dcterms:W3CDTF>
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
          <Substrate metabolite="Metabolite_213" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_221" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4437" name="volchangespeed" value="-1.14357e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_44">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="Metabolite_213"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Metabolite_221"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_246">
              <SourceParameter reference="ModelValue_231"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_107" name="vVstl1mRNA" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_107">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:55:37Z</dcterms:W3CDTF>
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
          <Substrate metabolite="Metabolite_211" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_221" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4436" name="volchangespeed" value="-1.14357e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_48">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="Metabolite_221"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="Metabolite_211"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="ModelValue_231"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_108" name="vVtrehalose" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_108">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:55:38Z</dcterms:W3CDTF>
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
          <Substrate metabolite="Metabolite_155" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_221" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4435" name="volchangespeed" value="-1.14357e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_72">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_404">
              <SourceParameter reference="Metabolite_221"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_394">
              <SourceParameter reference="Metabolite_155"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_400">
              <SourceParameter reference="ModelValue_231"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_109" name="vVtrioseP" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_109">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:55:38Z</dcterms:W3CDTF>
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
          <Substrate metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_221" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4434" name="volchangespeed" value="-1.14357e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_54">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="Metabolite_221"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="Metabolite_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="ModelValue_231"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_110" name="vVglyci" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_110">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:55:21Z</dcterms:W3CDTF>
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
          <Substrate metabolite="Metabolite_171" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_221" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4433" name="volchangespeed" value="-1.14357e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_82">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_439">
              <SourceParameter reference="Metabolite_221"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_438">
              <SourceParameter reference="Metabolite_171"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_429">
              <SourceParameter reference="ModelValue_231"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_111" name="vVHog1PP" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_111">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-03T01:55:32Z</dcterms:W3CDTF>
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
          <Substrate metabolite="Metabolite_109" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_221" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4432" name="volchangespeed" value="-1.14357e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_83">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_440">
              <SourceParameter reference="Metabolite_109"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_442">
              <SourceParameter reference="Metabolite_221"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_436">
              <SourceParameter reference="ModelValue_231"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[intra]" value="0.00025" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[extra]" value="0.5" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[intra],Vector=Metabolites[glycerol_i]" value="8.568303338812007e+18" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[intra],Vector=Metabolites[cin]" value="8.037587038213775e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[intra],Vector=Metabolites[glucose_i]" value="1.9749011786126e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[intra],Vector=Metabolites[G6P]" value="2.263632766734149e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[intra],Vector=Metabolites[trehalose]" value="4.71920624767007e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[intra],Vector=Metabolites[F16DP]" value="4.15061067521275e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[intra],Vector=Metabolites[F26DP]" value="2551295424687975" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[intra],Vector=Metabolites[trioseP]" value="1.57162845364525e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[intra],Vector=Metabolites[Gpd1]" value="3.7345107882327e+18" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[intra],Vector=Metabolites[pyruvate]" value="1.117048586162547e+18" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[intra],Vector=Metabolites[acetate_i]" value="8.060335678825513e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[intra],Vector=Metabolites[ethanol_i]" value="1.004964483167068e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[intra],Vector=Metabolites[Hog1]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[intra],Vector=Metabolites[Hog1PP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[intra],Vector=Metabolites[Pfk2627a]" value="1.381946042614725e+18" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[intra],Vector=Metabolites[Pfk2627i]" value="7.401347758100275e+18" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[intra],Vector=Metabolites[AOG]" value="3.251309186357575e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[intra],Vector=Metabolites[gpd1mRNA]" value="5.270412885708782e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[intra],Vector=Metabolites[stl1mRNA]" value="4.87423123269915e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[intra],Vector=Metabolites[Stl1]" value="1.371688829610907e+18" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[intra],Vector=Metabolites[AOGi]" value="2.78798065238945e+18" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[intra],Vector=Metabolites[Fps1r]" value="2.013066502206725e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[intra],Vector=Metabolites[biomass]" value="1.068779614180249e+21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[intra],Vector=Metabolites[cellvol]" value="3.763838618749999e+16" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[extra],Vector=Metabolites[glycerol_e]" value="8.352409555640501e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[extra],Vector=Metabolites[glucose_e]" value="3.49979781196745e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[extra],Vector=Metabolites[acetate_e]" value="7.4826316169108e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[extra],Vector=Metabolites[ethanol_e]" value="1.12294275743951e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Compartments[extra],Vector=Metabolites[trehalose_e]" value="5.4451001636822e+19" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[cellvol_init]" value="0.000240000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv19f_1]" value="0.299127" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv19r_1]" value="0.0605655" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv17f_1]" value="0.000411446" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv17f_3]" value="0.421394" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv17f_6]" value="7.857670000000001e-09" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[parameter_97]" value="0.8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[vV_1]" value="3.56294e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[vV_2]" value="0.00116532" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[vV_R]" value="8.314" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[vV_T]" value="298.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[t_stress]" value="3600" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv1_1]" value="5.05249e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv1_2]" value="0.899814" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[initcellnum]" value="6954722.464" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv2_1]" value="0.00303855" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv2_2]" value="0.40864" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv3_1]" value="6.17387e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv3_2]" value="0.81114" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv3_3]" value="0.000737808" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv3_4]" value="0.166996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv4_1]" value="0.0628885" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv4_2]" value="0.00230714" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv4_3]" value="0.00171631" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv4_4]" value="2.67143" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv4_5]" value="0.583865" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv5_1]" value="0.00383315" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv5_2]" value="1.74463" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv5_3]" value="0.00656128" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv5_4]" value="1.13994" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv6_1]" value="0.0118992" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv6_2]" value="0.230864" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv6_3]" value="1.76504" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv6b_1]" value="0.859104" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv6b_2]" value="0.0307535" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv6b_3]" value="1.20045" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv6b_4]" value="4.61918e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv6b_5]" value="0.292627" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv7_1]" value="0.00983997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv7_2]" value="0.317879" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv8_1]" value="0.0135676" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv8_2]" value="1.50827" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv9_1]" value="0.214937" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv9_2]" value="0.923665" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv16f_1]" value="0.156118" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv16f_2]" value="0.000452424" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv16f_3]" value="14.9448" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv16r_1]" value="0.588072" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv15f_1]" value="4.99507e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv15f_2]" value="6.95877" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv15r_1]" value="1.84829e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv15r_2]" value="3.3187e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv17f_2]" value="0.547886" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv17f_4]" value="6.86959e-10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv17f_5]" value="18.9989" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv17r_1]" value="0.00151498" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv18f_1]" value="0.00646553" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv18r_1]" value="0.000132549" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv20f_1]" value="9.81887e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv20f_2]" value="0.0167845" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv20f_3]" value="4.05843e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv20f_x]" value="1.55858" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv20r_1]" value="0.000705933" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv21f_1]" value="0.00121673" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv21r_1]" value="0.000214247" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv23f_1]" value="8.80535e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv23f_2]" value="0.00051235" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv23f_3]" value="6.95727" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv23r_1]" value="0.000209875" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv22_1]" value="8.0075" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv22_2]" value="0.0215179" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv22_3]" value="0.0554729" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv14_1]" value="0.808051" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv14_2]" value="6.05922e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv14_3]" value="2.05157" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv14_4]" value="0.420621" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv14_5]" value="1.23049" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv10_1]" value="1.83291e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv10_2]" value="4.26512" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv11_1]" value="3.2863e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv11_2]" value="1.17279" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv12_1]" value="1.00927e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv12_2]" value="0.148586" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv13a_1]" value="6.28899e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv13b_1]" value="1.27001e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv13b_2]" value="3.69196e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kx1]" value="1.97771" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kx2]" value="5.37171" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv22_4_Hog1A]" value="1.25187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[v]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv22_Hog1D_t]" value="5536" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv22_Hog1D_fT]" value="0.0256901" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv22_Hog1D_d]" value="0.000294357" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[v15f_v]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[v15r_v]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[v19r_v]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[Vm]" value="0.00049" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[CellSurface]" value="0.03005717624171006" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[v13aspeed]" value="1.368356403126245e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[v12speed]" value="2.008144413514095e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[v11speed]" value="5.259529744107521e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[v10speed]" value="1.301982075372273e-11" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[Turgor]" value="-1.739999999999996" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[OsmoE]" value="0.355586" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[input]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[volchangespeed]" value="-1.143566259992858e-06" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[relVM]" value="1.020833333333333" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[OD]" value="0.595608" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[cellnum]" value="11154327.21154661" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[v1speed]" value="5.779822401468438e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[v13bspeed]" value="1.156948315357599e-09" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv16r_1VARIABLE]" value="0.444296" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[glycerol_measured]" value="0.05928333333333312" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[Hog1PP_measured]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[Gpd1_measured]" value="0.02583874999999989" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[gpd1mRNA_measured]" value="0.003646552083333322" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[glucose_measured]" value="1.366416666666661" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[pyruvate_measured]" value="0.007728760416666629" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[acetate_measured]" value="0.5576874999999984" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[ethanol_measured]" value="0.695326041666664" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[trehalose_measured]" value="0.003265177083333316" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[F16DP_measured]" value="0.287177083333332" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[quantity]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[trioseP_measured]" value="0.1087395833333329" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[stl1mRNA_measured]" value="0.003372437499999985" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv6b_x]" value="28.5" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v1],ParameterGroup=Parameters,Parameter=kv1_1" value="5.05249e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv1_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v1],ParameterGroup=Parameters,Parameter=kv1_2" value="0.899814" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv1_2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v10]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v10],ParameterGroup=Parameters,Parameter=CellSurface" value="0.03005717624171006" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[CellSurface],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v10],ParameterGroup=Parameters,Parameter=kv10_1" value="1.83291e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv10_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v10],ParameterGroup=Parameters,Parameter=kv10_2" value="4.26512" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv10_2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v10Batch]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v10Batch],ParameterGroup=Parameters,Parameter=cellnum" value="11154327.21154661" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[cellnum],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v10Batch],ParameterGroup=Parameters,Parameter=initcellnum" value="6954722.464" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[initcellnum],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v10Batch],ParameterGroup=Parameters,Parameter=v10speed" value="1.301982075372273e-11" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[v10speed],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v11]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v11],ParameterGroup=Parameters,Parameter=CellSurface" value="0.03005717624171006" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[CellSurface],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v11],ParameterGroup=Parameters,Parameter=kv11_1" value="3.2863e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv11_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v11],ParameterGroup=Parameters,Parameter=kv11_2" value="1.17279" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv11_2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v11Batch]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v11Batch],ParameterGroup=Parameters,Parameter=cellnum" value="11154327.21154661" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[cellnum],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v11Batch],ParameterGroup=Parameters,Parameter=initcellnum" value="6954722.464" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[initcellnum],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v11Batch],ParameterGroup=Parameters,Parameter=v11speed" value="5.259529744107521e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[v11speed],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v12]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v12],ParameterGroup=Parameters,Parameter=CellSurface" value="0.03005717624171006" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[CellSurface],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v12],ParameterGroup=Parameters,Parameter=kv12_1" value="1.00927e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv12_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v12],ParameterGroup=Parameters,Parameter=kv12_2" value="0.148586" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv12_2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v12Batch]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v12Batch],ParameterGroup=Parameters,Parameter=cellnum" value="11154327.21154661" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[cellnum],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v12Batch],ParameterGroup=Parameters,Parameter=initcellnum" value="6954722.464" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[initcellnum],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v12Batch],ParameterGroup=Parameters,Parameter=v12speed" value="2.008144413514095e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[v12speed],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v13a]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v13a],ParameterGroup=Parameters,Parameter=kDiff" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v13a],ParameterGroup=Parameters,Parameter=CellSurface" value="0.03005717624171006" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[CellSurface],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v13a],ParameterGroup=Parameters,Parameter=kv13a_1" value="6.28899e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv13a_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v13aBatch]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v13aBatch],ParameterGroup=Parameters,Parameter=cellnum" value="11154327.21154661" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[cellnum],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v13aBatch],ParameterGroup=Parameters,Parameter=initcellnum" value="6954722.464" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[initcellnum],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v13aBatch],ParameterGroup=Parameters,Parameter=v13aspeed" value="1.368356403126245e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[v13aspeed],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v13b]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v13b],ParameterGroup=Parameters,Parameter=kv13b_1" value="1.27001e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv13b_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v13b],ParameterGroup=Parameters,Parameter=kv13b_2" value="3.69196e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv13b_2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v13bBatch]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v13bBatch],ParameterGroup=Parameters,Parameter=cellnum" value="11154327.21154661" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[cellnum],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v13bBatch],ParameterGroup=Parameters,Parameter=initcellnum" value="6954722.464" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[initcellnum],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v13bBatch],ParameterGroup=Parameters,Parameter=v13bspeed" value="1.156948315357599e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[v13bspeed],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v14]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v14],ParameterGroup=Parameters,Parameter=OsmoE" value="0.355586" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[OsmoE],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v14],ParameterGroup=Parameters,Parameter=kv14_1" value="0.808051" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv14_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v14],ParameterGroup=Parameters,Parameter=kv14_2" value="6.05922e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv14_2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v14],ParameterGroup=Parameters,Parameter=kv14_3" value="2.05157" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv14_3],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v14],ParameterGroup=Parameters,Parameter=kv14_4" value="0.420621" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv14_4],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v14],ParameterGroup=Parameters,Parameter=kv14_5" value="1.23049" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv14_5],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v15f]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v15f],ParameterGroup=Parameters,Parameter=kv15f_1" value="4.99507e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv15f_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v15f],ParameterGroup=Parameters,Parameter=kv15f_2" value="6.95877" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv15f_2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v15r]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v15r],ParameterGroup=Parameters,Parameter=kv15r_1" value="1.84829e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv15r_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v15r],ParameterGroup=Parameters,Parameter=kv15r_2" value="3.3187e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv15r_2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v17f]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v17f],ParameterGroup=Parameters,Parameter=kv17f_1" value="0.000411446" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv17f_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v17f],ParameterGroup=Parameters,Parameter=kv17f_2" value="0.547886" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv17f_2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v17f],ParameterGroup=Parameters,Parameter=kv17f_3" value="0.421394" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv17f_3],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v17f],ParameterGroup=Parameters,Parameter=kv17f_4" value="6.86959e-10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv17f_4],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v17f],ParameterGroup=Parameters,Parameter=kv17f_6" value="7.857670000000001e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv17f_6],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v17f],ParameterGroup=Parameters,Parameter=kx1" value="1.97771" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kx1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v17f],ParameterGroup=Parameters,Parameter=kx2" value="5.37171" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kx2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v17r]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v17r],ParameterGroup=Parameters,Parameter=k1" value="0.00151498" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv17r_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v18f]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v18f],ParameterGroup=Parameters,Parameter=kv18f_1" value="0.00646553" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv18f_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v18r]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v18r],ParameterGroup=Parameters,Parameter=k1" value="0.000132549" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv18r_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v1Batch]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v1Batch],ParameterGroup=Parameters,Parameter=cellnum" value="11154327.21154661" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[cellnum],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v1Batch],ParameterGroup=Parameters,Parameter=initcellnum" value="6954722.464" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[initcellnum],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v1Batch],ParameterGroup=Parameters,Parameter=v1speed" value="5.779822401468438e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[v1speed],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v2],ParameterGroup=Parameters,Parameter=kv2_1" value="0.00303855" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv2_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v2],ParameterGroup=Parameters,Parameter=kv2_2" value="0.40864" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv2_2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v20f]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v20f],ParameterGroup=Parameters,Parameter=kv20f_1" value="9.81887e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv20f_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v20f],ParameterGroup=Parameters,Parameter=kv20f_2" value="0.0167845" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv20f_2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v20f],ParameterGroup=Parameters,Parameter=kv20f_3" value="4.05843e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv20f_3],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v20f],ParameterGroup=Parameters,Parameter=kv20f_x" value="1.55858" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv20f_x],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v20r]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v20r],ParameterGroup=Parameters,Parameter=k1" value="0.000705933" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv20r_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v21f]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v21f],ParameterGroup=Parameters,Parameter=kv21f_1" value="0.00121673" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv21f_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v21r]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v21r],ParameterGroup=Parameters,Parameter=k1" value="0.000214247" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv21r_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v22]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v22],ParameterGroup=Parameters,Parameter=Turgor" value="-1.739999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[Turgor],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v22],ParameterGroup=Parameters,Parameter=kv22_1" value="8.0075" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv22_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v22],ParameterGroup=Parameters,Parameter=kv22_3" value="0.0554729" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv22_3],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v22],ParameterGroup=Parameters,Parameter=kv22_Hog1D_d" value="0.000294357" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv22_Hog1D_d],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v22],ParameterGroup=Parameters,Parameter=kv22_Hog1D_fT" value="0.0256901" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv22_Hog1D_fT],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v22],ParameterGroup=Parameters,Parameter=kv22_Hog1D_t" value="5536" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv22_Hog1D_t],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v23f]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v23f],ParameterGroup=Parameters,Parameter=Vm" value="0.00049" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[Vm],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v23f],ParameterGroup=Parameters,Parameter=kv23f_1" value="8.80535e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv23f_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v23f],ParameterGroup=Parameters,Parameter=kv23f_2" value="0.00051235" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv23f_2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v23f],ParameterGroup=Parameters,Parameter=kv23f_3" value="6.95727" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv23f_3],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v23r]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v23r],ParameterGroup=Parameters,Parameter=k1" value="0.000209875" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv23r_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v3],ParameterGroup=Parameters,Parameter=kv3_1" value="6.17387e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv3_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v3],ParameterGroup=Parameters,Parameter=kv3_2" value="0.81114" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv3_2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v3],ParameterGroup=Parameters,Parameter=kv3_3" value="0.000737808" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv3_3],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v3],ParameterGroup=Parameters,Parameter=kv3_4" value="0.166996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv3_4],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v4],ParameterGroup=Parameters,Parameter=kv4_1" value="0.0628885" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv4_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v4],ParameterGroup=Parameters,Parameter=kv4_2" value="0.00230714" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv4_2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v4],ParameterGroup=Parameters,Parameter=kv4_3" value="0.00171631" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv4_3],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v4],ParameterGroup=Parameters,Parameter=kv4_4" value="2.67143" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv4_4],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v4],ParameterGroup=Parameters,Parameter=kv4_5" value="0.583865" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv4_5],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v5]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v5],ParameterGroup=Parameters,Parameter=kv5_1" value="0.00383315" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv5_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v5],ParameterGroup=Parameters,Parameter=kv5_2" value="1.74463" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv5_2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v5],ParameterGroup=Parameters,Parameter=kv5_3" value="0.00656128" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv5_3],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v5],ParameterGroup=Parameters,Parameter=kv5_4" value="1.13994" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv5_4],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v6]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v6],ParameterGroup=Parameters,Parameter=kv6_1" value="0.0118992" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv6_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v6],ParameterGroup=Parameters,Parameter=kv6_2" value="0.230864" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv6_2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v6],ParameterGroup=Parameters,Parameter=kv6_3" value="1.76504" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv6_3],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v6b]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v6b],ParameterGroup=Parameters,Parameter=kv6b_4" value="4.61918e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv6b_4],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v6b],ParameterGroup=Parameters,Parameter=kv6b_5" value="0.292627" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv6b_5],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v6b],ParameterGroup=Parameters,Parameter=kv6b_x" value="28.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv6b_x],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v7]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v7],ParameterGroup=Parameters,Parameter=kv7_1" value="0.00983997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv7_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v7],ParameterGroup=Parameters,Parameter=kv7_2" value="0.317879" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv7_2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v8]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v8],ParameterGroup=Parameters,Parameter=kv8_1" value="0.0135676" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv8_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v8],ParameterGroup=Parameters,Parameter=kv8_2" value="1.50827" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv8_2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v9]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v9],ParameterGroup=Parameters,Parameter=kv9_1" value="0.214937" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv9_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[v9],ParameterGroup=Parameters,Parameter=kv9_2" value="0.923665" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[kv9_2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[vVacetate_i]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[vVacetate_i],ParameterGroup=Parameters,Parameter=volchangespeed" value="-1.143566259992858e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[volchangespeed],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[vVcin]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[vVcin],ParameterGroup=Parameters,Parameter=volchangespeed" value="-1.143566259992858e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[volchangespeed],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[vVethanol_i]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[vVethanol_i],ParameterGroup=Parameters,Parameter=volchangespeed" value="-1.143566259992858e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[volchangespeed],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[vVF16DP]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[vVF16DP],ParameterGroup=Parameters,Parameter=volchangespeed" value="-1.143566259992858e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[volchangespeed],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[vVG6P]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[vVG6P],ParameterGroup=Parameters,Parameter=volchangespeed" value="-1.143566259992858e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[volchangespeed],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[vVgluci]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[vVgluci],ParameterGroup=Parameters,Parameter=volchangespeed" value="-1.143566259992858e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[volchangespeed],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[vVGpd1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[vVGpd1],ParameterGroup=Parameters,Parameter=volchangespeed" value="-1.143566259992858e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[volchangespeed],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[vVgpd1mRNA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[vVgpd1mRNA],ParameterGroup=Parameters,Parameter=volchangespeed" value="-1.143566259992858e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[volchangespeed],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[vVHog1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[vVHog1],ParameterGroup=Parameters,Parameter=volchangespeed" value="-1.143566259992858e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[volchangespeed],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[vVos]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[vVos],ParameterGroup=Parameters,Parameter=CellSurface" value="0.03005717624171006" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[CellSurface],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[vVos],ParameterGroup=Parameters,Parameter=OsmoE" value="0.355586" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[OsmoE],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[vVos],ParameterGroup=Parameters,Parameter=Turgor" value="-1.739999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[Turgor],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[vVos],ParameterGroup=Parameters,Parameter=vV_1" value="3.56294e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[vV_1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[vVos],ParameterGroup=Parameters,Parameter=vV_2" value="0.00116532" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[vV_2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[vVos],ParameterGroup=Parameters,Parameter=vV_R" value="8.314" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[vV_R],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[vVos],ParameterGroup=Parameters,Parameter=vV_T" value="298.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[vV_T],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[vVPfk2627a]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[vVPfk2627a],ParameterGroup=Parameters,Parameter=volchangespeed" value="-1.143566259992858e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[volchangespeed],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[vVPfk2627i]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[vVPfk2627i],ParameterGroup=Parameters,Parameter=volchangespeed" value="-1.143566259992858e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[volchangespeed],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[vVpyruvate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[vVpyruvate],ParameterGroup=Parameters,Parameter=volchangespeed" value="-1.143566259992858e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[volchangespeed],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[vVStl1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[vVStl1],ParameterGroup=Parameters,Parameter=volchangespeed" value="-1.143566259992858e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[volchangespeed],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[vVstl1mRNA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[vVstl1mRNA],ParameterGroup=Parameters,Parameter=volchangespeed" value="-1.143566259992858e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[volchangespeed],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[vVtrehalose]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[vVtrehalose],ParameterGroup=Parameters,Parameter=volchangespeed" value="-1.143566259992858e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[volchangespeed],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[vVtrioseP]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[vVtrioseP],ParameterGroup=Parameters,Parameter=volchangespeed" value="-1.143566259992858e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[volchangespeed],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[vVglyci]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[vVglyci],ParameterGroup=Parameters,Parameter=volchangespeed" value="-1.143566259992858e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[volchangespeed],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[vVHog1PP]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Reactions[vVHog1PP],ParameterGroup=Parameters,Parameter=volchangespeed" value="-1.143566259992858e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[volchangespeed],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_8"/>
      <StateTemplateVariable objectReference="Metabolite_159"/>
      <StateTemplateVariable objectReference="Metabolite_61"/>
      <StateTemplateVariable objectReference="Metabolite_171"/>
      <StateTemplateVariable objectReference="Metabolite_77"/>
      <StateTemplateVariable objectReference="Metabolite_223"/>
      <StateTemplateVariable objectReference="Metabolite_69"/>
      <StateTemplateVariable objectReference="Metabolite_209"/>
      <StateTemplateVariable objectReference="Metabolite_211"/>
      <StateTemplateVariable objectReference="Metabolite_213"/>
      <StateTemplateVariable objectReference="Metabolite_163"/>
      <StateTemplateVariable objectReference="Metabolite_85"/>
      <StateTemplateVariable objectReference="Metabolite_93"/>
      <StateTemplateVariable objectReference="Metabolite_155"/>
      <StateTemplateVariable objectReference="Metabolite_151"/>
      <StateTemplateVariable objectReference="Metabolite_207"/>
      <StateTemplateVariable objectReference="Metabolite_225"/>
      <StateTemplateVariable objectReference="Metabolite_227"/>
      <StateTemplateVariable objectReference="Metabolite_229"/>
      <StateTemplateVariable objectReference="Metabolite_231"/>
      <StateTemplateVariable objectReference="Metabolite_147"/>
      <StateTemplateVariable objectReference="Metabolite_217"/>
      <StateTemplateVariable objectReference="Metabolite_221"/>
      <StateTemplateVariable objectReference="Metabolite_101"/>
      <StateTemplateVariable objectReference="Metabolite_205"/>
      <StateTemplateVariable objectReference="Metabolite_203"/>
      <StateTemplateVariable objectReference="Metabolite_109"/>
      <StateTemplateVariable objectReference="Metabolite_167"/>
      <StateTemplateVariable objectReference="Metabolite_219"/>
      <StateTemplateVariable objectReference="Metabolite_215"/>
      <StateTemplateVariable objectReference="ModelValue_222"/>
      <StateTemplateVariable objectReference="ModelValue_223"/>
      <StateTemplateVariable objectReference="ModelValue_224"/>
      <StateTemplateVariable objectReference="ModelValue_225"/>
      <StateTemplateVariable objectReference="ModelValue_226"/>
      <StateTemplateVariable objectReference="ModelValue_227"/>
      <StateTemplateVariable objectReference="ModelValue_228"/>
      <StateTemplateVariable objectReference="ModelValue_229"/>
      <StateTemplateVariable objectReference="ModelValue_230"/>
      <StateTemplateVariable objectReference="ModelValue_231"/>
      <StateTemplateVariable objectReference="ModelValue_233"/>
      <StateTemplateVariable objectReference="ModelValue_234"/>
      <StateTemplateVariable objectReference="ModelValue_235"/>
      <StateTemplateVariable objectReference="ModelValue_236"/>
      <StateTemplateVariable objectReference="ModelValue_232"/>
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
      <StateTemplateVariable objectReference="ModelValue_249"/>
      <StateTemplateVariable objectReference="ModelValue_250"/>
      <StateTemplateVariable objectReference="Compartment_5"/>
      <StateTemplateVariable objectReference="Compartment_15"/>
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
      <StateTemplateVariable objectReference="ModelValue_187"/>
      <StateTemplateVariable objectReference="ModelValue_188"/>
      <StateTemplateVariable objectReference="ModelValue_189"/>
      <StateTemplateVariable objectReference="ModelValue_190"/>
      <StateTemplateVariable objectReference="ModelValue_191"/>
      <StateTemplateVariable objectReference="ModelValue_192"/>
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
      <StateTemplateVariable objectReference="ModelValue_213"/>
      <StateTemplateVariable objectReference="ModelValue_214"/>
      <StateTemplateVariable objectReference="ModelValue_215"/>
      <StateTemplateVariable objectReference="ModelValue_216"/>
      <StateTemplateVariable objectReference="ModelValue_217"/>
      <StateTemplateVariable objectReference="ModelValue_218"/>
      <StateTemplateVariable objectReference="ModelValue_219"/>
      <StateTemplateVariable objectReference="ModelValue_220"/>
      <StateTemplateVariable objectReference="ModelValue_221"/>
      <StateTemplateVariable objectReference="ModelValue_248"/>
      <StateTemplateVariable objectReference="ModelValue_251"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 2.263632766734149e+20 1.57162845364525e+19 8.568303338812007e+18 1.117048586162547e+18 8.352409555640501e+20 3.7345107882327e+18 5.270412885708782e+17 4.87423123269915e+17 1.371688829610907e+18 1.9749011786126e+20 8.060335678825513e+19 1.004964483167068e+20 4.71920624767007e+17 4.15061067521275e+19 3.251309186357575e+17 3.49979781196745e+22 7.4826316169108e+20 1.12294275743951e+22 5.4451001636822e+19 2551295424687975 2.013066502206725e+20 3.763838618749999e+16 0 7.401347758100275e+18 1.381946042614725e+18 0 8.037587038213775e+19 1.068779614180249e+21 2.78798065238945e+18 0.00049 0.03005717624171006 1.368356403126245e-08 2.008144413514095e-07 5.259529744107521e-08 1.301982075372273e-11 -1.739999999999996 0.355586 0 -1.143566259992858e-06 0.595608 11154327.21154661 5.779822401468438e-07 1.156948315357599e-09 1.020833333333333 0.444296 0.05928333333333312 0 0.02583874999999989 0.003646552083333322 1.366416666666661 0.007728760416666629 0.5576874999999984 0.695326041666664 0.003265177083333316 0.287177083333332 0.1087395833333329 0.003372437499999985 0.00025 0.5 0.000240000000000001 0.299127 0.0605655 0.000411446 0.421394 7.857670000000001e-09 0.8 3.56294e-05 0.00116532 8.314 298.5 3600 5.05249e-06 0.899814 6954722.464 0.00303855 0.40864 6.17387e-06 0.81114 0.000737808 0.166996 0.0628885 0.00230714 0.00171631 2.67143 0.583865 0.00383315 1.74463 0.00656128 1.13994 0.0118992 0.230864 1.76504 0.859104 0.0307535 1.20045 4.61918e-05 0.292627 0.00983997 0.317879 0.0135676 1.50827 0.214937 0.923665 0.156118 0.000452424 14.9448 0.588072 4.99507e-05 6.95877 1.84829e-07 3.3187e-05 0.547886 6.86959e-10 18.9989 0.00151498 0.00646553 0.000132549 9.81887e-05 0.0167845 4.05843e-06 1.55858 0.000705933 0.00121673 0.000214247 8.80535e-06 0.00051235 6.95727 0.000209875 8.0075 0.0215179 0.0554729 0.808051 6.05922e-06 2.05157 0.420621 1.23049 1.83291e-07 4.26512 3.2863e-06 1.17279 1.00927e-05 0.148586 6.28899e-06 1.27001e-07 3.69196e-07 1.97771 5.37171 1.25187 1 5536 0.0256901 0.000294357 1 1 1 0 28.5 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_0" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
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
        <Parameter name="StepNumber" type="unsignedInteger" value="1000"/>
        <Parameter name="StepSize" type="float" value="16.2"/>
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
        <Parameter name="Steady-State" type="key" value="Task_0"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1e-09"/>
        <Parameter name="Use Reeder" type="bool" value="1"/>
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
    <Task key="Task_12" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_0" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_0"/>
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
    <PlotSpecification name="Figure S12F" type="Plot2D" active="1">
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
            <ChannelSpec cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[Hog1PP_measured],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PetelenzKuehn_osmoadaptation_hog1D,Vector=Values[glycerol_measured],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="10.1371_journal.pcbi.1003663.s001.XML">
    <SBMLMap SBMLid="AOG" COPASIkey="Metabolite_207"/>
    <SBMLMap SBMLid="AOGi" COPASIkey="Metabolite_215"/>
    <SBMLMap SBMLid="CellSurface" COPASIkey="ModelValue_223"/>
    <SBMLMap SBMLid="F16DP" COPASIkey="Metabolite_151"/>
    <SBMLMap SBMLid="F16DP_measured" COPASIkey="ModelValue_247"/>
    <SBMLMap SBMLid="F26DP" COPASIkey="Metabolite_147"/>
    <SBMLMap SBMLid="Fps1r" COPASIkey="Metabolite_217"/>
    <SBMLMap SBMLid="G6P" COPASIkey="Metabolite_159"/>
    <SBMLMap SBMLid="Gpd1" COPASIkey="Metabolite_69"/>
    <SBMLMap SBMLid="Gpd1_measured" COPASIkey="ModelValue_240"/>
    <SBMLMap SBMLid="Henri_Michaelis_Menten__irreversible__1" COPASIkey="Function_79"/>
    <SBMLMap SBMLid="Henri_Michaelis_Menten__irreversible__2" COPASIkey="Function_86"/>
    <SBMLMap SBMLid="Henri_Michaelis_Menten__irreversible__3" COPASIkey="Function_87"/>
    <SBMLMap SBMLid="Henri_Michaelis_Menten__irreversible__4" COPASIkey="Function_88"/>
    <SBMLMap SBMLid="Henri_Michaelis_Menten__irreversible__5" COPASIkey="Function_89"/>
    <SBMLMap SBMLid="Henri_Michaelis_Menten__irreversible__6" COPASIkey="Function_90"/>
    <SBMLMap SBMLid="Hog1" COPASIkey="Metabolite_101"/>
    <SBMLMap SBMLid="Hog1PP" COPASIkey="Metabolite_109"/>
    <SBMLMap SBMLid="Hog1PP_measured" COPASIkey="ModelValue_239"/>
    <SBMLMap SBMLid="OD" COPASIkey="ModelValue_233"/>
    <SBMLMap SBMLid="OsmoE" COPASIkey="ModelValue_229"/>
    <SBMLMap SBMLid="Pfk2627a" COPASIkey="Metabolite_203"/>
    <SBMLMap SBMLid="Pfk2627i" COPASIkey="Metabolite_205"/>
    <SBMLMap SBMLid="Stl1" COPASIkey="Metabolite_213"/>
    <SBMLMap SBMLid="Turgor" COPASIkey="ModelValue_228"/>
    <SBMLMap SBMLid="Vm" COPASIkey="ModelValue_222"/>
    <SBMLMap SBMLid="acetate_e" COPASIkey="Metabolite_227"/>
    <SBMLMap SBMLid="acetate_i" COPASIkey="Metabolite_85"/>
    <SBMLMap SBMLid="acetate_measured" COPASIkey="ModelValue_244"/>
    <SBMLMap SBMLid="biomass" COPASIkey="Metabolite_219"/>
    <SBMLMap SBMLid="cellnum" COPASIkey="ModelValue_234"/>
    <SBMLMap SBMLid="cellvol" COPASIkey="Metabolite_221"/>
    <SBMLMap SBMLid="cellvol_init" COPASIkey="ModelValue_126"/>
    <SBMLMap SBMLid="cin" COPASIkey="Metabolite_167"/>
    <SBMLMap SBMLid="ethanol_e" COPASIkey="Metabolite_229"/>
    <SBMLMap SBMLid="ethanol_i" COPASIkey="Metabolite_93"/>
    <SBMLMap SBMLid="ethanol_measured" COPASIkey="ModelValue_245"/>
    <SBMLMap SBMLid="extra" COPASIkey="Compartment_15"/>
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
    <SBMLMap SBMLid="function_4_v17f_1" COPASIkey="Function_58"/>
    <SBMLMap SBMLid="function_4_v18f_1" COPASIkey="Function_59"/>
    <SBMLMap SBMLid="function_4_v1Batch_1" COPASIkey="Function_49"/>
    <SBMLMap SBMLid="function_4_v20f_1" COPASIkey="Function_61"/>
    <SBMLMap SBMLid="function_4_v21f_1" COPASIkey="Function_63"/>
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
    <SBMLMap SBMLid="glucose_e" COPASIkey="Metabolite_225"/>
    <SBMLMap SBMLid="glucose_i" COPASIkey="Metabolite_163"/>
    <SBMLMap SBMLid="glucose_measured" COPASIkey="ModelValue_242"/>
    <SBMLMap SBMLid="glycerol_e" COPASIkey="Metabolite_223"/>
    <SBMLMap SBMLid="glycerol_i" COPASIkey="Metabolite_171"/>
    <SBMLMap SBMLid="glycerol_measured" COPASIkey="ModelValue_238"/>
    <SBMLMap SBMLid="gpd1mRNA" COPASIkey="Metabolite_209"/>
    <SBMLMap SBMLid="gpd1mRNA_measured" COPASIkey="ModelValue_241"/>
    <SBMLMap SBMLid="initcellnum" COPASIkey="ModelValue_140"/>
    <SBMLMap SBMLid="input" COPASIkey="ModelValue_230"/>
    <SBMLMap SBMLid="intra" COPASIkey="Compartment_5"/>
    <SBMLMap SBMLid="kv10_1" COPASIkey="ModelValue_203"/>
    <SBMLMap SBMLid="kv10_2" COPASIkey="ModelValue_204"/>
    <SBMLMap SBMLid="kv11_1" COPASIkey="ModelValue_205"/>
    <SBMLMap SBMLid="kv11_2" COPASIkey="ModelValue_206"/>
    <SBMLMap SBMLid="kv12_1" COPASIkey="ModelValue_207"/>
    <SBMLMap SBMLid="kv12_2" COPASIkey="ModelValue_208"/>
    <SBMLMap SBMLid="kv13a_1" COPASIkey="ModelValue_209"/>
    <SBMLMap SBMLid="kv13b_1" COPASIkey="ModelValue_210"/>
    <SBMLMap SBMLid="kv13b_2" COPASIkey="ModelValue_211"/>
    <SBMLMap SBMLid="kv14_1" COPASIkey="ModelValue_198"/>
    <SBMLMap SBMLid="kv14_2" COPASIkey="ModelValue_199"/>
    <SBMLMap SBMLid="kv14_3" COPASIkey="ModelValue_200"/>
    <SBMLMap SBMLid="kv14_4" COPASIkey="ModelValue_201"/>
    <SBMLMap SBMLid="kv14_5" COPASIkey="ModelValue_202"/>
    <SBMLMap SBMLid="kv15f_1" COPASIkey="ModelValue_174"/>
    <SBMLMap SBMLid="kv15f_2" COPASIkey="ModelValue_175"/>
    <SBMLMap SBMLid="kv15r_1" COPASIkey="ModelValue_176"/>
    <SBMLMap SBMLid="kv15r_2" COPASIkey="ModelValue_177"/>
    <SBMLMap SBMLid="kv16f_1" COPASIkey="ModelValue_170"/>
    <SBMLMap SBMLid="kv16f_2" COPASIkey="ModelValue_171"/>
    <SBMLMap SBMLid="kv16f_3" COPASIkey="ModelValue_172"/>
    <SBMLMap SBMLid="kv16r_1" COPASIkey="ModelValue_173"/>
    <SBMLMap SBMLid="kv16r_1VARIABLE" COPASIkey="ModelValue_237"/>
    <SBMLMap SBMLid="kv17f_1" COPASIkey="ModelValue_129"/>
    <SBMLMap SBMLid="kv17f_2" COPASIkey="ModelValue_178"/>
    <SBMLMap SBMLid="kv17f_3" COPASIkey="ModelValue_130"/>
    <SBMLMap SBMLid="kv17f_4" COPASIkey="ModelValue_179"/>
    <SBMLMap SBMLid="kv17f_5" COPASIkey="ModelValue_180"/>
    <SBMLMap SBMLid="kv17f_6" COPASIkey="ModelValue_131"/>
    <SBMLMap SBMLid="kv17r_1" COPASIkey="ModelValue_181"/>
    <SBMLMap SBMLid="kv18f_1" COPASIkey="ModelValue_182"/>
    <SBMLMap SBMLid="kv18r_1" COPASIkey="ModelValue_183"/>
    <SBMLMap SBMLid="kv19f_1" COPASIkey="ModelValue_127"/>
    <SBMLMap SBMLid="kv19r_1" COPASIkey="ModelValue_128"/>
    <SBMLMap SBMLid="kv1_1" COPASIkey="ModelValue_138"/>
    <SBMLMap SBMLid="kv1_2" COPASIkey="ModelValue_139"/>
    <SBMLMap SBMLid="kv20f_1" COPASIkey="ModelValue_184"/>
    <SBMLMap SBMLid="kv20f_2" COPASIkey="ModelValue_185"/>
    <SBMLMap SBMLid="kv20f_3" COPASIkey="ModelValue_186"/>
    <SBMLMap SBMLid="kv20f_x" COPASIkey="ModelValue_187"/>
    <SBMLMap SBMLid="kv20r_1" COPASIkey="ModelValue_188"/>
    <SBMLMap SBMLid="kv21f_1" COPASIkey="ModelValue_189"/>
    <SBMLMap SBMLid="kv21r_1" COPASIkey="ModelValue_190"/>
    <SBMLMap SBMLid="kv22_1" COPASIkey="ModelValue_195"/>
    <SBMLMap SBMLid="kv22_2" COPASIkey="ModelValue_196"/>
    <SBMLMap SBMLid="kv22_3" COPASIkey="ModelValue_197"/>
    <SBMLMap SBMLid="kv22_4_Hog1A" COPASIkey="ModelValue_214"/>
    <SBMLMap SBMLid="kv22_Hog1D_d" COPASIkey="ModelValue_218"/>
    <SBMLMap SBMLid="kv22_Hog1D_fT" COPASIkey="ModelValue_217"/>
    <SBMLMap SBMLid="kv22_Hog1D_t" COPASIkey="ModelValue_216"/>
    <SBMLMap SBMLid="kv23f_1" COPASIkey="ModelValue_191"/>
    <SBMLMap SBMLid="kv23f_2" COPASIkey="ModelValue_192"/>
    <SBMLMap SBMLid="kv23f_3" COPASIkey="ModelValue_193"/>
    <SBMLMap SBMLid="kv23r_1" COPASIkey="ModelValue_194"/>
    <SBMLMap SBMLid="kv2_1" COPASIkey="ModelValue_141"/>
    <SBMLMap SBMLid="kv2_2" COPASIkey="ModelValue_142"/>
    <SBMLMap SBMLid="kv3_1" COPASIkey="ModelValue_143"/>
    <SBMLMap SBMLid="kv3_2" COPASIkey="ModelValue_144"/>
    <SBMLMap SBMLid="kv3_3" COPASIkey="ModelValue_145"/>
    <SBMLMap SBMLid="kv3_4" COPASIkey="ModelValue_146"/>
    <SBMLMap SBMLid="kv4_1" COPASIkey="ModelValue_147"/>
    <SBMLMap SBMLid="kv4_2" COPASIkey="ModelValue_148"/>
    <SBMLMap SBMLid="kv4_3" COPASIkey="ModelValue_149"/>
    <SBMLMap SBMLid="kv4_4" COPASIkey="ModelValue_150"/>
    <SBMLMap SBMLid="kv4_5" COPASIkey="ModelValue_151"/>
    <SBMLMap SBMLid="kv5_1" COPASIkey="ModelValue_152"/>
    <SBMLMap SBMLid="kv5_2" COPASIkey="ModelValue_153"/>
    <SBMLMap SBMLid="kv5_3" COPASIkey="ModelValue_154"/>
    <SBMLMap SBMLid="kv5_4" COPASIkey="ModelValue_155"/>
    <SBMLMap SBMLid="kv6_1" COPASIkey="ModelValue_156"/>
    <SBMLMap SBMLid="kv6_2" COPASIkey="ModelValue_157"/>
    <SBMLMap SBMLid="kv6_3" COPASIkey="ModelValue_158"/>
    <SBMLMap SBMLid="kv6b_1" COPASIkey="ModelValue_159"/>
    <SBMLMap SBMLid="kv6b_2" COPASIkey="ModelValue_160"/>
    <SBMLMap SBMLid="kv6b_3" COPASIkey="ModelValue_161"/>
    <SBMLMap SBMLid="kv6b_4" COPASIkey="ModelValue_162"/>
    <SBMLMap SBMLid="kv6b_5" COPASIkey="ModelValue_163"/>
    <SBMLMap SBMLid="kv6b_x" COPASIkey="ModelValue_251"/>
    <SBMLMap SBMLid="kv7_1" COPASIkey="ModelValue_164"/>
    <SBMLMap SBMLid="kv7_2" COPASIkey="ModelValue_165"/>
    <SBMLMap SBMLid="kv8_1" COPASIkey="ModelValue_166"/>
    <SBMLMap SBMLid="kv8_2" COPASIkey="ModelValue_167"/>
    <SBMLMap SBMLid="kv9_1" COPASIkey="ModelValue_168"/>
    <SBMLMap SBMLid="kv9_2" COPASIkey="ModelValue_169"/>
    <SBMLMap SBMLid="kx1" COPASIkey="ModelValue_212"/>
    <SBMLMap SBMLid="kx2" COPASIkey="ModelValue_213"/>
    <SBMLMap SBMLid="parameter_97" COPASIkey="ModelValue_132"/>
    <SBMLMap SBMLid="pyruvate" COPASIkey="Metabolite_77"/>
    <SBMLMap SBMLid="pyruvate_measured" COPASIkey="ModelValue_243"/>
    <SBMLMap SBMLid="quantity" COPASIkey="ModelValue_248"/>
    <SBMLMap SBMLid="relVM" COPASIkey="ModelValue_232"/>
    <SBMLMap SBMLid="stl1mRNA" COPASIkey="Metabolite_211"/>
    <SBMLMap SBMLid="stl1mRNA_measured" COPASIkey="ModelValue_250"/>
    <SBMLMap SBMLid="t_stress" COPASIkey="ModelValue_137"/>
    <SBMLMap SBMLid="trehalose" COPASIkey="Metabolite_155"/>
    <SBMLMap SBMLid="trehalose_e" COPASIkey="Metabolite_231"/>
    <SBMLMap SBMLid="trehalose_measured" COPASIkey="ModelValue_246"/>
    <SBMLMap SBMLid="trioseP" COPASIkey="Metabolite_61"/>
    <SBMLMap SBMLid="trioseP_measured" COPASIkey="ModelValue_249"/>
    <SBMLMap SBMLid="v" COPASIkey="ModelValue_215"/>
    <SBMLMap SBMLid="v1" COPASIkey="Reaction_58"/>
    <SBMLMap SBMLid="v10" COPASIkey="Reaction_59"/>
    <SBMLMap SBMLid="v10Batch" COPASIkey="Reaction_60"/>
    <SBMLMap SBMLid="v10speed" COPASIkey="ModelValue_227"/>
    <SBMLMap SBMLid="v11" COPASIkey="Reaction_61"/>
    <SBMLMap SBMLid="v11Batch" COPASIkey="Reaction_62"/>
    <SBMLMap SBMLid="v11speed" COPASIkey="ModelValue_226"/>
    <SBMLMap SBMLid="v12" COPASIkey="Reaction_63"/>
    <SBMLMap SBMLid="v12Batch" COPASIkey="Reaction_64"/>
    <SBMLMap SBMLid="v12speed" COPASIkey="ModelValue_225"/>
    <SBMLMap SBMLid="v13a" COPASIkey="Reaction_65"/>
    <SBMLMap SBMLid="v13aBatch" COPASIkey="Reaction_66"/>
    <SBMLMap SBMLid="v13aspeed" COPASIkey="ModelValue_224"/>
    <SBMLMap SBMLid="v13b" COPASIkey="Reaction_67"/>
    <SBMLMap SBMLid="v13bBatch" COPASIkey="Reaction_68"/>
    <SBMLMap SBMLid="v13bspeed" COPASIkey="ModelValue_236"/>
    <SBMLMap SBMLid="v14" COPASIkey="Reaction_69"/>
    <SBMLMap SBMLid="v15f" COPASIkey="Reaction_70"/>
    <SBMLMap SBMLid="v15f_v" COPASIkey="ModelValue_219"/>
    <SBMLMap SBMLid="v15r" COPASIkey="Reaction_71"/>
    <SBMLMap SBMLid="v15r_v" COPASIkey="ModelValue_220"/>
    <SBMLMap SBMLid="v17f" COPASIkey="Reaction_72"/>
    <SBMLMap SBMLid="v17r" COPASIkey="Reaction_73"/>
    <SBMLMap SBMLid="v18f" COPASIkey="Reaction_74"/>
    <SBMLMap SBMLid="v18r" COPASIkey="Reaction_75"/>
    <SBMLMap SBMLid="v19r_v" COPASIkey="ModelValue_221"/>
    <SBMLMap SBMLid="v1Batch" COPASIkey="Reaction_76"/>
    <SBMLMap SBMLid="v1speed" COPASIkey="ModelValue_235"/>
    <SBMLMap SBMLid="v2" COPASIkey="Reaction_77"/>
    <SBMLMap SBMLid="v20f" COPASIkey="Reaction_78"/>
    <SBMLMap SBMLid="v20r" COPASIkey="Reaction_79"/>
    <SBMLMap SBMLid="v21f" COPASIkey="Reaction_80"/>
    <SBMLMap SBMLid="v21r" COPASIkey="Reaction_81"/>
    <SBMLMap SBMLid="v22" COPASIkey="Reaction_82"/>
    <SBMLMap SBMLid="v23f" COPASIkey="Reaction_83"/>
    <SBMLMap SBMLid="v23r" COPASIkey="Reaction_84"/>
    <SBMLMap SBMLid="v3" COPASIkey="Reaction_85"/>
    <SBMLMap SBMLid="v4" COPASIkey="Reaction_86"/>
    <SBMLMap SBMLid="v5" COPASIkey="Reaction_87"/>
    <SBMLMap SBMLid="v6" COPASIkey="Reaction_88"/>
    <SBMLMap SBMLid="v6b" COPASIkey="Reaction_89"/>
    <SBMLMap SBMLid="v7" COPASIkey="Reaction_90"/>
    <SBMLMap SBMLid="v8" COPASIkey="Reaction_91"/>
    <SBMLMap SBMLid="v9" COPASIkey="Reaction_92"/>
    <SBMLMap SBMLid="vVF16DP" COPASIkey="Reaction_96"/>
    <SBMLMap SBMLid="vVG6P" COPASIkey="Reaction_97"/>
    <SBMLMap SBMLid="vVGpd1" COPASIkey="Reaction_99"/>
    <SBMLMap SBMLid="vVHog1" COPASIkey="Reaction_101"/>
    <SBMLMap SBMLid="vVHog1PP" COPASIkey="Reaction_111"/>
    <SBMLMap SBMLid="vVPfk2627a" COPASIkey="Reaction_103"/>
    <SBMLMap SBMLid="vVPfk2627i" COPASIkey="Reaction_104"/>
    <SBMLMap SBMLid="vVStl1" COPASIkey="Reaction_106"/>
    <SBMLMap SBMLid="vV_1" COPASIkey="ModelValue_133"/>
    <SBMLMap SBMLid="vV_2" COPASIkey="ModelValue_134"/>
    <SBMLMap SBMLid="vV_R" COPASIkey="ModelValue_135"/>
    <SBMLMap SBMLid="vV_T" COPASIkey="ModelValue_136"/>
    <SBMLMap SBMLid="vVacetate_i" COPASIkey="Reaction_93"/>
    <SBMLMap SBMLid="vVcin" COPASIkey="Reaction_94"/>
    <SBMLMap SBMLid="vVethanol_i" COPASIkey="Reaction_95"/>
    <SBMLMap SBMLid="vVgluci" COPASIkey="Reaction_98"/>
    <SBMLMap SBMLid="vVglyci" COPASIkey="Reaction_110"/>
    <SBMLMap SBMLid="vVgpd1mRNA" COPASIkey="Reaction_100"/>
    <SBMLMap SBMLid="vVos" COPASIkey="Reaction_102"/>
    <SBMLMap SBMLid="vVpyruvate" COPASIkey="Reaction_105"/>
    <SBMLMap SBMLid="vVstl1mRNA" COPASIkey="Reaction_107"/>
    <SBMLMap SBMLid="vVtrehalose" COPASIkey="Reaction_108"/>
    <SBMLMap SBMLid="vVtrioseP" COPASIkey="Reaction_109"/>
    <SBMLMap SBMLid="volchangespeed" COPASIkey="ModelValue_231"/>
  </SBMLReference>
</COPASI>
