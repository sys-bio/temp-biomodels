<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.24 (Build 197) (http://www.copasi.org) at 2019-11-11 10:29:28 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="24" versionDevel="197" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_13" name="Mass action (irreversible)" type="MassAction" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
   <rdf:Description rdf:about="#Function_13">
   <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000163" />
   </rdf:Description>
   </rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
<b>Mass action rate law for irreversible reactions</b>
<p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does not include any reverse process that creates the reactants from the products. The change of a product quantity is proportional to the quantity of one reactant.
</p>
</body>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i>
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_80" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_81" name="substrate" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_40" name="Function for DmMa" type="UserDefined" reversible="unspecified">
      <Expression>
        (p45+p42*dmi^2/(dmi^2+p43^2))/default
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_265" name="default" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_266" name="dmi" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_267" name="p42" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_268" name="p43" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_269" name="p45" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Function for GbGs" type="UserDefined" reversible="false">
      <Expression>
        Gluc_feed^10/(Gluc_feed^10+p1^10)*p12*(Gluc_prod*default)*p57^10/((Gluc_stor*default)^10+p57^10)*ins_b*Gluc_b*p36^10/(p36^10+p55^10)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_281" name="Gluc_b" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_282" name="Gluc_feed" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_283" name="Gluc_prod" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_284" name="Gluc_stor" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_285" name="default" order="4" role="volume"/>
        <ParameterDescription key="FunctionParameter_286" name="ins_b" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_287" name="p1" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_288" name="p12" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_289" name="p36" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_290" name="p55" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_291" name="p57" order="10" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="Function for GpGb" type="UserDefined" reversible="false">
      <Expression>
        (p37+p39*(Gluc_prod*default))*(1/(1+(Gluc_b/p50)^10))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_250" name="Gluc_b" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_276" name="Gluc_prod" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_262" name="default" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_264" name="p37" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_278" name="p39" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_303" name="p50" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="Function for GpGs" type="UserDefined" reversible="false">
      <Expression>
        p51*(Gluc_prod*default)*(p57^10/((Gluc_stor*default)^10+p57^10))*p62^10/(p62^10+p55^10)/default
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_311" name="Gluc_prod" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_312" name="Gluc_stor" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_313" name="default" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_314" name="p51" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_315" name="p55" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_316" name="p57" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_317" name="p62" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="Function for GsGb" type="UserDefined" reversible="false">
      <Expression>
        1/(1+(Gluc_feed/p1)^10)*p17*(p7-Gluc_b)*(Gluc_stor*default)^10/((Gluc_stor*default)^10+p35^10)+1/(1+(p64/p55)^10)*p65^10/(p65^10+Gluc_b^10)*p63*(Gluc_stor*default)^10/((Gluc_stor*default)^10+p35^10)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_330" name="Gluc_b" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_331" name="Gluc_feed" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_332" name="Gluc_stor" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_333" name="default" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_334" name="p1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_335" name="p17" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_336" name="p35" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_337" name="p55" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_338" name="p63" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_339" name="p64" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_340" name="p65" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_341" name="p7" order="11" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="Function for GsGp" type="UserDefined" reversible="false">
      <Expression>
        p60*1/(1+(Gluc_feed/p61)^5)*(Gluc_stor*default)^10/((Gluc_stor*default)^10+p35^10)/default
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_310" name="Gluc_feed" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_263" name="Gluc_stor" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_280" name="default" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_279" name="p35" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_261" name="p60" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_275" name="p61" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="Function for KeKi" type="UserDefined" reversible="false">
      <Expression>
        (p8+p9*ins_b^8/(ins_b^8+p3^8))*K_ECF^2/(K_ECF^2+p33^2)*(1+p21*pH^10/(pH^10+p20^10))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_363" name="K_ECF" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_364" name="ins_b" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_365" name="p20" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_366" name="p21" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_367" name="p3" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_368" name="p33" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_369" name="p8" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_370" name="p9" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_371" name="pH" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="Function for KeKs" type="UserDefined" reversible="false">
      <Expression>
        p18*K_ECF*dmi
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_328" name="K_ECF" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_327" name="dmi" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_360" name="p18" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="Function for KeKt" type="UserDefined" reversible="false">
      <Expression>
        (K_git*default)^10/((K_git*default)^10+p15^10)*p25*K_ECF*(p2-p10)^10/((K_tiss*default-p10)^10+(p2-p10)^10)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_386" name="K_ECF" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_387" name="K_git" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_388" name="K_tiss" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_389" name="default" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_390" name="p10" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_391" name="p15" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_392" name="p2" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_393" name="p25" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="Function for KeKu" type="UserDefined" reversible="false">
      <Expression>
        (1+p13*K_ECF^5/(K_ECF^5+p24^5))*p6*(K_git*default)*(1+p16*K_ECF^10/(K_ECF^10+p22^10))+p53*K_ECF
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_403" name="K_ECF" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_404" name="K_git" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_405" name="default" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_406" name="p13" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_407" name="p16" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_408" name="p22" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_409" name="p24" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_410" name="p53" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_411" name="p6" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="Function for KeMi" type="UserDefined" reversible="false">
      <Expression>
        p52*p55*K_ECF^10/(K_ECF^10+p40^10)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_361" name="K_ECF" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_381" name="p40" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_385" name="p52" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_326" name="p55" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="Function for KfKg" type="UserDefined" reversible="unspecified">
      <Expression>
        p30*K_feed/default
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_425" name="K_feed" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_426" name="default" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_427" name="p30" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="Function for KgKe" type="UserDefined" reversible="false">
      <Expression>
        p31*(K_git*default)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_431" name="K_git" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_432" name="default" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_433" name="p31" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="Function for KiKe" type="UserDefined" reversible="false">
      <Expression>
        (1+1/(1+(K_ECF/p29)^10))*p5*(1+1/(1+(pH/p20)^10))*K_ICF^2/(K_ICF^2+p23^2)*(1+p19*K_ICF^2/(K_ICF^2+p14^2))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_443" name="K_ECF" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_444" name="K_ICF" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_445" name="p14" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_446" name="p19" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_447" name="p20" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_448" name="p23" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_449" name="p29" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_450" name="p5" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_451" name="pH" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="Function for KsKg" type="UserDefined" reversible="false">
      <Expression>
        p32*(K_sal*default)/default
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_440" name="K_sal" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_438" name="default" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_441" name="p32" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="Function for KtKe" type="UserDefined" reversible="false">
      <Expression>
        1/(1+(K_git*default/p15)^10)*p26*(p27-K_ECF)*(K_tiss*default-p10)^10/((K_tiss*default-p10)^10+(p38*0.98999999999999999-p10)^10)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_467" name="K_ECF" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_468" name="K_git" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_469" name="K_tiss" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_470" name="default" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_471" name="p10" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_472" name="p15" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_473" name="p26" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_474" name="p27" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_475" name="p38" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="Function for MaSnk" type="UserDefined" reversible="false">
      <Expression>
        p44*(met_act*default)/default
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_424" name="default" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_465" name="met_act" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_277" name="p44" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="Function for SnkGb" type="UserDefined" reversible="false">
      <Expression>
        Gluc_b^10/(Gluc_b^10+p58^10)*(p28*Gluc_b+p59*(Gluc_prod*default)*exp(-p66*p55)+p55*p47)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_491" name="Gluc_b" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_492" name="Gluc_prod" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_493" name="default" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_494" name="p28" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_495" name="p47" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_496" name="p55" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_497" name="p58" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_498" name="p59" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_499" name="p66" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_58" name="Function for SnkIn" type="UserDefined" reversible="false">
      <Expression>
        p41*ins_b/c2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_489" name="c2" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_490" name="ins_b" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_461" name="p41" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_59" name="Function for SrcGb" type="UserDefined" reversible="unspecified">
      <Expression>
        p48*Gluc_feed/c2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_509" name="Gluc_feed" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_510" name="c2" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_511" name="p48" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_60" name="Function for SrcGp" type="UserDefined" reversible="unspecified">
      <Expression>
        (1-p48)*Gluc_feed/default
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_515" name="Gluc_feed" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_516" name="default" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_517" name="p48" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_61" name="Function for SrcIn" type="UserDefined" reversible="unspecified">
      <Expression>
        p49*Gluc_b/c2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_521" name="Gluc_b" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_522" name="c2" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_523" name="p49" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_0" name="Potassium balance in lactating and non-lactating dairy cows" simulationType="time" timeUnit="h" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mol" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_0">
    <bqbiol:hasProperty rdf:resource="http://identifiers.org/biomodels.db/MODEL1710230000"/>
    <bqbiol:hasTaxon rdf:resource="urn:miriam:taxonomy:9913"/>
    <bqmodel:isDescribedBy rdf:resource="urn:miriam:mamo:MAMO_0000046"/>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>A dynamic model to simulate potassium balance in dairy cows.</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:28987591"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-11T09:57:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>msharifshohan@ebi.ac.uk</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Sharif Shohan</vCard:Family>
            <vCard:Given>Mohammad Umer</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>EMBL-EBI</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <ListOfUnsupportedAnnotations>
      <UnsupportedAnnotation name="http://sys-bio.org/ParameterSets">
<listOfParameterSets xmlns="http://sys-bio.org/ParameterSets" active="Initial Guess">
  <parameterSet id="Original" name="None">
    <parameter estimated="False" sbmlId="p1" value="3.73"/>
    <parameter estimated="False" sbmlId="p2" value="34.0"/>
    <parameter estimated="False" sbmlId="p3" value="24.5"/>
    <parameter estimated="False" sbmlId="p4" value="0.0002"/>
    <parameter estimated="False" sbmlId="p5" value="14.04"/>
    <parameter estimated="False" sbmlId="p6" value="0.05"/>
    <parameter estimated="False" sbmlId="p7" value="75.0"/>
    <parameter estimated="False" sbmlId="p8" value="14.91"/>
    <parameter estimated="False" sbmlId="p9" value="9.99"/>
    <parameter estimated="False" sbmlId="p10" value="600.0"/>
    <parameter estimated="False" sbmlId="p11" value="3.43"/>
    <parameter estimated="False" sbmlId="p12" value="25.42"/>
    <parameter estimated="False" sbmlId="p13" value="6.01"/>
    <parameter estimated="False" sbmlId="p14" value="4.0"/>
    <parameter estimated="False" sbmlId="p15" value="22.0"/>
    <parameter estimated="False" sbmlId="p16" value="3.0"/>
    <parameter estimated="False" sbmlId="p17" value="0.309"/>
    <parameter estimated="False" sbmlId="p18" value="0.08"/>
    <parameter estimated="False" sbmlId="p19" value="0.1373"/>
    <parameter estimated="False" sbmlId="p20" value="7.38"/>
    <parameter estimated="False" sbmlId="p21" value="0.1085"/>
    <parameter estimated="False" sbmlId="p22" value="8.0"/>
    <parameter estimated="False" sbmlId="p23" value="15.0"/>
    <parameter estimated="False" sbmlId="p24" value="5.0"/>
    <parameter estimated="False" sbmlId="p25" value="0.2898"/>
    <parameter estimated="False" sbmlId="p26" value="2.15"/>
    <parameter estimated="False" sbmlId="p27" value="5.95"/>
    <parameter estimated="False" sbmlId="p28" value="0.0011"/>
    <parameter estimated="False" sbmlId="p29" value="3.0"/>
    <parameter estimated="False" sbmlId="p30" value="0.95"/>
    <parameter estimated="False" sbmlId="p31" value="0.35"/>
    <parameter estimated="False" sbmlId="p32" value="0.8"/>
    <parameter estimated="False" sbmlId="p33" value="2.0"/>
    <parameter estimated="False" sbmlId="p34" value="1.1216"/>
    <parameter estimated="False" sbmlId="p35" value="2.23624"/>
    <parameter estimated="False" sbmlId="pH" value="0.0"/>
    <parameter estimated="False" sbmlId="p39" value="0.01135"/>
    <parameter estimated="False" sbmlId="p40" value="0.0"/>
    <parameter estimated="False" sbmlId="p41" value="731.25"/>
    <parameter estimated="False" sbmlId="p42" value="4.5"/>
    <parameter estimated="False" sbmlId="p43" value="10.0"/>
    <parameter estimated="False" sbmlId="p44" value="1.2"/>
    <parameter estimated="False" sbmlId="p45" value="3.0"/>
    <parameter estimated="False" sbmlId="p46" value="0.0854"/>
    <parameter estimated="False" sbmlId="p47" value="1.0"/>
    <parameter estimated="False" sbmlId="p48" value="0.015"/>
    <parameter estimated="False" sbmlId="p49" value="0.985"/>
    <parameter estimated="False" sbmlId="p50" value="7.0"/>
  </parameterSet>
  <parameterSet id="Initial Guess" name="None">
    <parameter estimated="False" sbmlId="p1" value="3.73"/>
    <parameter estimated="False" sbmlId="p2" value="34.0"/>
    <parameter estimated="False" sbmlId="p3" value="24.5"/>
    <parameter estimated="False" sbmlId="p4" value="0.0002"/>
    <parameter estimated="False" sbmlId="p5" value="14.04"/>
    <parameter estimated="False" sbmlId="p6" value="0.05"/>
    <parameter estimated="False" sbmlId="p7" value="75.0"/>
    <parameter estimated="False" sbmlId="p8" value="14.91"/>
    <parameter estimated="False" sbmlId="p9" value="9.99"/>
    <parameter estimated="False" sbmlId="p10" value="600.0"/>
    <parameter estimated="False" sbmlId="p11" value="3.43"/>
    <parameter estimated="False" sbmlId="p12" value="25.42"/>
    <parameter estimated="False" sbmlId="p13" value="6.01"/>
    <parameter estimated="False" sbmlId="p14" value="4.0"/>
    <parameter estimated="False" sbmlId="p15" value="22.0"/>
    <parameter estimated="False" sbmlId="p16" value="3.0"/>
    <parameter estimated="False" sbmlId="p17" value="0.309"/>
    <parameter estimated="False" sbmlId="p18" value="0.08"/>
    <parameter estimated="False" sbmlId="p19" value="0.1373"/>
    <parameter estimated="False" sbmlId="p20" value="7.38"/>
    <parameter estimated="False" sbmlId="p21" value="0.1085"/>
    <parameter estimated="False" sbmlId="p22" value="8.0"/>
    <parameter estimated="False" sbmlId="p23" value="15.0"/>
    <parameter estimated="False" sbmlId="p24" value="5.0"/>
    <parameter estimated="False" sbmlId="p25" value="0.2898"/>
    <parameter estimated="False" sbmlId="p26" value="2.15"/>
    <parameter estimated="False" sbmlId="p27" value="5.95"/>
    <parameter estimated="False" sbmlId="p28" value="0.0011"/>
    <parameter estimated="False" sbmlId="p29" value="3.0"/>
    <parameter estimated="False" sbmlId="p30" value="0.95"/>
    <parameter estimated="False" sbmlId="p31" value="0.35"/>
    <parameter estimated="False" sbmlId="p32" value="0.8"/>
    <parameter estimated="False" sbmlId="p33" value="2.0"/>
    <parameter estimated="False" sbmlId="p34" value="1.1216"/>
    <parameter estimated="False" sbmlId="p35" value="2.23624"/>
    <parameter estimated="False" sbmlId="pH" value="0.0"/>
    <parameter estimated="False" sbmlId="p39" value="0.01135"/>
    <parameter estimated="False" sbmlId="p40" value="0.0"/>
    <parameter estimated="False" sbmlId="p41" value="731.25"/>
    <parameter estimated="False" sbmlId="p42" value="4.5"/>
    <parameter estimated="False" sbmlId="p43" value="10.0"/>
    <parameter estimated="False" sbmlId="p44" value="1.2"/>
    <parameter estimated="False" sbmlId="p45" value="3.0"/>
    <parameter estimated="False" sbmlId="p46" value="0.0854"/>
    <parameter estimated="False" sbmlId="p47" value="1.0"/>
    <parameter estimated="False" sbmlId="p48" value="0.015"/>
    <parameter estimated="False" sbmlId="p49" value="0.985"/>
    <parameter estimated="False" sbmlId="p50" value="7.0"/>
  </parameterSet>
</listOfParameterSets>
      </UnsupportedAnnotation>
      <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:modelVersion>4.0</celldesigner:modelVersion>
  <celldesigner:modelDisplay sizeX="1081" sizeY="940"/>
  <celldesigner:listOfCompartmentAliases>
    <celldesigner:compartmentAlias id="ca1" compartment="c1">
      <celldesigner:class>SQUARE</celldesigner:class>
      <celldesigner:bounds x="869.0" y="610.0" w="162.0" h="171.0"/>
      <celldesigner:namePoint x="924.0" y="745.5"/>
      <celldesigner:doubleLine thickness="12.0" outerWidth="2.0" innerWidth="1.0"/>
      <celldesigner:paint color="ffcccc00" scheme="Color"/>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:compartmentAlias>
    <celldesigner:compartmentAlias id="ca2" compartment="c2">
      <celldesigner:class>SQUARE</celldesigner:class>
      <celldesigner:bounds x="284.0" y="28.0" w="315.0" h="561.0"/>
      <celldesigner:namePoint x="414.0" y="553.5"/>
      <celldesigner:doubleLine thickness="12.0" outerWidth="2.0" innerWidth="1.0"/>
      <celldesigner:paint color="ffcccc00" scheme="Color"/>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:compartmentAlias>
  </celldesigner:listOfCompartmentAliases>
  <celldesigner:listOfComplexSpeciesAliases/>
  <celldesigner:listOfSpeciesAliases>
    <celldesigner:speciesAlias id="sa4" species="K_ECF" compartmentAlias="ca2">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="387.0" y="429.5" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="103.0" y="401.5"/>
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
    <celldesigner:speciesAlias id="sa5" species="K_ICF" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="915.0" y="657.5" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="46.0" y="47.5"/>
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
    <celldesigner:speciesAlias id="sa6" species="K_urin">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="759.0" y="480.5" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
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
    <celldesigner:speciesAlias id="sa8" species="K_tiss">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="612.0" y="462.5" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
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
    <celldesigner:speciesAlias id="sa9" species="K_sal">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="867.0" y="396.5" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
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
    <celldesigner:speciesAlias id="sa16" species="sa4_degraded">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="902.0" y="565.0" w="30.0" h="30.0"/>
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
        <celldesigner:boxSize width="0.0" height="0.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa23" species="met_act">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="145.0" y="487.5" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="70.0" height="25.0"/>
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
    <celldesigner:speciesAlias id="sa29" species="Gluc_b" compartmentAlias="ca2">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="385.0" y="341.0" w="74.0" h="28.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="101.0" y="313.0"/>
        <celldesigner:boxSize width="74.0" height="28.0"/>
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
    <celldesigner:speciesAlias id="sa32" species="src_metact">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="72.0" y="521.0" w="30.0" h="30.0"/>
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
    <celldesigner:speciesAlias id="sa33" species="snk_metact">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="129.0" y="539.0" w="30.0" h="30.0"/>
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
    <celldesigner:speciesAlias id="sa36" species="ins_b" compartmentAlias="ca2">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="387.0" y="132.5" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="103.0" y="104.5"/>
        <celldesigner:boxSize width="70.0" height="25.0"/>
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
    <celldesigner:speciesAlias id="sa37" species="src_insnew" compartmentAlias="ca2">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="443.0" y="184.0" w="30.0" h="30.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="159.0" y="156.0"/>
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
    <celldesigner:speciesAlias id="sa38" species="snk_insnew" compartmentAlias="ca2">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="443.0" y="76.0" w="30.0" h="30.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="159.0" y="48.0"/>
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
    <celldesigner:speciesAlias id="sa40" species="src_Glucblood" compartmentAlias="ca2">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="332.0" y="394.0" w="30.0" h="30.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="48.0" y="366.0"/>
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
    <celldesigner:speciesAlias id="sa41" species="src_Kgit">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="857.0" y="463.0" w="30.0" h="30.0"/>
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
    <celldesigner:speciesAlias id="sa42" species="K_milk">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="612.0" y="573.5" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="70.0" height="25.0"/>
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
    <celldesigner:speciesAlias id="sa43" species="K_ECF_mmol" compartmentAlias="ca2">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="483.0" y="342.5" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="199.0" y="314.5"/>
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
    <celldesigner:speciesAlias id="sa44" species="K_ICF_mmol" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="915.0" y="708.5" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="46.0" y="98.5"/>
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
    <celldesigner:speciesAlias id="sa7" species="K_git">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="705.0" y="429.5" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
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
    <celldesigner:speciesAlias id="sa45" species="Gluc_stor">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="66.0" y="312.5" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="70.0" height="25.0"/>
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
    <celldesigner:speciesAlias id="sa46" species="Gluc_prod">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="186.0" y="195.5" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="70.0" height="25.0"/>
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
    <celldesigner:speciesAlias id="sa47" species="s23">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="131.0" y="160.0" w="30.0" h="30.0"/>
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
    <celldesigner:speciesAlias id="sa48" species="s24">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="170.0" y="247.0" w="30.0" h="30.0"/>
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
  </celldesigner:listOfSpeciesAliases>
  <celldesigner:listOfGroups/>
  <celldesigner:listOfProteins/>
  <celldesigner:listOfGenes/>
  <celldesigner:listOfRNAs/>
  <celldesigner:listOfAntisenseRNAs/>
  <celldesigner:listOfLayers/>
  <celldesigner:listOfBlockDiagrams/>
</celldesigner:extension>
      </UnsupportedAnnotation>
    </ListOfUnsupportedAnnotations>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="default" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-11T10:16:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_1" name="intracell" simulationType="fixed" dimensionality="3" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:name>intracell</celldesigner:name>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Compartment>
      <Compartment key="Compartment_2" name="extracell" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-11T10:16:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:name>extracell</celldesigner:name>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="K_ECF" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-11T10:17:05Z</dcterms:W3CDTF>
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
    <celldesigner:class>SIMPLE_MOLECULE</celldesigner:class>
    <celldesigner:name>K_ECF</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="K_ICF" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>SIMPLE_MOLECULE</celldesigner:class>
    <celldesigner:name>K_ICF</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="K_urin" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>SIMPLE_MOLECULE</celldesigner:class>
    <celldesigner:name>K_urin</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="K_tiss" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>SIMPLE_MOLECULE</celldesigner:class>
    <celldesigner:name>K_tiss</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="K_sal" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>SIMPLE_MOLECULE</celldesigner:class>
    <celldesigner:name>K_sal</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="met_act" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>UNKNOWN</celldesigner:class>
    <celldesigner:name>met_act</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="K_milk" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>UNKNOWN</celldesigner:class>
    <celldesigner:name>K_milk</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="K_ECF_mmol" simulationType="assignment" compartment="Compartment_2" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>SIMPLE_MOLECULE</celldesigner:class>
    <celldesigner:name>K_ECF_mmol</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <Expression>
          &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Compartments[extracell],Vector=Metabolites[K_ECF],Reference=Concentration>/&lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[con],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="K_ICF_mmol" simulationType="assignment" compartment="Compartment_1" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>SIMPLE_MOLECULE</celldesigner:class>
    <celldesigner:name>K_ICF_mmol</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <Expression>
          &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Compartments[intracell],Vector=Metabolites[K_ICF],Reference=Concentration>/&lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[con],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="K_git" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>SIMPLE_MOLECULE</celldesigner:class>
    <celldesigner:name>K_git</celldesigner:name>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re7"/>
    <celldesigner:catalyzed reaction="re9"/>
    <celldesigner:catalyzed reaction="re8"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="Gluc_b" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-11T10:25:46Z</dcterms:W3CDTF>
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
    <celldesigner:class>UNKNOWN</celldesigner:class>
    <celldesigner:name>Gluc_b</celldesigner:name>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re31"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="ins_b" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>UNKNOWN</celldesigner:class>
    <celldesigner:name>ins_b</celldesigner:name>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re37"/>
    <celldesigner:catalyzed reaction="re4"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="Gluc_stor" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>UNKNOWN</celldesigner:class>
    <celldesigner:name>Gluc_stor</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="Gluc_prod" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>UNKNOWN</celldesigner:class>
    <celldesigner:name>Gluc_prod</celldesigner:name>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re37"/>
    <celldesigner:catalyzed reaction="re40"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="src_metact" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>DEGRADED</celldesigner:class>
    <celldesigner:name>src_metact</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="snk_metact" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>DEGRADED</celldesigner:class>
    <celldesigner:name>snk_metact</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_16" name="src_Kgit" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>DEGRADED</celldesigner:class>
    <celldesigner:name>src_Kgit</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="src_Glucb" simulationType="fixed" compartment="Compartment_2" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>DEGRADED</celldesigner:class>
    <celldesigner:name>src_Glucb</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_18" name="src_Gprod" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>DEGRADED</celldesigner:class>
    <celldesigner:name>src_Gprod</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="snk_Kecf" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>DEGRADED</celldesigner:class>
    <celldesigner:name>snk_Kecf</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_20" name="Gluc_use" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>DEGRADED</celldesigner:class>
    <celldesigner:name>Gluc_use</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_21" name="src_ins" simulationType="fixed" compartment="Compartment_2" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>DEGRADED</celldesigner:class>
    <celldesigner:name>src_ins</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_22" name="snk_ins" simulationType="fixed" compartment="Compartment_2" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>DEGRADED</celldesigner:class>
    <celldesigner:name>snk_ins</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="p3" simulationType="fixed" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.zib.de/SBML/Threshold">
<Scale xmlns="http://www.zib.de/SBML/Threshold" Value="2.22044604925e-16"/>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="p4" simulationType="fixed" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.zib.de/SBML/Threshold">
<Scale xmlns="http://www.zib.de/SBML/Threshold" Value="2.22044604925e-16"/>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="p5" simulationType="fixed" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.zib.de/SBML/Threshold">
<Scale xmlns="http://www.zib.de/SBML/Threshold" Value="2.22044604925e-16"/>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="p6" simulationType="fixed" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.zib.de/SBML/Threshold">
<Scale xmlns="http://www.zib.de/SBML/Threshold" Value="2.22044604925e-16"/>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="p8" simulationType="fixed" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.zib.de/SBML/Threshold">
<Scale xmlns="http://www.zib.de/SBML/Threshold" Value="2.22044604925e-16"/>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="p9" simulationType="fixed" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.zib.de/SBML/Threshold">
<Scale xmlns="http://www.zib.de/SBML/Threshold" Value="2.22044604925e-16"/>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="p13" simulationType="fixed" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.zib.de/SBML/Threshold">
<Scale xmlns="http://www.zib.de/SBML/Threshold" Value="2.22044604925e-16"/>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="p14" simulationType="fixed" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.zib.de/SBML/Threshold">
<Scale xmlns="http://www.zib.de/SBML/Threshold" Value="2.22044604925e-16"/>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="p15" simulationType="fixed" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.zib.de/SBML/Threshold">
<Scale xmlns="http://www.zib.de/SBML/Threshold" Value="2.22044604925e-16"/>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="p16" simulationType="fixed" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.zib.de/SBML/Threshold">
<Scale xmlns="http://www.zib.de/SBML/Threshold" Value="2.22044604925e-16"/>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="p18" simulationType="fixed" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.zib.de/SBML/Threshold">
<Scale xmlns="http://www.zib.de/SBML/Threshold" Value="2.22044604925e-16"/>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="p19" simulationType="fixed" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.zib.de/SBML/Threshold">
<Scale xmlns="http://www.zib.de/SBML/Threshold" Value="2.22044604925e-16"/>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="p20" simulationType="fixed" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.zib.de/SBML/Threshold">
<Scale xmlns="http://www.zib.de/SBML/Threshold" Value="2.22044604925e-16"/>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="p21" simulationType="fixed" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.zib.de/SBML/Threshold">
<Scale xmlns="http://www.zib.de/SBML/Threshold" Value="2.22044604925e-16"/>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="p22" simulationType="fixed" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.zib.de/SBML/Threshold">
<Scale xmlns="http://www.zib.de/SBML/Threshold" Value="2.22044604925e-16"/>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="p23" simulationType="fixed" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.zib.de/SBML/Threshold">
<Scale xmlns="http://www.zib.de/SBML/Threshold" Value="2.22044604925e-16"/>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="p24" simulationType="fixed" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.zib.de/SBML/Threshold">
<Scale xmlns="http://www.zib.de/SBML/Threshold" Value="2.22044604925e-16"/>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="p25" simulationType="fixed" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.zib.de/SBML/Threshold">
<Scale xmlns="http://www.zib.de/SBML/Threshold" Value="2.22044604925e-16"/>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_18" name="p26" simulationType="fixed" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.zib.de/SBML/Threshold">
<Scale xmlns="http://www.zib.de/SBML/Threshold" Value="2.22044604925e-16"/>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_19" name="p27" simulationType="fixed" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.zib.de/SBML/Threshold">
<Scale xmlns="http://www.zib.de/SBML/Threshold" Value="2.22044604925e-16"/>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_20" name="p29" simulationType="fixed" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.zib.de/SBML/Threshold">
<Scale xmlns="http://www.zib.de/SBML/Threshold" Value="2.22044604925e-16"/>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_21" name="p30" simulationType="fixed" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.zib.de/SBML/Threshold">
<Scale xmlns="http://www.zib.de/SBML/Threshold" Value="2.22044604925e-16"/>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_22" name="p31" simulationType="fixed" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.zib.de/SBML/Threshold">
<Scale xmlns="http://www.zib.de/SBML/Threshold" Value="2.22044604925e-16"/>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_23" name="p32" simulationType="fixed" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.zib.de/SBML/Threshold">
<Scale xmlns="http://www.zib.de/SBML/Threshold" Value="2.22044604925e-16"/>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_24" name="p33" simulationType="fixed" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.zib.de/SBML/Threshold">
<Scale xmlns="http://www.zib.de/SBML/Threshold" Value="2.22044604925e-16"/>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_25" name="pH" simulationType="assignment" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.zib.de/SBML/Threshold">
<Scale xmlns="http://www.zib.de/SBML/Threshold" Value="2.22044604925e-16"/>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <Expression>
          7.5-&lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Compartments[default],Vector=Metabolites[met_act],Reference=ParticleNumber>/&lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[amount to particle factor],Reference=Value>/40
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_26" name="src_metact" simulationType="fixed" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.zib.de/SBML/Threshold">
<Scale xmlns="http://www.zib.de/SBML/Threshold" Value="2.22044604925e-16"/>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_27" name="T_src_metact" simulationType="fixed" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.zib.de/SBML/Threshold">
<Scale xmlns="http://www.zib.de/SBML/Threshold" Value="2.22044604925e-16"/>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_28" name="snc_metact" simulationType="fixed" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.zib.de/SBML/Threshold">
<Scale xmlns="http://www.zib.de/SBML/Threshold" Value="2.22044604925e-16"/>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_29" name="basic_metact" simulationType="fixed" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.zib.de/SBML/Threshold">
<Scale xmlns="http://www.zib.de/SBML/Threshold" Value="2.22044604925e-16"/>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_30" name="src_glucfeed" simulationType="fixed" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.zib.de/SBML/Threshold">
<Scale xmlns="http://www.zib.de/SBML/Threshold" Value="2.22044604925e-16"/>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_31" name="scale_blood_gluc" simulationType="fixed" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.zib.de/SBML/Threshold">
<Scale xmlns="http://www.zib.de/SBML/Threshold" Value="2.22044604925e-16"/>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_32" name="p49" simulationType="fixed" addNoise="false">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_33" name="p41" simulationType="fixed" addNoise="false">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_34" name="Pi" simulationType="fixed" addNoise="false">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_35" name="dmi" simulationType="assignment" addNoise="false">
        <Expression>
          &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[dmi_percentage],Reference=Value>*487.5*(1-sin(PI*&lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Reference=Time>/12))
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_36" name="K_feed" simulationType="assignment" addNoise="false">
        <Expression>
          &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[perctK_in_dmi],Reference=Value>*&lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[dmi],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_37" name="Gluc_feed" simulationType="assignment" addNoise="false">
        <Expression>
          &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[src_glucfeed],Reference=Value>*&lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[dmi],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_38" name="kmilk_content" simulationType="fixed" addNoise="false">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_39" name="basal_KeKu" simulationType="fixed" addNoise="false">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_40" name="dmi_percentage" simulationType="fixed" addNoise="false">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_41" name="Milk_in_l/h" simulationType="fixed" addNoise="false">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_42" name="perctK_in_dmi" simulationType="fixed" addNoise="false">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_43" name="con" simulationType="fixed" addNoise="false">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_44" name="p1" simulationType="fixed" addNoise="false">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_45" name="p11" simulationType="fixed" addNoise="false">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_46" name="p12" simulationType="fixed" addNoise="false">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_47" name="p17" simulationType="fixed" addNoise="false">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_48" name="p28" simulationType="fixed" addNoise="false">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_49" name="p37" simulationType="fixed" addNoise="false">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_50" name="p39" simulationType="fixed" addNoise="false">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_51" name="p50" simulationType="fixed" addNoise="false">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_52" name="p7" simulationType="fixed" addNoise="false">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_53" name="p51" simulationType="fixed" addNoise="false">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_54" name="p57" simulationType="fixed" addNoise="false">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_55" name="p59" simulationType="fixed" addNoise="false">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_56" name="p60" simulationType="fixed" addNoise="false">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_57" name="p61" simulationType="fixed" addNoise="false">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_58" name="p40" simulationType="fixed" addNoise="false">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_59" name="p47" simulationType="fixed" addNoise="false">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_60" name="p58" simulationType="fixed" addNoise="false">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_61" name="p63" simulationType="fixed" addNoise="false">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_62" name="p64" simulationType="fixed" addNoise="false">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_63" name="p65" simulationType="fixed" addNoise="false">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_64" name="p66" simulationType="fixed" addNoise="false">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_65" name="p2" simulationType="fixed" addNoise="false">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_66" name="p10" simulationType="fixed" addNoise="false">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_67" name="p35" simulationType="fixed" addNoise="false">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_68" name="p62" simulationType="fixed" addNoise="false">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_69" name="p38" simulationType="fixed" addNoise="false">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_70" name="p36" simulationType="fixed" addNoise="false">
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_71" name="amount to particle factor" simulationType="fixed" addNoise="false">
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="DmMa" reversible="false" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:name>DmMa</celldesigner:name>
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="src_metact" alias="sa32">
      <celldesigner:linkAnchor position="N"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="met_act" alias="sa23">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="1">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
      <celldesigner:lineDirection index="1" value="unknown"/>
      <celldesigner:lineDirection index="2" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.12871287128713194,-0.2871287128712847 0.2534653465346537,-0.3346534653465332</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5073" name="dmi" value="487.5"/>
          <Constant key="Parameter_5075" name="p42" value="4.5"/>
          <Constant key="Parameter_5076" name="p43" value="10"/>
          <Constant key="Parameter_5070" name="p45" value="3"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="ModelValue_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="GbGs" reversible="false" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:name>GbGs</celldesigner:name>
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="Gluc_b" alias="sa29">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="Gluc_stor" alias="sa45">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="1">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
      <celldesigner:lineDirection index="1" value="unknown"/>
      <celldesigner:lineDirection index="2" value="unknown"/>
      <celldesigner:lineDirection index="3" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>1.2066858319772489,-0.07435564105493642 1.207334282335286,-0.06383221810164641 0.9968658232694867,-0.05086321094090174</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="PHYSICAL_STIMULATION" modifiers="ins_b" aliases="sa36" targetLineIndex="-1,3" editPoints="0.7513687781621372,0.4594281071198719">
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown"/>
          <celldesigner:lineDirection index="1" value="unknown"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="ins_b" alias="sa36">
        <celldesigner:linkAnchor position="W"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
    <celldesigner:modification type="PHYSICAL_STIMULATION" modifiers="Gluc_prod" aliases="sa46" targetLineIndex="-1,2" editPoints="0.508354197344245,0.49307070004391496">
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown"/>
          <celldesigner:lineDirection index="1" value="unknown"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="Gluc_prod" alias="sa46">
        <celldesigner:linkAnchor position="W"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5072" name="Gluc_feed" value="41.6325"/>
          <Constant key="Parameter_5071" name="p1" value="40.4"/>
          <Constant key="Parameter_5074" name="p12" value="0.0105"/>
          <Constant key="Parameter_5077" name="p36" value="1"/>
          <Constant key="Parameter_5068" name="p55" value="0"/>
          <Constant key="Parameter_5066" name="p57" value="3800"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="ModelValue_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="ModelValue_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="ModelValue_54"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="GpGb" reversible="false" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:name>GpGb</celldesigner:name>
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="Gluc_prod" alias="sa46">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="Gluc_b" alias="sa29">
      <celldesigner:linkAnchor position="N"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="1">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
      <celldesigner:lineDirection index="1" value="unknown"/>
      <celldesigner:lineDirection index="2" value="unknown"/>
      <celldesigner:lineDirection index="3" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.04769587799756825,-0.038214167311305225 0.09172284230301675,-0.07348878329097153 0.5980329318156703,-0.4791468670571334</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5065" name="p37" value="0"/>
          <Constant key="Parameter_5069" name="p39" value="30"/>
          <Constant key="Parameter_5067" name="p50" value="0.4"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="ModelValue_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="ModelValue_51"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="GpGs" reversible="false" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:name>GpGs</celldesigner:name>
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="Gluc_prod" alias="sa46">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="Gluc_stor" alias="sa45">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="2">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
      <celldesigner:lineDirection index="1" value="unknown"/>
      <celldesigner:lineDirection index="2" value="unknown"/>
      <celldesigner:lineDirection index="3" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.6063227597992092,0.5661646908042293 1.0561785752429773,0.10477411086190291 1.0555377549930576,0.05414931111823118</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5042" name="p51" value="0.1"/>
          <Constant key="Parameter_5040" name="p55" value="0"/>
          <Constant key="Parameter_5039" name="p57" value="3800"/>
          <Constant key="Parameter_5043" name="p62" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_312">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_313">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="ModelValue_53"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="ModelValue_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="ModelValue_68"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="GsGb" reversible="false" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:name>GsGb</celldesigner:name>
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="Gluc_stor" alias="sa45">
      <celldesigner:linkAnchor position="N"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="Gluc_b" alias="sa29">
      <celldesigner:linkAnchor position="N"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="1">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
      <celldesigner:lineDirection index="1" value="unknown"/>
      <celldesigner:lineDirection index="2" value="unknown"/>
      <celldesigner:lineDirection index="3" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>-0.003979172534321285,-0.044818048544460365 0.012919672711253605,-0.0650100020943013 0.9587350419943527,-0.1489842638530815</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5041" name="Gluc_feed" value="41.6325"/>
          <Constant key="Parameter_5045" name="p1" value="40.4"/>
          <Constant key="Parameter_5060" name="p17" value="16"/>
          <Constant key="Parameter_5048" name="p35" value="100"/>
          <Constant key="Parameter_5062" name="p55" value="0"/>
          <Constant key="Parameter_5063" name="p63" value="800"/>
          <Constant key="Parameter_5057" name="p64" value="0.2"/>
          <Constant key="Parameter_5044" name="p65" value="0.3"/>
          <Constant key="Parameter_5052" name="p7" value="0.925"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_332">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="ModelValue_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="ModelValue_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="ModelValue_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_338">
              <SourceParameter reference="ModelValue_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="ModelValue_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_340">
              <SourceParameter reference="ModelValue_63"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_341">
              <SourceParameter reference="ModelValue_52"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="GsGp" reversible="false" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:name>GsGp</celldesigner:name>
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="Gluc_stor" alias="sa45">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="Gluc_prod" alias="sa46">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="1">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
      <celldesigner:lineDirection index="1" value="unknown"/>
      <celldesigner:lineDirection index="2" value="unknown"/>
      <celldesigner:lineDirection index="3" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.04015071962443639,0.09395268392118084 0.10204459818395217,0.11878435975044788 0.8608931990857991,-0.20550991413923048</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5059" name="Gluc_feed" value="41.6325"/>
          <Constant key="Parameter_5046" name="p35" value="100"/>
          <Constant key="Parameter_5058" name="p60" value="2"/>
          <Constant key="Parameter_5051" name="p61" value="5"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="ModelValue_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="ModelValue_56"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_57"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="KeKi" reversible="false" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:name>KeKi</celldesigner:name>
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="K_ECF" alias="sa4">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="K_ICF" alias="sa5">
      <celldesigner:linkAnchor position="N"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="4">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
      <celldesigner:lineDirection index="1" value="unknown"/>
      <celldesigner:lineDirection index="2" value="unknown"/>
      <celldesigner:lineDirection index="3" value="unknown"/>
      <celldesigner:lineDirection index="4" value="unknown"/>
      <celldesigner:lineDirection index="5" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>-0.559267547537659,0.2140713259224966 -0.8065466137694625,-0.43195240627474396 0.6249304331136317,-0.9798801213783084 0.6925319044575778,-0.8032693168927318 0.6996478488095722,-0.7846787058942502</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="PHYSICAL_STIMULATION" modifiers="ins_b" aliases="sa36" targetLineIndex="-1,3">
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="ins_b" alias="sa36">
        <celldesigner:linkAnchor position="E"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5055" name="p20" value="7.38"/>
          <Constant key="Parameter_5050" name="p21" value="0.1085"/>
          <Constant key="Parameter_5054" name="p3" value="22"/>
          <Constant key="Parameter_5053" name="p33" value="0.0781997"/>
          <Constant key="Parameter_5056" name="p8" value="0.5994"/>
          <Constant key="Parameter_5061" name="p9" value="0.4016"/>
          <Constant key="Parameter_5047" name="pH" value="7.34378"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_363">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_364">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_365">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_366">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_367">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_368">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_369">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_370">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_371">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="KeKs" reversible="false" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:name>KeKs</celldesigner:name>
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="K_ECF" alias="sa4">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="K_sal" alias="sa9">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="2">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
      <celldesigner:lineDirection index="1" value="unknown"/>
      <celldesigner:lineDirection index="2" value="unknown"/>
      <celldesigner:lineDirection index="3" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.007186086595907137,0.16820237678680194 0.9713787696175626,0.234490623744541 0.9846752977463291,0.22290476005339377</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5049" name="dmi" value="487.5"/>
          <Constant key="Parameter_5064" name="p18" value="0.0223"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="KeKt" reversible="false" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:name>KeKt</celldesigner:name>
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="K_ECF" alias="sa4">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="K_tiss" alias="sa8">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="2">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
      <celldesigner:lineDirection index="1" value="unknown"/>
      <celldesigner:lineDirection index="2" value="unknown"/>
      <celldesigner:lineDirection index="3" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.1124550411880727,0.22128437173686044 0.9869764473836864,0.09302123216150404 1.0092528135514551,0.06308736512356394</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="PHYSICAL_STIMULATION" modifiers="K_git" aliases="sa7" targetLineIndex="-1,6" editPoints="0.268815318364529,-0.39604389015497965">
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown"/>
          <celldesigner:lineDirection index="1" value="unknown"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="K_git" alias="sa7">
        <celldesigner:linkAnchor position="S"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5078" name="p10" value="1400"/>
          <Constant key="Parameter_5079" name="p15" value="32"/>
          <Constant key="Parameter_5085" name="p2" value="1600"/>
          <Constant key="Parameter_5084" name="p25" value="6.6085"/>
        </ListOfConstants>
        <KineticLaw function="Function_48" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_386">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_387">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_388">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_389">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_390">
              <SourceParameter reference="ModelValue_66"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_391">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_392">
              <SourceParameter reference="ModelValue_65"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_393">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="KeKu" reversible="false" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:name>KeKu</celldesigner:name>
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="K_ECF" alias="sa4">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="K_urin" alias="sa6">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="2">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
      <celldesigner:lineDirection index="1" value="unknown"/>
      <celldesigner:lineDirection index="2" value="unknown"/>
      <celldesigner:lineDirection index="3" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.05752739653154615,0.18431748058304054 0.9915842110862856,0.05626130439408383 1.0052452388551976,0.038259389296733115</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="PHYSICAL_STIMULATION" modifiers="K_git" aliases="sa7" targetLineIndex="-1,2" editPoints="0.17336251869671937,-0.8371099312063066 1.1927317247216065,-0.6731658058875052">
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown"/>
          <celldesigner:lineDirection index="1" value="unknown"/>
          <celldesigner:lineDirection index="2" value="unknown"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="K_git" alias="sa7">
        <celldesigner:linkAnchor position="E"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5086" name="p13" value="6.08"/>
          <Constant key="Parameter_5081" name="p16" value="10"/>
          <Constant key="Parameter_5080" name="p22" value="0.25"/>
          <Constant key="Parameter_5083" name="p24" value="0.196281"/>
          <Constant key="Parameter_5082" name="p53" value="0.01"/>
          <Constant key="Parameter_5087" name="p6" value="0.051"/>
        </ListOfConstants>
        <KineticLaw function="Function_49" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_403">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_404">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_405">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_406">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_407">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_408">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_409">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_410">
              <SourceParameter reference="ModelValue_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_411">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="KeMi" reversible="false" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:name>KeMi</celldesigner:name>
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="K_ECF" alias="sa4">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="K_milk" alias="sa42">
      <celldesigner:linkAnchor position="N"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="2">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
      <celldesigner:lineDirection index="1" value="unknown"/>
      <celldesigner:lineDirection index="2" value="unknown"/>
      <celldesigner:lineDirection index="3" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.19134535239094852,0.33657734695767605 0.9415074244435528,-0.060175037816812216 0.9733661593554164,-0.05035810205908686</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5091" name="p40" value="0.01"/>
          <Constant key="Parameter_5089" name="p52" value="1.4"/>
          <Constant key="Parameter_5088" name="p55" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_50" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_381">
              <SourceParameter reference="ModelValue_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_385">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="KeR" reversible="false" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:name>KeR</celldesigner:name>
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="K_ECF" alias="sa4">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="sa4_degraded" alias="sa16">
      <celldesigner:linkAnchor position="N"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="2">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
      <celldesigner:lineDirection index="1" value="unknown"/>
      <celldesigner:lineDirection index="2" value="unknown"/>
      <celldesigner:lineDirection index="3" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.051505572053517135,0.1687901139955934 0.9768815659226617,-0.04713095124054034 0.991059169141361,-0.03831784653702475</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5092" name="k1" value="0.0001783"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="KfKg" reversible="false" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:name>KfKg</celldesigner:name>
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="src_Kgit" alias="sa41">
      <celldesigner:linkAnchor position="N"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="K_git" alias="sa7">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="1">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
      <celldesigner:lineDirection index="1" value="unknown"/>
      <celldesigner:lineDirection index="2" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.051561725334654085,0.19236489836390636 0.12473971244422088,0.23460585027268133</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5090" name="K_feed" value="5.54287"/>
          <Constant key="Parameter_5094" name="p30" value="0.95"/>
        </ListOfConstants>
        <KineticLaw function="Function_51" unitType="Default" scalingCompartment="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_425">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_426">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_427">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="KgKe" reversible="false" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:name>KgKe</celldesigner:name>
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="K_git" alias="sa7">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="K_ECF" alias="sa4">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="1">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
      <celldesigner:lineDirection index="1" value="unknown"/>
      <celldesigner:lineDirection index="2" value="unknown"/>
      <celldesigner:lineDirection index="3" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.0,-0.17767295597484267 0.01886792452830166,-0.19654088050314478 0.9528301886792452,-0.19654088050314478</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5096" name="p31" value="0.353"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_431">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_432">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_433">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="KiKe" reversible="false" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:name>KiKe</celldesigner:name>
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="K_ICF" alias="sa5">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="K_ECF" alias="sa4">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="1">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
      <celldesigner:lineDirection index="1" value="unknown"/>
      <celldesigner:lineDirection index="2" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.829360675741845,-0.3625298694165674 0.8440451588444127,-0.3567783605090691</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5097" name="p14" value="0.156399"/>
          <Constant key="Parameter_5093" name="p19" value="0.1373"/>
          <Constant key="Parameter_5095" name="p20" value="7.38"/>
          <Constant key="Parameter_5100" name="p23" value="0.586497"/>
          <Constant key="Parameter_5101" name="p29" value="0.117299"/>
          <Constant key="Parameter_5102" name="p5" value="0.563"/>
          <Constant key="Parameter_5098" name="pH" value="7.34378"/>
        </ListOfConstants>
        <KineticLaw function="Function_53" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_443">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_444">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_445">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_446">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_447">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_448">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_449">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_450">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_451">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="KsKg" reversible="false" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:name>KsKg</celldesigner:name>
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="K_sal" alias="sa9">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="K_git" alias="sa7">
      <celldesigner:linkAnchor position="N"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="1">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
      <celldesigner:lineDirection index="1" value="unknown"/>
      <celldesigner:lineDirection index="2" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.9285617172983667,0.14988594649304332 0.9820384609574457,0.11127392480021747</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5099" name="p32" value="1.31"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_440">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_438">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_441">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="KtKe" reversible="false" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:name>KtKe</celldesigner:name>
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="K_tiss" alias="sa8">
      <celldesigner:linkAnchor position="N"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="K_ECF" alias="sa4">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="1">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
      <celldesigner:lineDirection index="1" value="unknown"/>
      <celldesigner:lineDirection index="2" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.008139319966319558,0.07543759968784203 0.04272287292666377,0.10328516371054386</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="INHIBITION" modifiers="K_git" aliases="sa7" targetLineIndex="-1,5">
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="K_git" alias="sa7">
        <celldesigner:linkAnchor position="W"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5103" name="p10" value="1400"/>
          <Constant key="Parameter_5105" name="p15" value="32"/>
          <Constant key="Parameter_5104" name="p26" value="49.0279"/>
          <Constant key="Parameter_5106" name="p27" value="0.232635"/>
          <Constant key="Parameter_5107" name="p38" value="1509.6"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_467">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_468">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_469">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_470">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_471">
              <SourceParameter reference="ModelValue_66"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_472">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_473">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_474">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_475">
              <SourceParameter reference="ModelValue_69"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="MaSnk" reversible="false" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:name>MaSnk</celldesigner:name>
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="met_act" alias="sa23">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="snk_metact" alias="sa33">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="1">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
      <celldesigner:lineDirection index="1" value="unknown"/>
      <celldesigner:lineDirection index="2" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.6143020952778082,-0.3848639633065769 0.7831752319399508,-0.34608568748045343</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5108" name="p44" value="1.2"/>
        </ListOfConstants>
        <KineticLaw function="Function_56" unitType="Default" scalingCompartment="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_424">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_465">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="SnkGb" reversible="false" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:name>SnkGb</celldesigner:name>
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="Gluc_b" alias="sa29">
      <celldesigner:linkAnchor position="N"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s24" alias="sa48">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="2">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
      <celldesigner:lineDirection index="1" value="unknown"/>
      <celldesigner:lineDirection index="2" value="unknown"/>
      <celldesigner:lineDirection index="3" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.13160810109053145,0.3022156828803876 0.8742599965379954,0.04375973688765722 0.921412497836247,0.027349835554786095</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="PHYSICAL_STIMULATION" modifiers="Gluc_prod" aliases="sa46" targetLineIndex="-1,3">
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="Gluc_prod" alias="sa46">
        <celldesigner:linkAnchor position="S"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5109" name="p28" value="25"/>
          <Constant key="Parameter_5110" name="p47" value="72"/>
          <Constant key="Parameter_5111" name="p55" value="0"/>
          <Constant key="Parameter_5118" name="p58" value="0.01"/>
          <Constant key="Parameter_5117" name="p59" value="1"/>
          <Constant key="Parameter_5116" name="p66" value="1.4"/>
        </ListOfConstants>
        <KineticLaw function="Function_57" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_491">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_492">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_493">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_494">
              <SourceParameter reference="ModelValue_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_495">
              <SourceParameter reference="ModelValue_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_496">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_497">
              <SourceParameter reference="ModelValue_60"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_498">
              <SourceParameter reference="ModelValue_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_499">
              <SourceParameter reference="ModelValue_64"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="SnkIn" reversible="false" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:name>SnkIn</celldesigner:name>
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="ins_b" alias="sa36">
      <celldesigner:linkAnchor position="N"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="snk_insnew" alias="sa38">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="1">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
      <celldesigner:lineDirection index="1" value="unknown"/>
      <celldesigner:lineDirection index="2" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.6143020952778073,-0.3848639633065769 0.7831752319399565,-0.34608568748045343</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5115" name="p41" value="20"/>
        </ListOfConstants>
        <KineticLaw function="Function_58" unitType="Default" scalingCompartment="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Compartments[extracell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_489">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_490">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_461">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="SrcGb" reversible="false" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:name>SrcGb</celldesigner:name>
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="src_Glucblood" alias="sa40">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="Gluc_b" alias="sa29">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="1">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
      <celldesigner:lineDirection index="1" value="unknown"/>
      <celldesigner:lineDirection index="2" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.6583690987124466,0.4051502145922745 0.7665236051502142,0.37939914163090105</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5113" name="Gluc_feed" value="41.6325"/>
          <Constant key="Parameter_5112" name="p48" value="0.08"/>
        </ListOfConstants>
        <KineticLaw function="Function_59" unitType="Default" scalingCompartment="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Compartments[extracell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_509">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_510">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_511">
              <SourceParameter reference="ModelValue_31"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="SrcGp" reversible="false" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:name>SrcGp</celldesigner:name>
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s23" alias="sa47">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="Gluc_prod" alias="sa46">
      <celldesigner:linkAnchor position="N"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="1">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
      <celldesigner:lineDirection index="1" value="unknown"/>
      <celldesigner:lineDirection index="2" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.825574511597869,-0.2603734998116356 0.9360099025886659,-0.20289543081642547</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5123" name="Gluc_feed" value="41.6325"/>
          <Constant key="Parameter_5120" name="p48" value="0.08"/>
        </ListOfConstants>
        <KineticLaw function="Function_60" unitType="Default" scalingCompartment="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_515">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_516">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_517">
              <SourceParameter reference="ModelValue_31"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="SrcIn" reversible="false" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:name>SrcIn</celldesigner:name>
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="src_insnew" alias="sa37">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="ins_b" alias="sa36">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="1">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
      <celldesigner:lineDirection index="1" value="unknown"/>
      <celldesigner:lineDirection index="2" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.2168247680600448,-0.3460856874804543 0.38569790472219356,-0.3848639633065769</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="PHYSICAL_STIMULATION" modifiers="Gluc_b" aliases="sa29" targetLineIndex="-1,3">
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="Gluc_b" alias="sa29">
        <celldesigner:linkAnchor position="N"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5121" name="p49" value="800"/>
        </ListOfConstants>
        <KineticLaw function="Function_61" unitType="Default" scalingCompartment="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Compartments[extracell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_521">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_522">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_523">
              <SourceParameter reference="ModelValue_32"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Compartments[default]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Compartments[intracell]" value="10.199999999999999" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Compartments[extracell]" value="22.800000000000001" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Compartments[extracell],Vector=Metabolites[K_ECF]" value="2.4047129130577424e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Compartments[intracell],Vector=Metabolites[K_ICF]" value="5.5118999882470668e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Compartments[default],Vector=Metabolites[K_urin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Compartments[default],Vector=Metabolites[K_tiss]" value="9.0910238377271999e+26" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Compartments[default],Vector=Metabolites[K_sal]" value="2.7329613494820496e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Compartments[default],Vector=Metabolites[met_act]" value="3.7631462621476394e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Compartments[default],Vector=Metabolites[K_milk]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Compartments[extracell],Vector=Metabolites[K_ECF_mmol]" value="6.1504283128876242e+25" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Compartments[intracell],Vector=Metabolites[K_ICF_mmol]" value="1.4097543852922165e+26" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Compartments[default],Vector=Metabolites[K_git]" value="2.5977441598733848e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Compartments[extracell],Vector=Metabolites[Gluc_b]" value="7.5046205068529535e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Compartments[extracell],Vector=Metabolites[ins_b]" value="3.0005626092088779e+26" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Compartments[default],Vector=Metabolites[Gluc_stor]" value="2.1967244689586992e+27" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Compartments[default],Vector=Metabolites[Gluc_prod]" value="2.0495584549916163e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Compartments[default],Vector=Metabolites[src_metact]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Compartments[default],Vector=Metabolites[snk_metact]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Compartments[default],Vector=Metabolites[src_Kgit]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Compartments[extracell],Vector=Metabolites[src_Glucb]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Compartments[default],Vector=Metabolites[src_Gprod]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Compartments[default],Vector=Metabolites[snk_Kecf]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Compartments[default],Vector=Metabolites[Gluc_use]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Compartments[extracell],Vector=Metabolites[src_ins]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Compartments[extracell],Vector=Metabolites[snk_ins]" value="0" type="Species" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p3]" value="22" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p4]" value="0.0001783" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p5]" value="0.56299999999999994" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p6]" value="0.050999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p8]" value="0.59940000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p9]" value="0.40160000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p13]" value="6.0800000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p14]" value="0.15639932000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p15]" value="32" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p16]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p18]" value="0.0223" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p19]" value="0.13730000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p20]" value="7.3799999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p21]" value="0.1085" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p22]" value="0.25" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p23]" value="0.58649744999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p24]" value="0.19628114660000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p25]" value="6.6085000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p26]" value="49.027900000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p27]" value="0.23263488500000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p29]" value="0.11729949000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p30]" value="0.94999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p31]" value="0.35299999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p32]" value="1.3100000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p33]" value="0.078199660000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[pH]" value="7.3437787179216576" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[src_metact]" value="4.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[T_src_metact]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[snc_metact]" value="1.2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[basic_metact]" value="3" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[src_glucfeed]" value="0.085400000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[scale_blood_gluc]" value="0.080000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p49]" value="800" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p41]" value="20" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[Pi]" value="3.1415926535900001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[dmi]" value="487.5" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[K_feed]" value="5.5428749999999996" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[Gluc_feed]" value="41.6325" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[kmilk_content]" value="1.3999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[basal_KeKu]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[dmi_percentage]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[Milk_in_l/h]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[perctK_in_dmi]" value="0.01137" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[con]" value="0.039098300000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p1]" value="40.399999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p11]" value="860" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p12]" value="0.010500000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p17]" value="16" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p28]" value="25" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p37]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p39]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p50]" value="0.40000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p7]" value="0.92500000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p51]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p57]" value="3800" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p59]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p60]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p61]" value="5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p40]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p47]" value="72" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p58]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p63]" value="800" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p64]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p65]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p66]" value="1.3999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p2]" value="1600" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p10]" value="1400" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p35]" value="100" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p62]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p38]" value="1509.5999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p36]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[amount to particle factor]" value="6.0221408570000002e+23" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[DmMa]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[DmMa],ParameterGroup=Parameters,Parameter=dmi" value="487.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[dmi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[DmMa],ParameterGroup=Parameters,Parameter=p42" value="4.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[src_metact],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[DmMa],ParameterGroup=Parameters,Parameter=p43" value="10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[T_src_metact],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[DmMa],ParameterGroup=Parameters,Parameter=p45" value="3" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[basic_metact],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[GbGs]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[GbGs],ParameterGroup=Parameters,Parameter=Gluc_feed" value="41.6325" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[Gluc_feed],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[GbGs],ParameterGroup=Parameters,Parameter=p1" value="40.399999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[GbGs],ParameterGroup=Parameters,Parameter=p12" value="0.010500000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p12],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[GbGs],ParameterGroup=Parameters,Parameter=p36" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p36],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[GbGs],ParameterGroup=Parameters,Parameter=p55" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[Milk_in_l/h],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[GbGs],ParameterGroup=Parameters,Parameter=p57" value="3800" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p57],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[GpGb]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[GpGb],ParameterGroup=Parameters,Parameter=p37" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p37],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[GpGb],ParameterGroup=Parameters,Parameter=p39" value="30" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p39],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[GpGb],ParameterGroup=Parameters,Parameter=p50" value="0.40000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p50],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[GpGs]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[GpGs],ParameterGroup=Parameters,Parameter=p51" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p51],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[GpGs],ParameterGroup=Parameters,Parameter=p55" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[Milk_in_l/h],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[GpGs],ParameterGroup=Parameters,Parameter=p57" value="3800" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p57],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[GpGs],ParameterGroup=Parameters,Parameter=p62" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p62],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[GsGb]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[GsGb],ParameterGroup=Parameters,Parameter=Gluc_feed" value="41.6325" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[Gluc_feed],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[GsGb],ParameterGroup=Parameters,Parameter=p1" value="40.399999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[GsGb],ParameterGroup=Parameters,Parameter=p17" value="16" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p17],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[GsGb],ParameterGroup=Parameters,Parameter=p35" value="100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p35],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[GsGb],ParameterGroup=Parameters,Parameter=p55" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[Milk_in_l/h],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[GsGb],ParameterGroup=Parameters,Parameter=p63" value="800" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p63],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[GsGb],ParameterGroup=Parameters,Parameter=p64" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p64],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[GsGb],ParameterGroup=Parameters,Parameter=p65" value="0.29999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p65],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[GsGb],ParameterGroup=Parameters,Parameter=p7" value="0.92500000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[GsGp]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[GsGp],ParameterGroup=Parameters,Parameter=Gluc_feed" value="41.6325" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[Gluc_feed],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[GsGp],ParameterGroup=Parameters,Parameter=p35" value="100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p35],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[GsGp],ParameterGroup=Parameters,Parameter=p60" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p60],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[GsGp],ParameterGroup=Parameters,Parameter=p61" value="5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p61],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[KeKi]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[KeKi],ParameterGroup=Parameters,Parameter=p20" value="7.3799999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p20],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[KeKi],ParameterGroup=Parameters,Parameter=p21" value="0.1085" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p21],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[KeKi],ParameterGroup=Parameters,Parameter=p3" value="22" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[KeKi],ParameterGroup=Parameters,Parameter=p33" value="0.078199660000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p33],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[KeKi],ParameterGroup=Parameters,Parameter=p8" value="0.59940000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p8],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[KeKi],ParameterGroup=Parameters,Parameter=p9" value="0.40160000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p9],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[KeKi],ParameterGroup=Parameters,Parameter=pH" value="7.3437787179216576" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[pH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[KeKs]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[KeKs],ParameterGroup=Parameters,Parameter=dmi" value="487.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[dmi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[KeKs],ParameterGroup=Parameters,Parameter=p18" value="0.0223" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p18],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[KeKt]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[KeKt],ParameterGroup=Parameters,Parameter=p10" value="1400" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p10],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[KeKt],ParameterGroup=Parameters,Parameter=p15" value="32" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p15],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[KeKt],ParameterGroup=Parameters,Parameter=p2" value="1600" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[KeKt],ParameterGroup=Parameters,Parameter=p25" value="6.6085000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p25],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[KeKu]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[KeKu],ParameterGroup=Parameters,Parameter=p13" value="6.0800000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[KeKu],ParameterGroup=Parameters,Parameter=p16" value="10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p16],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[KeKu],ParameterGroup=Parameters,Parameter=p22" value="0.25" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p22],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[KeKu],ParameterGroup=Parameters,Parameter=p24" value="0.19628114660000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p24],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[KeKu],ParameterGroup=Parameters,Parameter=p53" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[basal_KeKu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[KeKu],ParameterGroup=Parameters,Parameter=p6" value="0.050999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[KeMi]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[KeMi],ParameterGroup=Parameters,Parameter=p40" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p40],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[KeMi],ParameterGroup=Parameters,Parameter=p52" value="1.3999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[kmilk_content],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[KeMi],ParameterGroup=Parameters,Parameter=p55" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[Milk_in_l/h],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[KeR]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[KeR],ParameterGroup=Parameters,Parameter=k1" value="0.0001783" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[KfKg]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[KfKg],ParameterGroup=Parameters,Parameter=K_feed" value="5.5428749999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[K_feed],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[KfKg],ParameterGroup=Parameters,Parameter=p30" value="0.94999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p30],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[KgKe]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[KgKe],ParameterGroup=Parameters,Parameter=p31" value="0.35299999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p31],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[KiKe]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[KiKe],ParameterGroup=Parameters,Parameter=p14" value="0.15639932000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p14],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[KiKe],ParameterGroup=Parameters,Parameter=p19" value="0.13730000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p19],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[KiKe],ParameterGroup=Parameters,Parameter=p20" value="7.3799999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p20],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[KiKe],ParameterGroup=Parameters,Parameter=p23" value="0.58649744999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p23],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[KiKe],ParameterGroup=Parameters,Parameter=p29" value="0.11729949000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p29],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[KiKe],ParameterGroup=Parameters,Parameter=p5" value="0.56299999999999994" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[KiKe],ParameterGroup=Parameters,Parameter=pH" value="7.3437787179216576" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[pH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[KsKg]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[KsKg],ParameterGroup=Parameters,Parameter=p32" value="1.3100000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p32],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[KtKe]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[KtKe],ParameterGroup=Parameters,Parameter=p10" value="1400" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p10],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[KtKe],ParameterGroup=Parameters,Parameter=p15" value="32" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p15],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[KtKe],ParameterGroup=Parameters,Parameter=p26" value="49.027900000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p26],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[KtKe],ParameterGroup=Parameters,Parameter=p27" value="0.23263488500000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p27],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[KtKe],ParameterGroup=Parameters,Parameter=p38" value="1509.5999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p38],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[MaSnk]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[MaSnk],ParameterGroup=Parameters,Parameter=p44" value="1.2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[snc_metact],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[SnkGb]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[SnkGb],ParameterGroup=Parameters,Parameter=p28" value="25" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p28],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[SnkGb],ParameterGroup=Parameters,Parameter=p47" value="72" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p47],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[SnkGb],ParameterGroup=Parameters,Parameter=p55" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[Milk_in_l/h],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[SnkGb],ParameterGroup=Parameters,Parameter=p58" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p58],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[SnkGb],ParameterGroup=Parameters,Parameter=p59" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p59],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[SnkGb],ParameterGroup=Parameters,Parameter=p66" value="1.3999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p66],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[SnkIn]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[SnkIn],ParameterGroup=Parameters,Parameter=p41" value="20" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p41],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[SrcGb]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[SrcGb],ParameterGroup=Parameters,Parameter=Gluc_feed" value="41.6325" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[Gluc_feed],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[SrcGb],ParameterGroup=Parameters,Parameter=p48" value="0.080000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[scale_blood_gluc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[SrcGp]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[SrcGp],ParameterGroup=Parameters,Parameter=Gluc_feed" value="41.6325" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[Gluc_feed],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[SrcGp],ParameterGroup=Parameters,Parameter=p48" value="0.080000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[scale_blood_gluc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[SrcIn]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Reactions[SrcIn],ParameterGroup=Parameters,Parameter=p49" value="800" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[p49],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_20"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="ModelValue_25"/>
      <StateTemplateVariable objectReference="ModelValue_35"/>
      <StateTemplateVariable objectReference="ModelValue_36"/>
      <StateTemplateVariable objectReference="ModelValue_37"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_18"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_22"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
      <StateTemplateVariable objectReference="Compartment_2"/>
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
      <StateTemplateVariable objectReference="ModelValue_26"/>
      <StateTemplateVariable objectReference="ModelValue_27"/>
      <StateTemplateVariable objectReference="ModelValue_28"/>
      <StateTemplateVariable objectReference="ModelValue_29"/>
      <StateTemplateVariable objectReference="ModelValue_30"/>
      <StateTemplateVariable objectReference="ModelValue_31"/>
      <StateTemplateVariable objectReference="ModelValue_32"/>
      <StateTemplateVariable objectReference="ModelValue_33"/>
      <StateTemplateVariable objectReference="ModelValue_34"/>
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
    </StateTemplate>
    <InitialState type="initialState">
      0 2.4047129130577424e+24 7.5046205068529535e+24 2.0495584549916163e+25 2.5977441598733848e+25 3.7631462621476394e+24 3.0005626092088779e+26 2.1967244689586992e+27 5.5118999882470668e+24 9.0910238377271999e+26 2.7329613494820496e+24 0 0 0 1.4097543852922165e+26 6.1504283128876242e+25 7.3437787179216576 487.5 5.5428749999999996 41.6325 0 0 0 0 0 0 0 0 1 10.199999999999999 22.800000000000001 22 0.0001783 0.56299999999999994 0.050999999999999997 0.59940000000000004 0.40160000000000001 6.0800000000000001 0.15639932000000001 32 10 0.0223 0.13730000000000001 7.3799999999999999 0.1085 0.25 0.58649744999999998 0.19628114660000001 6.6085000000000003 49.027900000000002 0.23263488500000001 0.11729949000000001 0.94999999999999996 0.35299999999999998 1.3100000000000001 0.078199660000000004 4.5 10 1.2 3 0.085400000000000004 0.080000000000000002 800 20 3.1415926535900001 1.3999999999999999 0.01 1 0 0.01137 0.039098300000000002 40.399999999999999 860 0.010500000000000001 16 25 0 30 0.40000000000000002 0.92500000000000004 0.10000000000000001 3800 1 2 5 0.01 72 0.01 800 0.20000000000000001 0.29999999999999999 1.3999999999999999 1600 1400 100 1 1509.5999999999999 1 6.0221408570000002e+23 
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
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="2"/>
        <Parameter name="Duration" type="float" value="200"/>
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
  <ListOfPlots>
    <PlotSpecification name="Concentrations, Volumes, and Global Quantity Values" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[pH]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Values[pH],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Gluc_b]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Compartments[extracell],Vector=Metabolites[Gluc_b],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[K_ECF_mmol]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Compartments[extracell],Vector=Metabolites[K_ECF_mmol],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[K_sal]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Potassium balance in lactating and non-lactating dairy cows,Vector=Compartments[default],Vector=Metabolites[K_sal],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <ListOfLayouts xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <Layout key="Layout_2" name="Layout">
      <Dimensions width="1081" height="940"/>
      <ListOfCompartmentGlyphs>
        <CompartmentGlyph key="Layout_3" name="CompartmentGlyph" compartment="Compartment_1">
          <BoundingBox>
            <Position x="869" y="610"/>
            <Dimensions width="162" height="171"/>
          </BoundingBox>
        </CompartmentGlyph>
        <CompartmentGlyph key="Layout_4" name="CompartmentGlyph_1" compartment="Compartment_2">
          <BoundingBox>
            <Position x="284" y="28"/>
            <Dimensions width="315" height="561"/>
          </BoundingBox>
        </CompartmentGlyph>
      </ListOfCompartmentGlyphs>
      <ListOfMetabGlyphs>
        <MetaboliteGlyph key="Layout_5" name="SpeciesGlyph" metabolite="Metabolite_0">
          <BoundingBox>
            <Position x="387" y="429.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_6" name="SpeciesGlyph_1" metabolite="Metabolite_1">
          <BoundingBox>
            <Position x="915" y="657.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_7" name="SpeciesGlyph_2" metabolite="Metabolite_2">
          <BoundingBox>
            <Position x="759" y="480.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_8" name="SpeciesGlyph_3" metabolite="Metabolite_3">
          <BoundingBox>
            <Position x="612" y="462.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_9" name="SpeciesGlyph_4" metabolite="Metabolite_4">
          <BoundingBox>
            <Position x="867" y="396.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_10" name="SpeciesGlyph_5" metabolite="Metabolite_19">
          <BoundingBox>
            <Position x="902" y="565"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_11" name="SpeciesGlyph_6" metabolite="Metabolite_5">
          <BoundingBox>
            <Position x="145" y="487.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_12" name="SpeciesGlyph_7" metabolite="Metabolite_10">
          <BoundingBox>
            <Position x="385" y="341"/>
            <Dimensions width="74" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_13" name="SpeciesGlyph_8" metabolite="Metabolite_14">
          <BoundingBox>
            <Position x="72" y="521"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_14" name="SpeciesGlyph_9" metabolite="Metabolite_15">
          <BoundingBox>
            <Position x="129" y="539"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_15" name="SpeciesGlyph_10" metabolite="Metabolite_11">
          <BoundingBox>
            <Position x="387" y="132.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_16" name="SpeciesGlyph_11" metabolite="Metabolite_21">
          <BoundingBox>
            <Position x="443" y="184"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_17" name="SpeciesGlyph_12" metabolite="Metabolite_22">
          <BoundingBox>
            <Position x="443" y="76"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_18" name="SpeciesGlyph_13" metabolite="Metabolite_17">
          <BoundingBox>
            <Position x="332" y="394"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_19" name="SpeciesGlyph_14" metabolite="Metabolite_16">
          <BoundingBox>
            <Position x="857" y="463"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_20" name="SpeciesGlyph_15" metabolite="Metabolite_6">
          <BoundingBox>
            <Position x="612" y="573.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_21" name="SpeciesGlyph_16" metabolite="Metabolite_7">
          <BoundingBox>
            <Position x="483" y="342.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_22" name="SpeciesGlyph_17" metabolite="Metabolite_8">
          <BoundingBox>
            <Position x="915" y="708.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_23" name="SpeciesGlyph_18" metabolite="Metabolite_9">
          <BoundingBox>
            <Position x="705" y="429.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_24" name="SpeciesGlyph_19" metabolite="Metabolite_12">
          <BoundingBox>
            <Position x="66" y="312.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_25" name="SpeciesGlyph_20" metabolite="Metabolite_13">
          <BoundingBox>
            <Position x="186" y="195.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_26" name="SpeciesGlyph_21" metabolite="Metabolite_18">
          <BoundingBox>
            <Position x="131" y="160"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_27" name="SpeciesGlyph_22" metabolite="Metabolite_20">
          <BoundingBox>
            <Position x="170" y="247"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
      </ListOfMetabGlyphs>
      <ListOfReactionGlyphs>
        <ReactionGlyph key="Layout_28" name="ReactionGlyph" reaction="Reaction_0">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="90.514851485148682" y="499.85148514851494"/>
                <End x="92.594059405940698" y="498.05940594059416"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_29" name="SpeciesReferenceGlyph" metaboliteGlyph="Layout_13" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="90.514851485148682" y="499.85148514851494"/>
                    <End x="88.435643564356667" y="501.64356435643572"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="88.435643564356667" y="501.64356435643572"/>
                    <End x="87" y="521"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_30" name="SpeciesReferenceGlyph_1" metaboliteGlyph="Layout_11" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="92.594059405940698" y="498.05940594059416"/>
                    <End x="94.673267326732713" y="496.26732673267333"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="94.673267326732713" y="496.26732673267333"/>
                    <End x="145" y="500"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_31" name="ReactionGlyph_1" reaction="Reaction_1">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="40.999999999999936" y="354.00000000000006"/>
                <End x="40.999999999999964" y="353.00000000000006"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_32" name="SpeciesReferenceGlyph_2" metaboliteGlyph="Layout_12" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="40.999999999999936" y="354.00000000000006"/>
                    <End x="40.999999999999915" y="355.00000000000006"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="40.999999999999915" y="355.00000000000006"/>
                    <End x="385" y="355"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_33" name="SpeciesReferenceGlyph_3" metaboliteGlyph="Layout_24" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="40.999999999999964" y="353.00000000000006"/>
                    <End x="40.999999999999986" y="352.00000000000006"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="40.999999999999986" y="352.00000000000006"/>
                    <End x="101.00000000000003" y="352.00000000000006"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="101.00000000000003" y="352.00000000000006"/>
                    <End x="101" y="337.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_34" name="SpeciesReferenceGlyph_4" metaboliteGlyph="Layout_15" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="387" y="145"/>
                    <End x="34.689787090897269" y="145.06839088668997"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="34.689787090897269" y="145.06839088668997"/>
                    <End x="45.749999999999957" y="353.75000000000017"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_35" name="SpeciesReferenceGlyph_5" metaboliteGlyph="Layout_25" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="186" y="208"/>
                    <End x="37.754727317626575" y="208.00875158132541"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="37.754727317626575" y="208.00875158132541"/>
                    <End x="35.749999999999957" y="353.74999999999994"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_36" name="ReactionGlyph_2" reaction="Reaction_2">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="273" y="207.99999999999994"/>
                <End x="277" y="207.99999999999994"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_37" name="SpeciesReferenceGlyph_6" metaboliteGlyph="Layout_25" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="273" y="207.99999999999994"/>
                    <End x="268.99999999999994" y="207.99999999999991"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="268.99999999999994" y="207.99999999999991"/>
                    <End x="256" y="208"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_38" name="SpeciesReferenceGlyph_7" metaboliteGlyph="Layout_12" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="277" y="207.99999999999994"/>
                    <End x="281" y="207.99999999999994"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="281" y="207.99999999999994"/>
                    <End x="419" y="208"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="419" y="208"/>
                    <End x="422" y="341"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_39" name="ReactionGlyph_3" reaction="Reaction_3">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="49.000000000000071" y="321"/>
                <End x="51.000000000000057" y="323"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_40" name="SpeciesReferenceGlyph_8" metaboliteGlyph="Layout_25" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="49.000000000000071" y="321"/>
                    <End x="47.000000000000085" y="319"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="47.000000000000085" y="319"/>
                    <End x="47.000000000000071" y="210.99999999999997"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="47.000000000000071" y="210.99999999999997"/>
                    <End x="186" y="208"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_41" name="SpeciesReferenceGlyph_9" metaboliteGlyph="Layout_24" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="51.000000000000057" y="323"/>
                    <End x="53.000000000000043" y="325"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="53.000000000000043" y="325"/>
                    <End x="66" y="325"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_42" name="ReactionGlyph_4" reaction="Reaction_4">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="103" y="296.00000000000006"/>
                <End x="105" y="294.00000000000006"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_43" name="SpeciesReferenceGlyph_10" metaboliteGlyph="Layout_24" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="103" y="296.00000000000006"/>
                    <End x="100.99999999999999" y="298.00000000000011"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="100.99999999999999" y="298.00000000000011"/>
                    <End x="101" y="312.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_44" name="SpeciesReferenceGlyph_11" metaboliteGlyph="Layout_12" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="105" y="294.00000000000006"/>
                    <End x="107" y="292"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="107" y="292"/>
                    <End x="413" y="291.99999999999989"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="413" y="291.99999999999989"/>
                    <End x="422" y="341"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_45" name="ReactionGlyph_5" reaction="Reaction_5">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="151" y="323"/>
                <End x="153" y="321"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_46" name="SpeciesReferenceGlyph_12" metaboliteGlyph="Layout_24" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="151" y="323"/>
                    <End x="148.99999999999997" y="324.99999999999994"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="148.99999999999997" y="324.99999999999994"/>
                    <End x="136" y="325"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_47" name="SpeciesReferenceGlyph_13" metaboliteGlyph="Layout_25" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="153" y="321"/>
                    <End x="155" y="319"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="155" y="319"/>
                    <End x="155" y="214"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="155" y="214"/>
                    <End x="186" y="208"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_48" name="ReactionGlyph_6" reaction="Reaction_6">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="950" y="142.99999999999997"/>
                <End x="950" y="146.99999999999997"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_49" name="SpeciesReferenceGlyph_14" metaboliteGlyph="Layout_5" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="950" y="142.99999999999997"/>
                    <End x="950" y="139"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="950" y="139"/>
                    <End x="950" y="25.000000000000114"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="950" y="25.000000000000114"/>
                    <End x="25.999999999999957" y="25.000000000000028"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="25.999999999999957" y="25.000000000000028"/>
                    <End x="25.999999999999993" y="442.00000000000011"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="25.999999999999993" y="442.00000000000011"/>
                    <End x="387" y="442"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_50" name="SpeciesReferenceGlyph_15" metaboliteGlyph="Layout_6" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="950" y="146.99999999999997"/>
                    <End x="950" y="150.99999999999994"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="950" y="150.99999999999994"/>
                    <End x="950" y="657.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_51" name="SpeciesReferenceGlyph_16" metaboliteGlyph="Layout_15" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="457" y="145"/>
                    <End x="946" y="145.99999999999997"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_52" name="ReactionGlyph_7" reaction="Reaction_7">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="898" y="533.00000000000011"/>
                <End x="900" y="531.00000000000011"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_53" name="SpeciesReferenceGlyph_17" metaboliteGlyph="Layout_5" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="898" y="533.00000000000011"/>
                    <End x="895.99999999999989" y="535.00000000000011"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="895.99999999999989" y="535.00000000000011"/>
                    <End x="430.99999999999989" y="535"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="430.99999999999989" y="535"/>
                    <End x="422" y="454.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_54" name="SpeciesReferenceGlyph_18" metaboliteGlyph="Layout_9" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="900" y="531.00000000000011"/>
                    <End x="902" y="529.00000000000011"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="902" y="529.00000000000011"/>
                    <End x="902" y="421.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_55" name="ReactionGlyph_8" reaction="Reaction_8">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="642.99999999999977" y="506"/>
                <End x="644.99999999999977" y="504"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_56" name="SpeciesReferenceGlyph_19" metaboliteGlyph="Layout_5" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="642.99999999999977" y="506"/>
                    <End x="640.99999999999977" y="508.00000000000006"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="640.99999999999977" y="508.00000000000006"/>
                    <End x="440" y="508"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="440" y="508"/>
                    <End x="422" y="454.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_57" name="SpeciesReferenceGlyph_20" metaboliteGlyph="Layout_8" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="644.99999999999977" y="504"/>
                    <End x="646.99999999999977" y="501.99999999999989"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="646.99999999999977" y="501.99999999999989"/>
                    <End x="647" y="487.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_58" name="SpeciesReferenceGlyph_21" metaboliteGlyph="Layout_23" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="740" y="454.5"/>
                    <End x="737.1367475633499" y="508.21262941179157"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="737.1367475633499" y="508.21262941179157"/>
                    <End x="643.79289321881322" y="512.57106781186553"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_59" name="ReactionGlyph_9" reaction="Reaction_9">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="790" y="523.99999999999977"/>
                <End x="792" y="521.99999999999977"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_60" name="SpeciesReferenceGlyph_22" metaboliteGlyph="Layout_5" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="790" y="523.99999999999977"/>
                    <End x="788" y="525.99999999999977"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="788" y="525.99999999999977"/>
                    <End x="434.00000000000011" y="525.99999999999989"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="434.00000000000011" y="525.99999999999989"/>
                    <End x="422" y="454.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_61" name="SpeciesReferenceGlyph_23" metaboliteGlyph="Layout_7" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="792" y="521.99999999999977"/>
                    <End x="794" y="519.99999999999977"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="794" y="519.99999999999977"/>
                    <End x="794" y="505.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_62" name="SpeciesReferenceGlyph_24" metaboliteGlyph="Layout_23" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="775" y="442"/>
                    <End x="842.38979553159254" y="445.2553589997359"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="842.38979553159254" y="445.2553589997359"/>
                    <End x="842.10275396258635" y="526.73945695146779"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="842.10275396258635" y="526.73945695146779"/>
                    <End x="787.25735931288068" y="519.96446609406701"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_63" name="ReactionGlyph_10" reaction="Reaction_10">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="643" y="555"/>
                <End x="645" y="557"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_64" name="SpeciesReferenceGlyph_25" metaboliteGlyph="Layout_5" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="643" y="555"/>
                    <End x="641" y="553"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="641" y="553"/>
                    <End x="425" y="553"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="425" y="553"/>
                    <End x="422" y="454.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_65" name="SpeciesReferenceGlyph_26" metaboliteGlyph="Layout_20" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="645" y="557"/>
                    <End x="647" y="559"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="647" y="559"/>
                    <End x="647" y="573.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_66" name="ReactionGlyph_11" reaction="Reaction_11">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="912.77903375163646" y="541.09196283168887"/>
                <End x="914.79372225947577" y="543.06833349299097"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_67" name="SpeciesReferenceGlyph_27" metaboliteGlyph="Layout_5" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="912.77903375163646" y="541.09196283168887"/>
                    <End x="910.76434524379727" y="539.11559217038666"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="910.76434524379727" y="539.11559217038666"/>
                    <End x="428.84395056997795" y="543.7424721397324"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="428.84395056997795" y="543.7424721397324"/>
                    <End x="422" y="454.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_68" name="SpeciesReferenceGlyph_28" metaboliteGlyph="Layout_10" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="914.79372225947577" y="543.06833349299097"/>
                    <End x="916.80841076731497" y="545.04470415429319"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="916.80841076731497" y="545.04470415429319"/>
                    <End x="917" y="565"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_69" name="ReactionGlyph_12" reaction="Reaction_12">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="868.96777392166609" y="441.37977193852265"/>
                <End x="866.89737233515143" y="439.50173525037195"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_70" name="SpeciesReferenceGlyph_29" metaboliteGlyph="Layout_19" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="868.96777392166609" y="441.37977193852265"/>
                    <End x="871.03817550818064" y="443.2578086266733"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="871.03817550818064" y="443.2578086266733"/>
                    <End x="872" y="463"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_71" name="SpeciesReferenceGlyph_30" metaboliteGlyph="Layout_23" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="866.89737233515143" y="439.50173525037195"/>
                    <End x="864.82697074863688" y="437.62369856222131"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="864.82697074863688" y="437.62369856222131"/>
                    <End x="775" y="442"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_72" name="ReactionGlyph_13" reaction="Reaction_13">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="738" y="513"/>
                <End x="736" y="515"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_73" name="SpeciesReferenceGlyph_31" metaboliteGlyph="Layout_23" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="738" y="513"/>
                    <End x="740" y="511"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="740" y="511"/>
                    <End x="740" y="454.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_74" name="SpeciesReferenceGlyph_32" metaboliteGlyph="Layout_5" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="736" y="515"/>
                    <End x="734.00000000000011" y="517"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="734.00000000000011" y="517"/>
                    <End x="437.00000000000006" y="517"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="437.00000000000006" y="517"/>
                    <End x="422" y="454.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_75" name="ReactionGlyph_14" reaction="Reaction_14">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="426.00000000000011" y="668.00000000000011"/>
                <End x="424.00000000000011" y="666.00000000000011"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_76" name="SpeciesReferenceGlyph_33" metaboliteGlyph="Layout_6" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="426.00000000000011" y="668.00000000000011"/>
                    <End x="428.00000000000011" y="670.00000000000011"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="428.00000000000011" y="670.00000000000011"/>
                    <End x="915" y="670"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_77" name="SpeciesReferenceGlyph_34" metaboliteGlyph="Layout_5" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="424.00000000000011" y="666.00000000000011"/>
                    <End x="422.00000000000017" y="664.00000000000011"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="422.00000000000017" y="664.00000000000011"/>
                    <End x="422" y="454.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_78" name="ReactionGlyph_15" reaction="Reaction_15">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="744" y="411"/>
                <End x="742" y="413"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_79" name="SpeciesReferenceGlyph_35" metaboliteGlyph="Layout_9" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="744" y="411"/>
                    <End x="746.00000000000011" y="409"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="746.00000000000011" y="409"/>
                    <End x="867" y="409"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_80" name="SpeciesReferenceGlyph_36" metaboliteGlyph="Layout_23" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="742" y="413"/>
                    <End x="740" y="415.00000000000006"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="740" y="415.00000000000006"/>
                    <End x="740" y="429.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_81" name="ReactionGlyph_16" reaction="Reaction_16">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="645" y="446.00000000000028"/>
                <End x="643" y="444.00000000000017"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_82" name="SpeciesReferenceGlyph_37" metaboliteGlyph="Layout_8" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="645" y="446.00000000000028"/>
                    <End x="647" y="448.00000000000045"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="647" y="448.00000000000045"/>
                    <End x="647" y="462.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_83" name="SpeciesReferenceGlyph_38" metaboliteGlyph="Layout_5" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="643" y="444.00000000000017"/>
                    <End x="641" y="442.00000000000006"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="641" y="442.00000000000006"/>
                    <End x="457" y="442"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_84" name="SpeciesReferenceGlyph_39" metaboliteGlyph="Layout_23" role="inhibitor">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="705" y="442"/>
                    <End x="637.42893218813447" y="446.20710678118655"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_85" name="ReactionGlyph_17" reaction="Reaction_17">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="181.35296570415923" y="548.14031064317726"/>
                <End x="179.63442093192955" y="550.20494110288735"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_86" name="SpeciesReferenceGlyph_40" metaboliteGlyph="Layout_11" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="181.35296570415923" y="548.14031064317726"/>
                    <End x="183.07151047638897" y="546.07568018346717"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="183.07151047638897" y="546.07568018346717"/>
                    <End x="180" y="512.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_87" name="SpeciesReferenceGlyph_41" metaboliteGlyph="Layout_14" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="179.63442093192955" y="550.20494110288735"/>
                    <End x="177.91587615969985" y="552.26957156259743"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="177.91587615969985" y="552.26957156259743"/>
                    <End x="159" y="554"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_88" name="ReactionGlyph_18" reaction="Reaction_18">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="227.44988748485372" y="262.19144884888362"/>
                <End x="223.52847498701749" y="262.16409901332884"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_89" name="SpeciesReferenceGlyph_42" metaboliteGlyph="Layout_12" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="227.44988748485372" y="262.19144884888362"/>
                    <End x="231.37129998268995" y="262.21879868443847"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="231.37129998268995" y="262.21879868443847"/>
                    <End x="416.65804050545262" y="263.51107841440199"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="416.65804050545262" y="263.51107841440199"/>
                    <End x="422" y="341"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_90" name="SpeciesReferenceGlyph_43" metaboliteGlyph="Layout_27" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="223.52847498701749" y="262.16409901332884"/>
                    <End x="219.60706248918126" y="262.13674917777394"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="219.60706248918126" y="262.13674917777394"/>
                    <End x="200" y="262"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_91" name="SpeciesReferenceGlyph_44" metaboliteGlyph="Layout_25" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="221" y="220.5"/>
                    <End x="227.44988748485375" y="257.19144884888362"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_92" name="ReactionGlyph_19" reaction="Reaction_19">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="420.64703429584074" y="96.859689356822685"/>
                <End x="422.36557906807047" y="94.795058897112483"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_93" name="SpeciesReferenceGlyph_45" metaboliteGlyph="Layout_15" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="420.64703429584074" y="96.859689356822685"/>
                    <End x="418.92848952361101" y="98.924319816532886"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="418.92848952361101" y="98.924319816532886"/>
                    <End x="422" y="132.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_94" name="SpeciesReferenceGlyph_46" metaboliteGlyph="Layout_17" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="422.36557906807047" y="94.795058897112483"/>
                    <End x="424.08412384030026" y="92.730428437402281"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="424.08412384030026" y="92.730428437402281"/>
                    <End x="443" y="91"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_95" name="ReactionGlyph_20" reaction="Reaction_20">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="419.52789699570815" y="405.01716738197428"/>
                <End x="421.34763948497846" y="403.06008583690988"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_96" name="SpeciesReferenceGlyph_47" metaboliteGlyph="Layout_18" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="419.52789699570815" y="405.01716738197428"/>
                    <End x="417.70815450643778" y="406.97424892703862"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="417.70815450643778" y="406.97424892703862"/>
                    <End x="362" y="409"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_97" name="SpeciesReferenceGlyph_48" metaboliteGlyph="Layout_12" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="421.34763948497846" y="403.06008583690988"/>
                    <End x="423.16738197424888" y="401.10300429184548"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="423.16738197424888" y="401.10300429184548"/>
                    <End x="422" y="369"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_98" name="ReactionGlyph_21" reaction="Reaction_21">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="217.68806845702599" y="178.20607071739948"/>
                <End x="219.5040094720413" y="180.11027393574079"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_99" name="SpeciesReferenceGlyph_49" metaboliteGlyph="Layout_26" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="217.68806845702599" y="178.20607071739948"/>
                    <End x="215.87212744201065" y="176.30186749905818"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="215.87212744201065" y="176.30186749905818"/>
                    <End x="161" y="175"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_100" name="SpeciesReferenceGlyph_50" metaboliteGlyph="Layout_25" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="219.5040094720413" y="180.11027393574079"/>
                    <End x="221.31995048705667" y="182.01447715408213"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="221.31995048705667" y="182.01447715408213"/>
                    <End x="221" y="195.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_101" name="ReactionGlyph_22" reaction="Reaction_22">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="422.36557906807047" y="195.20494110288746"/>
                <End x="420.64703429584074" y="193.14031064317726"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_102" name="SpeciesReferenceGlyph_51" metaboliteGlyph="Layout_16" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="422.36557906807047" y="195.20494110288746"/>
                    <End x="424.08412384030021" y="197.26957156259766"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="424.08412384030021" y="197.26957156259766"/>
                    <End x="443" y="199"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_103" name="SpeciesReferenceGlyph_52" metaboliteGlyph="Layout_15" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="420.64703429584074" y="193.14031064317726"/>
                    <End x="418.92848952361095" y="191.07568018346709"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="418.92848952361095" y="191.07568018346709"/>
                    <End x="422" y="157.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_104" name="SpeciesReferenceGlyph_53" metaboliteGlyph="Layout_12" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="422" y="341"/>
                    <End x="425.6570107377957" y="192.15046046810545"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
      </ListOfReactionGlyphs>
      <ListOfTextGlyphs>
        <TextGlyph key="Layout_105" name="TextGlyph" graphicalObject="Layout_3" text="intracell">
          <BoundingBox>
            <Position x="924" y="745.5"/>
            <Dimensions width="-762" height="-574.5"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_106" name="TextGlyph_1" graphicalObject="Layout_4" text="extracell">
          <BoundingBox>
            <Position x="414" y="553.5"/>
            <Dimensions width="-99" height="7.5"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_107" name="TextGlyph_2" graphicalObject="Layout_5" text="K_ECF">
          <BoundingBox>
            <Position x="387" y="429.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_108" name="TextGlyph_3" graphicalObject="Layout_6" text="K_ICF">
          <BoundingBox>
            <Position x="915" y="657.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_109" name="TextGlyph_4" graphicalObject="Layout_7" text="K_urin">
          <BoundingBox>
            <Position x="759" y="480.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_110" name="TextGlyph_5" graphicalObject="Layout_8" text="K_tiss">
          <BoundingBox>
            <Position x="612" y="462.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_111" name="TextGlyph_6" graphicalObject="Layout_9" text="K_sal">
          <BoundingBox>
            <Position x="867" y="396.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_112" name="TextGlyph_7" graphicalObject="Layout_11" text="met_act">
          <BoundingBox>
            <Position x="145" y="487.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_113" name="TextGlyph_8" graphicalObject="Layout_20" text="K_milk">
          <BoundingBox>
            <Position x="612" y="573.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_114" name="TextGlyph_9" graphicalObject="Layout_21" text="K_ECF_mmol">
          <BoundingBox>
            <Position x="483" y="342.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_115" name="TextGlyph_10" graphicalObject="Layout_22" text="K_ICF_mmol">
          <BoundingBox>
            <Position x="915" y="708.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_116" name="TextGlyph_11" graphicalObject="Layout_23" text="K_git">
          <BoundingBox>
            <Position x="705" y="429.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_117" name="TextGlyph_12" graphicalObject="Layout_12" text="Gluc_b">
          <BoundingBox>
            <Position x="385" y="341"/>
            <Dimensions width="74" height="28"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_118" name="TextGlyph_13" graphicalObject="Layout_15" text="ins_b">
          <BoundingBox>
            <Position x="387" y="132.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_119" name="TextGlyph_14" graphicalObject="Layout_24" text="Gluc_stor">
          <BoundingBox>
            <Position x="66" y="312.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_120" name="TextGlyph_15" graphicalObject="Layout_25" text="Gluc_prod">
          <BoundingBox>
            <Position x="186" y="195.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
      </ListOfTextGlyphs>
      <ListOfRenderInformation>
        <RenderInformation key="LocalRenderInformation_0" name="render info from CellDesigner" backgroundColor="#FFFFFFFF">
          <ListOfColorDefinitions>
            <ColorDefinition id="black" value="#000000"/>
            <ColorDefinition id="ColorDefinition" value="#cccc00"/>
            <ColorDefinition id="ColorDefinition_1" value="#cccc0023"/>
            <ColorDefinition id="ColorDefinition_2" value="#ffcccc"/>
            <ColorDefinition id="ColorDefinition_3" value="#cccccc7f"/>
            <ColorDefinition id="ColorDefinition_4" value="#ccff66"/>
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
                <Ellipse stroke="#000000" stroke-width="1" fill="#ffffff" cx="5" cy="5" rx="5" ry="5"/>
              </Group>
            </LineEnding>
            <LineEnding id="product_arrow" enableRotationalMapping="true">
              <BoundingBox>
                <Position x="-10" y="-5"/>
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
            <Style key="LocalStyle_4">
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
                <Rectangle stroke="ColorDefinition_1" stroke-width="12" x="0" y="0" width="162" height="171" rx="16.2" ry="16.2"/>
                <Rectangle stroke="ColorDefinition" stroke-width="2" x="-6" y="-6" width="174" height="183" rx="17.4" ry="17.4"/>
                <Rectangle stroke="ColorDefinition" stroke-width="1" x="6" y="6" width="150" height="159" rx="15" ry="15"/>
              </Group>
            </Style>
            <Style key="LocalStyle_9" keyList="Layout_4">
              <Group font-size="12">
                <Rectangle stroke="ColorDefinition_1" stroke-width="12" x="0" y="0" width="315" height="561" rx="31.5" ry="31.5"/>
                <Rectangle stroke="ColorDefinition" stroke-width="2" x="-6" y="-6" width="327" height="573" rx="32.7" ry="32.7"/>
                <Rectangle stroke="ColorDefinition" stroke-width="1" x="6" y="6" width="303" height="549" rx="30.3" ry="30.3"/>
              </Group>
            </Style>
            <Style key="LocalStyle_10" keyList="Layout_105">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="Arial" text-anchor="start" vtext-anchor="top">
              </Group>
            </Style>
            <Style key="LocalStyle_11" keyList="Layout_106">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="Arial" text-anchor="start" vtext-anchor="top">
              </Group>
            </Style>
            <Style key="LocalStyle_12" keyList="Layout_107">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_13" keyList="Layout_108">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_14" keyList="Layout_109">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_15" keyList="Layout_110">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_16" keyList="Layout_111">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_17" keyList="Layout_112">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_18" keyList="Layout_113">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_19" keyList="Layout_114">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_20" keyList="Layout_115">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_21" keyList="Layout_116">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_22" keyList="Layout_117">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_23" keyList="Layout_118">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_24" keyList="Layout_119">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_25" keyList="Layout_120">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_26" keyList="Layout_10">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="15" cy="15" rx="10.5" ry="10.5"/>
                <Curve stroke="#000000FF" stroke-width="2">
                  <ListOfElements>
                    <Element x="0" y="30"/>
                    <Element x="30" y="0"/>
                  </ListOfElements>
                </Curve>
              </Group>
            </Style>
            <Style key="LocalStyle_27" keyList="Layout_11">
              <Group>
                <Ellipse fill="ColorDefinition_3" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_28" keyList="Layout_8">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_4" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_29" keyList="Layout_9">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_4" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_30" keyList="Layout_5">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_4" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_31" keyList="Layout_6">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_4" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_32" keyList="Layout_7">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_4" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_33" keyList="Layout_12">
              <Group>
                <Ellipse fill="ColorDefinition_3" cx="37" cy="14" rx="37" ry="14"/>
              </Group>
            </Style>
            <Style key="LocalStyle_34" keyList="Layout_13">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="15" cy="15" rx="10.5" ry="10.5"/>
                <Curve stroke="#000000FF" stroke-width="2">
                  <ListOfElements>
                    <Element x="0" y="30"/>
                    <Element x="30" y="0"/>
                  </ListOfElements>
                </Curve>
              </Group>
            </Style>
            <Style key="LocalStyle_35" keyList="Layout_14">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="15" cy="15" rx="10.5" ry="10.5"/>
                <Curve stroke="#000000FF" stroke-width="2">
                  <ListOfElements>
                    <Element x="0" y="30"/>
                    <Element x="30" y="0"/>
                  </ListOfElements>
                </Curve>
              </Group>
            </Style>
            <Style key="LocalStyle_36" keyList="Layout_15">
              <Group>
                <Ellipse fill="ColorDefinition_3" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_37" keyList="Layout_16">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="15" cy="15" rx="10.5" ry="10.5"/>
                <Curve stroke="#000000FF" stroke-width="2">
                  <ListOfElements>
                    <Element x="0" y="30"/>
                    <Element x="30" y="0"/>
                  </ListOfElements>
                </Curve>
              </Group>
            </Style>
            <Style key="LocalStyle_38" keyList="Layout_17">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="15" cy="15" rx="10.5" ry="10.5"/>
                <Curve stroke="#000000FF" stroke-width="2">
                  <ListOfElements>
                    <Element x="0" y="30"/>
                    <Element x="30" y="0"/>
                  </ListOfElements>
                </Curve>
              </Group>
            </Style>
            <Style key="LocalStyle_39" keyList="Layout_18">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="15" cy="15" rx="10.5" ry="10.5"/>
                <Curve stroke="#000000FF" stroke-width="2">
                  <ListOfElements>
                    <Element x="0" y="30"/>
                    <Element x="30" y="0"/>
                  </ListOfElements>
                </Curve>
              </Group>
            </Style>
            <Style key="LocalStyle_40" keyList="Layout_19">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="15" cy="15" rx="10.5" ry="10.5"/>
                <Curve stroke="#000000FF" stroke-width="2">
                  <ListOfElements>
                    <Element x="0" y="30"/>
                    <Element x="30" y="0"/>
                  </ListOfElements>
                </Curve>
              </Group>
            </Style>
            <Style key="LocalStyle_41" keyList="Layout_20">
              <Group>
                <Ellipse fill="ColorDefinition_3" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_42" keyList="Layout_21">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_4" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_43" keyList="Layout_22">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_4" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_44" keyList="Layout_23">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_4" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_45" keyList="Layout_24">
              <Group>
                <Ellipse fill="ColorDefinition_3" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_46" keyList="Layout_25">
              <Group>
                <Ellipse fill="ColorDefinition_3" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_47" keyList="Layout_26">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="15" cy="15" rx="10.5" ry="10.5"/>
                <Curve stroke="#000000FF" stroke-width="2">
                  <ListOfElements>
                    <Element x="0" y="30"/>
                    <Element x="30" y="0"/>
                  </ListOfElements>
                </Curve>
              </Group>
            </Style>
            <Style key="LocalStyle_48" keyList="Layout_27">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="15" cy="15" rx="10.5" ry="10.5"/>
                <Curve stroke="#000000FF" stroke-width="2">
                  <ListOfElements>
                    <Element x="0" y="30"/>
                    <Element x="30" y="0"/>
                  </ListOfElements>
                </Curve>
              </Group>
            </Style>
          </ListOfStyles>
        </RenderInformation>
      </ListOfRenderInformation>
    </Layout>
  </ListOfLayouts>
  <SBMLReference file="MODEL1710230000_url.xml">
    <SBMLMap SBMLid="Gluc_b" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="Gluc_feed" COPASIkey="ModelValue_37"/>
    <SBMLMap SBMLid="Gluc_prod" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="Gluc_stor" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="K_ECF" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="K_ECF_mmol" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="K_ICF" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="K_ICF_mmol" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="K_feed" COPASIkey="ModelValue_36"/>
    <SBMLMap SBMLid="K_git" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="K_milk" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="K_sal" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="K_tiss" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="K_urin" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="Pi" COPASIkey="ModelValue_34"/>
    <SBMLMap SBMLid="c1" COPASIkey="Compartment_1"/>
    <SBMLMap SBMLid="c2" COPASIkey="Compartment_2"/>
    <SBMLMap SBMLid="default" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="dmi" COPASIkey="ModelValue_35"/>
    <SBMLMap SBMLid="ins_b" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="met_act" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="p1" COPASIkey="ModelValue_44"/>
    <SBMLMap SBMLid="p10" COPASIkey="ModelValue_66"/>
    <SBMLMap SBMLid="p11" COPASIkey="ModelValue_45"/>
    <SBMLMap SBMLid="p12" COPASIkey="ModelValue_46"/>
    <SBMLMap SBMLid="p13" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="p14" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="p15" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="p16" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="p17" COPASIkey="ModelValue_47"/>
    <SBMLMap SBMLid="p18" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="p19" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="p2" COPASIkey="ModelValue_65"/>
    <SBMLMap SBMLid="p20" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="p21" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="p22" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="p23" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="p24" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="p25" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="p26" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="p27" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="p28" COPASIkey="ModelValue_48"/>
    <SBMLMap SBMLid="p29" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="p3" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="p30" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="p31" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="p32" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="p33" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="p34" COPASIkey="ModelValue_43"/>
    <SBMLMap SBMLid="p35" COPASIkey="ModelValue_67"/>
    <SBMLMap SBMLid="p36" COPASIkey="ModelValue_70"/>
    <SBMLMap SBMLid="p37" COPASIkey="ModelValue_49"/>
    <SBMLMap SBMLid="p38" COPASIkey="ModelValue_69"/>
    <SBMLMap SBMLid="p39" COPASIkey="ModelValue_50"/>
    <SBMLMap SBMLid="p4" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="p40" COPASIkey="ModelValue_58"/>
    <SBMLMap SBMLid="p41" COPASIkey="ModelValue_33"/>
    <SBMLMap SBMLid="p42" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="p43" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="p44" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="p45" COPASIkey="ModelValue_29"/>
    <SBMLMap SBMLid="p46" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="p47" COPASIkey="ModelValue_59"/>
    <SBMLMap SBMLid="p48" COPASIkey="ModelValue_31"/>
    <SBMLMap SBMLid="p49" COPASIkey="ModelValue_32"/>
    <SBMLMap SBMLid="p5" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="p50" COPASIkey="ModelValue_51"/>
    <SBMLMap SBMLid="p51" COPASIkey="ModelValue_53"/>
    <SBMLMap SBMLid="p52" COPASIkey="ModelValue_38"/>
    <SBMLMap SBMLid="p53" COPASIkey="ModelValue_39"/>
    <SBMLMap SBMLid="p54" COPASIkey="ModelValue_40"/>
    <SBMLMap SBMLid="p55" COPASIkey="ModelValue_41"/>
    <SBMLMap SBMLid="p56" COPASIkey="ModelValue_42"/>
    <SBMLMap SBMLid="p57" COPASIkey="ModelValue_54"/>
    <SBMLMap SBMLid="p58" COPASIkey="ModelValue_60"/>
    <SBMLMap SBMLid="p59" COPASIkey="ModelValue_55"/>
    <SBMLMap SBMLid="p6" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="p60" COPASIkey="ModelValue_56"/>
    <SBMLMap SBMLid="p61" COPASIkey="ModelValue_57"/>
    <SBMLMap SBMLid="p62" COPASIkey="ModelValue_68"/>
    <SBMLMap SBMLid="p63" COPASIkey="ModelValue_61"/>
    <SBMLMap SBMLid="p64" COPASIkey="ModelValue_62"/>
    <SBMLMap SBMLid="p65" COPASIkey="ModelValue_63"/>
    <SBMLMap SBMLid="p66" COPASIkey="ModelValue_64"/>
    <SBMLMap SBMLid="p7" COPASIkey="ModelValue_52"/>
    <SBMLMap SBMLid="p8" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="p9" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="pH" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="parameter_1" COPASIkey="ModelValue_71"/>
    <SBMLMap SBMLid="re10" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="re11" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="re20" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="re21" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="re3" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="re31" COPASIkey="Reaction_22"/>
    <SBMLMap SBMLid="re32" COPASIkey="Reaction_19"/>
    <SBMLMap SBMLid="re33" COPASIkey="Reaction_20"/>
    <SBMLMap SBMLid="re34" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="re35" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="re36" COPASIkey="Reaction_21"/>
    <SBMLMap SBMLid="re37" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="re38" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="re39" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="re4" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="re40" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="re41" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="re43" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="re5" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="re6" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="re7" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="re8" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="re9" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="s23" COPASIkey="Metabolite_18"/>
    <SBMLMap SBMLid="s24" COPASIkey="Metabolite_20"/>
    <SBMLMap SBMLid="sa4_degraded" COPASIkey="Metabolite_19"/>
    <SBMLMap SBMLid="snk_insnew" COPASIkey="Metabolite_22"/>
    <SBMLMap SBMLid="snk_metact" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="src_Glucblood" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="src_Kgit" COPASIkey="Metabolite_16"/>
    <SBMLMap SBMLid="src_insnew" COPASIkey="Metabolite_21"/>
    <SBMLMap SBMLid="src_metact" COPASIkey="Metabolite_14"/>
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
    <UnitDefinition key="Unit_7" name="dimensionless" symbol="1">
      <Expression>
        1
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
