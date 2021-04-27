<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.29 (Build 228) (http://www.copasi.org) at 2020-08-23T18:31:36Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="29" versionDevel="228" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_6" name="Constant flux (irreversible)" type="PreDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_6">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-06-01T08:29:04Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        v
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_49" name="v" order="0" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
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
    <Function key="Function_40" name="Function for ATPase (ATP Consumption)" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-03-11T12:37:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        level*VR_cellcyto*X_atpase*(1/(1+exp(-((s30)-0.001)/0.0001)))/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_264" name="VR_cellcyto" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_263" name="X_atpase" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_262" name="c1" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_261" name="level" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_250" name="s30" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Function for re22" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_41">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-03-11T10:52:24Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        X_Lac*(1/K_Lac*s38*H_active-s52)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_269" name="H_active" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_268" name="K_Lac" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_267" name="X_Lac" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_266" name="c1" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_265" name="s38" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_270" name="s52" order="5" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="Function for Triosephosphate Isomerase" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_42">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-03-11T10:52:36Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Vf_tpi*s67/(Kmf_tpi+s67)*switch_kashi/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_276" name="Kmf_tpi" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_275" name="Vf_tpi" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_274" name="c1" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_273" name="s67" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_272" name="switch_kashi" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="Function for re48" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_43">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-03-11T10:52:23Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        X_up*(K_up*s72-s73*f_up_eq)/(1+Km_AMP_2^h/s35^h)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_280" name="K_up" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_279" name="Km_AMP_2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_278" name="X_up" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_277" name="c1" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_271" name="f_up_eq" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_281" name="h" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_282" name="s35" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_283" name="s72" order="7" role="substrate"/>
        <ParameterDescription key="FunctionParameter_284" name="s73" order="8" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="Function for re54" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_44">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-03-11T10:52:22Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        vf*s67*s63/(Kia_NADH*Km_DHAP+Km_DHAP*s63+Km_NADH*s67+s67*s63)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_293" name="Kia_NADH" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_292" name="Km_DHAP" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_291" name="Km_NADH" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_290" name="c1" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_289" name="s63" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_288" name="s67" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_287" name="vf" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="Function for re55" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_45">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-03-11T10:52:21Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        rateOf_re54/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_298" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_297" name="rateOf_re54" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="Function for Mitochondrial Oxidation of Pyruvate" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_46">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-03-11T11:54:37Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        rateOf_re46*(s31/(s31+Km_ADP))*(s65/(s65+Km_O2))/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_295" name="Km_ADP" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_296" name="Km_O2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_294" name="c1" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_285" name="rateOf_re46" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_286" name="s31" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_299" name="s65" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="Function for re58" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_47">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-03-11T10:52:19Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (Vf_GBPS*s68/(Kmf_GBPS*(1+Km_G1P/s72))-Vr_GBPS*s69/(Kmr_GBPS*(1+Km_GBP/s79)))/(1+s68/Kmf_GBPS+s69/Kmr_GBPS)*switch_kashi/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_305" name="Km_G1P" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_304" name="Km_GBP" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_303" name="Kmf_GBPS" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_302" name="Kmr_GBPS" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_301" name="Vf_GBPS" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_300" name="Vr_GBPS" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_306" name="c1" order="6" role="volume"/>
        <ParameterDescription key="FunctionParameter_307" name="s68" order="7" role="substrate"/>
        <ParameterDescription key="FunctionParameter_308" name="s69" order="8" role="product"/>
        <ParameterDescription key="FunctionParameter_309" name="s72" order="9" role="substrate"/>
        <ParameterDescription key="FunctionParameter_310" name="s79" order="10" role="product"/>
        <ParameterDescription key="FunctionParameter_311" name="switch_kashi" order="11" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="Function for re59" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_48">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-03-11T10:52:19Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        rateOf_re58/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_323" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_322" name="rateOf_re58" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="Function for re60" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_49">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-03-11T10:52:19Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        PS_ec*(s82-s65)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_320" name="PS_ec" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_321" name="s65" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_319" name="s82" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="Function for re61" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_50">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-03-11T10:52:18Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        PS_ve*(s81-s82)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_316" name="PS_ve" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_317" name="s81" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_318" name="s82" order="2" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="Function for re62" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <rdf:Description rdf:about="#Function_51">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2019-03-11T10:52:17Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k_a*s83*s65-k_d*s84)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_313" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_314" name="k_a" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_315" name="k_d" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_312" name="s65" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_324" name="s83" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_325" name="s84" order="5" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="Function for Phosphfructokinase [1]" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_52">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Vf_pfk*s58/(Kmf_pfk+s58)/(1+Km_ATP/s30)*switch_kashi/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_331" name="Km_ATP" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_330" name="Kmf_pfk" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_329" name="Vf_pfk" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_328" name="c1" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_327" name="s30" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_326" name="s58" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_332" name="switch_kashi" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="Function for Adenylate Kinase [1]" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_53">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        X_AK*(K_AK*s31*s31-s35*s30)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_339" name="K_AK" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_338" name="X_AK" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_337" name="c1" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_336" name="s30" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_335" name="s31" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_334" name="s35" order="5" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="Function for Glyceraldehyde 3-Phosphate Dehydrogenase [1]" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_54">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Vf_gapdh*s59/(Kmf_gapdh+s59)/(1+Km_NAD/s62)*switch_kashi/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_344" name="Km_NAD" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_343" name="Kmf_gapdh" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_342" name="Vf_gapdh" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_341" name="c1" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_340" name="s59" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_333" name="s62" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_345" name="switch_kashi" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="Function for Phosphoglucomutase [1]" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_55">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (Vf_pgm*s72/Kmf_pgm-Vr_pgm*s57/Kmr_pgm)/(1+s72/Kmf_pgm+s57/Kmr_pgm)*switch_GSGP/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_352" name="Kmf_pgm" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_351" name="Kmr_pgm" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_350" name="Vf_pgm" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_349" name="Vr_pgm" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_348" name="c1" order="4" role="volume"/>
        <ParameterDescription key="FunctionParameter_347" name="s57" order="5" role="product"/>
        <ParameterDescription key="FunctionParameter_346" name="s72" order="6" role="substrate"/>
        <ParameterDescription key="FunctionParameter_353" name="switch_GSGP" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="Function for Hexokinase [1]" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_56">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (Vf_hk*s56/(Kmf_hk*(1+Km_ATP/s30))-Vr_hk*s57/Kmr_hk)/(1+s56/Kmf_hk+s57/Kmr_hk)*switch_kashi/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_361" name="Km_ATP" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_360" name="Kmf_hk" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_359" name="Kmr_hk" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_358" name="Vf_hk" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_357" name="Vr_hk" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_356" name="c1" order="5" role="volume"/>
        <ParameterDescription key="FunctionParameter_355" name="s30" order="6" role="substrate"/>
        <ParameterDescription key="FunctionParameter_354" name="s56" order="7" role="substrate"/>
        <ParameterDescription key="FunctionParameter_362" name="s57" order="8" role="product"/>
        <ParameterDescription key="FunctionParameter_363" name="switch_kashi" order="9" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="Function for G6P Dehydrogenase [1]" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_57">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        0.095000000000000001*rateOf_re37/v_PGI_ss*switch_kashi/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_373" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_372" name="rateOf_re37" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_371" name="switch_kashi" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_370" name="v_PGI_ss" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_58" name="Function for Glycogen Synthase I-form [1]" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_58">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Vf_gs*s73/((Kmf_gs+s73)*(1+Km_AMP_2^h/s35^h))/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_366" name="Km_AMP_2" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_367" name="Kmf_gs" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_368" name="Vf_gs" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_369" name="c1" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_365" name="h" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_364" name="s35" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_374" name="s73" order="6" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_60" name="Function for Lactate Flux (in) [1]" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_60">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Vmax*s39/(Km+s39)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_390" name="Km" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_389" name="Vmax" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_388" name="s39" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_61" name="Function for Lactate Flux (out) [1]" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_61">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Vmax*s38/(Km+s38)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_385" name="Km" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_386" name="Vmax" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_387" name="s38" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_62" name="Function for Fructose-bisphosphate Aldolase [1]" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_62">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Vf_fbp*s66/(Kmf_fbp+s66)*switch_kashi/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_391" name="Kmf_fbp" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_383" name="Vf_fbp" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_384" name="c1" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_392" name="s66" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_393" name="switch_kashi" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_63" name="Function for Glycogen Synthase D-form [1]" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_63">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Vf_gs*s73/((Kmf_gs+s73)*(1+Km_AMP_2^h/s35^h))/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_398" name="Km_AMP_2" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_397" name="Kmf_gs" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_396" name="Vf_gs" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_395" name="c1" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_394" name="h" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_399" name="s35" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_400" name="s73" order="6" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_64" name="Function for Glycogen Phosphorylase [1]" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_64">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (Vf_gp*s36/Kmf_gp-Vr_gp*s72/Kmr_gp)/((1+s36/Kmf_gp+s72/Kmr_gp)*(1+Km_AMP_2^h/s35^h))/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_407" name="Km_AMP_2" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_406" name="Kmf_gp" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_405" name="Kmr_gp" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_404" name="Vf_gp" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_403" name="Vr_gp" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_402" name="c1" order="5" role="volume"/>
        <ParameterDescription key="FunctionParameter_401" name="h" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_408" name="s35" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_409" name="s36" order="8" role="substrate"/>
        <ParameterDescription key="FunctionParameter_410" name="s72" order="9" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_65" name="Function for Lactate Dehydrogenase [1]" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_65">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Vf_ldh*s61/(Kmf_ldh+s61)/(1+Km_NADH/s63)*switch_LDH/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_420" name="Km_NADH" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_419" name="Kmf_ldh" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_418" name="Vf_ldh" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_417" name="c1" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_416" name="s61" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_415" name="s63" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_414" name="switch_LDH" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_66" name="Function for Phosphoglucose Isomerase (forward) [1]" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_66">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (Vf_pgi*s57/Kmf_pgi-Vr_pgi*s58/Kmr_pgi)/(1+s57/Kmf_pgi+s58/Kmr_pgi)*switch_kashi/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_424" name="Kmf_pgi" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_423" name="Kmr_pgi" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_422" name="Vf_pgi" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_421" name="Vr_pgi" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_411" name="c1" order="4" role="volume"/>
        <ParameterDescription key="FunctionParameter_412" name="s57" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_413" name="s58" order="6" role="product"/>
        <ParameterDescription key="FunctionParameter_425" name="switch_kashi" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_67" name="Function for Phosphoglycerate Mutase_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_67">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-03-11T10:52:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (Vf_pgm*s69*(1/(1+exp(-(s69-0.0001)/1.0000000000000001e-05)))/Kmf_pgm-Vr_pgm*s70*(1/(1+exp(-(s70-0.0001)/1.0000000000000001e-05)))/Kmr_pgm)/(1+s69/Kmf_pgm+s70/Kmr_pgm)*switch_kashi/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_433" name="Kmf_pgm" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_432" name="Kmr_pgm" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_431" name="Vf_pgm" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_430" name="Vr_pgm" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_429" name="c1" order="4" role="volume"/>
        <ParameterDescription key="FunctionParameter_428" name="s69" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_427" name="s70" order="6" role="product"/>
        <ParameterDescription key="FunctionParameter_426" name="switch_kashi" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_68" name="Function for Phosphoglycerate Kinase_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_68">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (Vf_pgk*s68*(1/(1+exp(-(s68-0.0001)/1.0000000000000001e-05)))/(Kmf_pgk*(1+Km_adp/s31))-Vr_pgk*s69*(1/(1+exp(-(s69-0.0001)/1.0000000000000001e-05)))/(Kmr_pgk*(1+Km_atp/s30)))/(1+s68/Kmf_pgk+s69/Kmr_pgk)*switch_kashi/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_441" name="Km_adp" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_440" name="Km_atp" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_439" name="Kmf_pgk" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_438" name="Kmr_pgk" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_437" name="Vf_pgk" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_436" name="Vr_pgk" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_435" name="c1" order="6" role="volume"/>
        <ParameterDescription key="FunctionParameter_434" name="s30" order="7" role="product"/>
        <ParameterDescription key="FunctionParameter_442" name="s31" order="8" role="substrate"/>
        <ParameterDescription key="FunctionParameter_443" name="s68" order="9" role="substrate"/>
        <ParameterDescription key="FunctionParameter_444" name="s69" order="10" role="product"/>
        <ParameterDescription key="FunctionParameter_445" name="switch_kashi" order="11" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_69" name="Function for Enolase_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_69">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (Vf_eno*s70*(1/(1+exp(-(s70-0.0001)/1.0000000000000001e-05)))/Kmf_eno-Vr_eno*s60*(1/(1+exp(-(s60-0.0001)/1.0000000000000001e-05)))/Kmr_eno)/(1+s70/Kmf_eno+s60/Kmr_eno)*switch_kashi/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_457" name="Kmf_eno" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_456" name="Kmr_eno" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_455" name="Vf_eno" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_454" name="Vr_eno" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_453" name="c1" order="4" role="volume"/>
        <ParameterDescription key="FunctionParameter_452" name="s60" order="5" role="product"/>
        <ParameterDescription key="FunctionParameter_451" name="s70" order="6" role="substrate"/>
        <ParameterDescription key="FunctionParameter_450" name="switch_kashi" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_70" name="Function for Pyruvate Kinase_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_70">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-03-11T10:52:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (Vf_pk*s60*(1/(1+exp(-(s60-0.0001)/1.0000000000000001e-05)))/(Kmf_pk*(1+Km_adp/s31))-Vr_pk*s61*(1/(1+exp(-(s61-0.0001)/1.0000000000000001e-05)))/Kmr_pk)/(1+s60/Kmf_pk+s61/Kmr_pk)*switch_kashi/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_461" name="Km_adp" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_460" name="Kmf_pk" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_459" name="Kmr_pk" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_458" name="Vf_pk" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_446" name="Vr_pk" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_447" name="c1" order="5" role="volume"/>
        <ParameterDescription key="FunctionParameter_448" name="s31" order="6" role="substrate"/>
        <ParameterDescription key="FunctionParameter_449" name="s60" order="7" role="substrate"/>
        <ParameterDescription key="FunctionParameter_462" name="s61" order="8" role="product"/>
        <ParameterDescription key="FunctionParameter_463" name="switch_kashi" order="9" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="McDougal2017 - Metabolism in ischemic cardiomyocytes" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mmol" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:efo:0002687"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:efo:0003777"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:efo:1001375"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0006096"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0046034"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0071456"/>
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:mamo:MAMO_0000046"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:28487363"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>kramachandran@ebi.ac.uk</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Ramachandran</vCard:Family>
            <vCard:Given>Kausthubh</vCard:Given>
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
      <rdf:Description>
        <vCard:EMAIL>sheriff@ebi.ac.uk</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Rahuman</vCard:Family>
            <vCard:Given>Sheriff</vCard:Given>
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
      <rdf:Description>
        <vCard:EMAIL>ablazesk@mit.edu</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Blazeski</vCard:Family>
            <vCard:Given>Adriana</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>MIT</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
    <CopasiMT:is rdf:resource="urn:miriam:biomodels.db:MODEL1912160001"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:cl:CL:0000746"/>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      This is an implementation of McDougal's model from 2017 describing (primarily) anaerobic metabolism in cardiomyocytes at the transition to ischemia. 
The original model was implemented in CellDesigner and converted to Copasi. From there it was exported to SBML L2V4 and uploaded to Biomodels.net after validating it on http://sbml.org/Facilities/Validator

This model was curated in COPASI 4.29 (Build 228) and reproducibility was verified by importing and simulating the SBML L2V4 version of the model in VCell 7.2.0 (Build 39). To avoid "divide by zero" errors, all initial values for species which were zero were set to 1e-12.

Abstract - 

Heart disease remains the leading cause of death globally. Although reperfusion following myocardial ischemia can prevent death by restoring nutrient flow, ischemia/reperfusion injury can cause significant heart damage. The mechanisms that drive ischemia/reperfusion injury are not well understood; currently, few methods can predict the state of the cardiac muscle cell and its metabolic conditions during ischemia. Here, we explored the energetic sustainability of cardiomyocytes, using a model for cellular metabolism to predict the levels of ATP following hypoxia. We modeled glycolytic metabolism with a system of coupled ordinary differential equations describing the individual metabolic reactions within the cardiomyocyte over time. Reduced oxygen levels and ATP consumption rates were simulated to characterize metabolite responses to ischemia. By tracking biochemical species within the cell, our model enables prediction of the cell’s condition up to the moment of reperfusion. The simulations revealed a distinct transition between energetically sustainable and unsustainable ATP concentrations for various energetic demands. Our model illustrates how even low oxygen concentrations allow the cell to perform essential functions. We found that the oxygen level required for a sustainable level of ATPincreases roughly linearly with the ATP consumption rate. An extracellular O2 concentration of ~0.007 mM could supply basic energy needs in non-beating cardiomyocytes, suggesting that increased collateral circulation may provide an important source of oxygen to sustain the cardiomyocyte during extended ischemia. Our model provides a time-dependent framework for studying various intervention strategies to change the outcome of reperfusion.
    </Comment>
    <ListOfUnsupportedAnnotations>
      <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:modelVersion>4.0</celldesigner:modelVersion>
  <celldesigner:modelDisplay sizeX="6000" sizeY="4000" />
  <celldesigner:listOfCompartmentAliases>
    <celldesigner:compartmentAlias id="ca1" compartment="c1">
      <celldesigner:class>SQUARE</celldesigner:class>
      <celldesigner:bounds x="1105.75" y="846.25" w="3534.25" h="2193.75" />
      <celldesigner:namePoint x="1125.25" y="861.75" />
      <celldesigner:doubleLine thickness="12.0" outerWidth="2.0" innerWidth="1.0" />
      <celldesigner:paint color="ffcccc00" scheme="Color" />
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:compartmentAlias>
    <celldesigner:compartmentAlias id="ca2" compartment="c2">
      <celldesigner:class>SQUARE</celldesigner:class>
      <celldesigner:bounds x="1857.0" y="715.0" w="1949.0" h="109.0" />
      <celldesigner:namePoint x="1873.5" y="727.5" />
      <celldesigner:doubleLine thickness="12.0" outerWidth="2.0" innerWidth="1.0" />
      <celldesigner:paint color="ffcccc00" scheme="Color" />
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:compartmentAlias>
    <celldesigner:compartmentAlias id="ca3" compartment="c3">
      <celldesigner:class>SQUARE</celldesigner:class>
      <celldesigner:bounds x="1866.0" y="530.0" w="1918.0" h="160.0" />
      <celldesigner:namePoint x="2806.0" y="653.5" />
      <celldesigner:doubleLine thickness="12.0" outerWidth="2.0" innerWidth="1.0" />
      <celldesigner:paint color="ffcccc00" scheme="Color" />
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:compartmentAlias>
  </celldesigner:listOfCompartmentAliases>
  <celldesigner:listOfComplexSpeciesAliases />
  <celldesigner:listOfSpeciesAliases>
    <celldesigner:speciesAlias id="sa1" species="s1" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="3790.0" y="2959.0" w="33.0" h="36.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="2684.25" y="2112.75" />
        <celldesigner:boxSize width="33.0" height="36.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff9999ff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa2" species="s2">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="3787.0" y="3158.5" w="39.0" h="33.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="39.0" height="33.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff9999ff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa3" species="s24" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="3848.0" y="2956.0" w="51.0" h="37.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="2742.25" y="2109.75" />
        <celldesigner:boxSize width="51.0" height="37.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff9999ff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa4" species="s25">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="3849.0" y="3156.5" w="40.0" h="36.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="40.0" height="36.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff9999ff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa5" species="s26" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="4005.0" y="2939.0" w="53.0" h="64.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="2899.25" y="2092.75" />
        <celldesigner:boxSize width="53.0" height="64.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff9999ff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa6" species="s27">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="3987.0" y="3144.5" w="95.0" h="56.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="95.0" height="56.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff9999ff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa7" species="s7" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="4323.0" y="2931.0" w="54.0" h="58.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="3217.25" y="2084.75" />
        <celldesigner:boxSize width="54.0" height="58.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff9999ff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa8" species="s8">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="4323.0" y="3155.5" w="54.0" h="49.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="54.0" height="49.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff9999ff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa9" species="s28" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="4168.0" y="2940.0" w="47.0" h="46.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="3062.25" y="2093.75" />
        <celldesigner:boxSize width="47.0" height="46.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff9999ff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa10" species="s29">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="4172.0" y="3156.5" w="47.0" h="43.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="47.0" height="43.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff9999ff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa11" species="s11" compartmentAlias="ca1">
      <celldesigner:activity>active</celldesigner:activity>
      <celldesigner:bounds x="3783.5" y="3017.5" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="2677.75" y="2171.25" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa12" species="s12" compartmentAlias="ca1">
      <celldesigner:activity>active</celldesigner:activity>
      <celldesigner:bounds x="3935.5" y="3016.5" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="2829.75" y="2170.25" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa13" species="s13" compartmentAlias="ca1">
      <celldesigner:activity>active</celldesigner:activity>
      <celldesigner:bounds x="4260.5" y="3018.5" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="3154.75" y="2172.25" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa14" species="s14" compartmentAlias="ca1">
      <celldesigner:activity>active</celldesigner:activity>
      <celldesigner:bounds x="4104.5" y="3016.5" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="2998.75" y="2170.25" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa15" species="s24" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="3922.8333333333335" y="2957.6111111111113" w="51.0" h="37.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="2817.0833333333335" y="2111.3611111111113" />
        <celldesigner:boxSize width="51.0" height="37.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff9999ff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa16" species="s25">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="3936.833333333334" y="3157.1111111111113" w="40.0" h="36.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="40.0" height="36.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff9999ff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa17" species="s26" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="4099.833333333334" y="2937.6111111111113" w="53.0" h="64.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="2994.083333333334" y="2091.3611111111113" />
        <celldesigner:boxSize width="53.0" height="64.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff9999ff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa18" species="s27">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="4074.833333333334" y="3148.1111111111113" w="95.0" h="56.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="95.0" height="56.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff9999ff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa19" species="s28" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="4249.833333333334" y="2938.6111111111113" w="47.0" h="46.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="3144.083333333334" y="2092.3611111111113" />
        <celldesigner:boxSize width="47.0" height="46.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff9999ff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa20" species="s29">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="4258.833333333334" y="3159.1111111111113" w="47.0" h="43.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="47.0" height="43.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff9999ff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa25" species="s22" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="3625.0" y="1827.5" w="70.0" h="25.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="2519.25" y="981.25" />
        <celldesigner:boxSize width="70.0" height="25.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccff66" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa26" species="s23" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="3645.0" y="1905.0" w="30.0" h="30.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="2539.25" y="1058.75" />
        <celldesigner:boxSize width="30.0" height="30.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffffcccc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa27" species="s30" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="4210.0" y="1680.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="3104.25" y="833.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa28" species="s31" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="4400.0" y="1680.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="3294.25" y="833.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa29" species="s32" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="4407.5" y="1737.5" w="25.0" h="25.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="3301.75" y="891.25" />
        <celldesigner:boxSize width="25.0" height="25.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff9999ff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa30" species="s30" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="4380.0" y="1790.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="3274.25" y="943.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa31" species="s31" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="4210.0" y="1790.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="3104.25" y="943.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa32" species="s33" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="4210.0" y="1840.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="3104.25" y="993.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa33" species="s34" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="4380.0" y="1840.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="3274.25" y="993.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa34" species="s31" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="4210.0" y="1910.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="3104.25" y="1063.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa35" species="s30" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="4380.0" y="1910.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="3274.25" y="1063.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa36" species="s35" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="4380.0" y="1960.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="3274.25" y="1113.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa37" species="s1" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="4233.5" y="1742.0" w="33.0" h="36.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="3127.75" y="895.75" />
        <celldesigner:boxSize width="33.0" height="36.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff9999ff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa38" species="s31" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="4210.0" y="1960.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="3104.25" y="1113.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa45" species="s37" compartmentAlias="ca1">
      <celldesigner:activity>active</celldesigner:activity>
      <celldesigner:bounds x="3955.0" y="830.0" w="130.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="2849.25" y="-16.25" />
        <celldesigner:boxSize width="130.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa46" species="s38" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="3950.0" y="910.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="2844.25" y="63.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa47" species="s2">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="4060.5" y="733.5" w="39.0" h="33.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="39.0" height="33.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff9999ff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa48" species="s39">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="3940.0" y="730.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa49" species="s1" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="4073.5" y="912.0" w="33.0" h="36.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="2967.75" y="65.75" />
        <celldesigner:boxSize width="33.0" height="36.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff9999ff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa54" species="s39">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="4170.0" y="730.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa55" species="s37" compartmentAlias="ca1">
      <celldesigner:activity>active</celldesigner:activity>
      <celldesigner:bounds x="4185.0" y="830.0" w="130.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="3079.25" y="-16.25" />
        <celldesigner:boxSize width="130.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa56" species="s2">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="4290.5" y="733.5" w="39.0" h="33.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="39.0" height="33.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff9999ff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa57" species="s1" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="4303.5" y="912.0" w="33.0" h="36.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="3197.75" y="65.75" />
        <celldesigner:boxSize width="33.0" height="36.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff9999ff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa58" species="s38" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="4180.0" y="910.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="3074.25" y="63.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa59" species="s38" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="4040.0" y="1040.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="2934.25" y="193.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa60" species="s1" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="4063.5" y="1092.0" w="33.0" h="36.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="2957.75" y="245.75" />
        <celldesigner:boxSize width="33.0" height="36.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff9999ff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa61" species="s52" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="4220.0" y="1060.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="3114.25" y="213.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa62" species="s1" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="4403.0" y="1628.5" w="33.0" h="36.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="3297.25" y="782.25" />
        <celldesigner:boxSize width="33.0" height="36.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff9999ff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa67" species="s53" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="3525.0" y="1825.0" w="30.0" h="30.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="2419.25" y="978.75" />
        <celldesigner:boxSize width="30.0" height="30.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffffcccc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa68" species="s54" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="3645.0" y="1735.0" w="30.0" h="30.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="2539.25" y="888.75" />
        <celldesigner:boxSize width="30.0" height="30.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffffcccc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa69" species="s55" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="3765.0" y="1825.0" w="30.0" h="30.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="2659.25" y="978.75" />
        <celldesigner:boxSize width="30.0" height="30.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffffcccc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa137" species="s56" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2430.0" y="990.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1324.25" y="143.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa138" species="s30" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2530.0" y="990.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1424.25" y="143.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa139" species="s57" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2430.0" y="1110.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1324.25" y="263.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa140" species="s31" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2530.0" y="1110.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1424.25" y="263.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa141" species="s57" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2430.0" y="1190.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1324.25" y="343.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa142" species="s58" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2430.0" y="1310.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1324.25" y="463.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa143" species="s58" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2430.0" y="1390.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1324.25" y="543.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa144" species="s66" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2430.0" y="1510.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1324.25" y="663.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa145" species="s66" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2430.0" y="1590.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1324.25" y="743.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa146" species="s59" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2430.0" y="1830.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1324.25" y="983.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa147" species="s67" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2200.0" y="1700.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1094.25" y="853.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa148" species="s67" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2230.0" y="1760.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1124.25" y="913.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa149" species="s59" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2330.0" y="1830.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1224.25" y="983.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa150" species="s59" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2430.0" y="1910.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1324.25" y="1063.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa151" species="s68" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2430.0" y="2050.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1324.25" y="1203.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa152" species="s62" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2330.0" y="1910.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1224.25" y="1063.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa153" species="s63" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2330.0" y="2050.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1224.25" y="1203.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa154" species="s32" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2277.5" y="1947.5" w="25.0" h="25.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1171.75" y="1101.25" />
        <celldesigner:boxSize width="25.0" height="25.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff9999ff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa157" species="s68" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2430.0" y="2130.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1324.25" y="1283.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa158" species="s69" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2430.0" y="2260.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1324.25" y="1413.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa159" species="s69" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2430.0" y="2340.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1324.25" y="1493.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa160" species="s70" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2430.0" y="2460.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1324.25" y="1613.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa161" species="s31" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2530.0" y="2130.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1424.25" y="1283.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa162" species="s30" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2530.0" y="2260.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1424.25" y="1413.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa163" species="s71" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2330.0" y="2680.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1224.25" y="1833.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa165" species="s60" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2430.0" y="2680.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1324.25" y="1833.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa166" species="s70" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2430.0" y="2530.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1324.25" y="1683.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa167" species="s61" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2430.0" y="2870.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1324.25" y="2023.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa168" species="s60" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2430.0" y="2740.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1324.25" y="1893.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa171" species="s30" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2530.0" y="2870.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1424.25" y="2023.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa172" species="s31" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2530.0" y="2740.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1424.25" y="1893.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa173" species="s30" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2530.0" y="1390.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1424.25" y="543.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa174" species="s31" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2530.0" y="1510.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1424.25" y="663.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa175" species="s1" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2273.5" y="2032.0" w="33.0" h="36.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1167.75" y="1185.75" />
        <celldesigner:boxSize width="33.0" height="36.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff9999ff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa180" species="s57" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2260.0" y="1150.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1154.25" y="303.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa181" species="s72" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2260.0" y="1070.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1154.25" y="223.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa182" species="s72" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2300.0" y="960.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1194.25" y="113.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa183" species="s73" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2100.0" y="960.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="994.25" y="113.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa184" species="s72" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2140.0" y="1150.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1034.25" y="303.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa185" species="s73" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2000.0" y="960.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="894.25" y="113.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa186" species="s36" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1870.0" y="960.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="764.25" y="113.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa187" species="s36" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1850.0" y="1150.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="744.25" y="303.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa188" species="s32" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1907.5" y="1207.5" w="25.0" h="25.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="801.75" y="361.25" />
        <celldesigner:boxSize width="25.0" height="25.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff9999ff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa191" species="s32" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2127.5" y="917.5" w="25.0" h="25.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1021.75" y="71.25" />
        <celldesigner:boxSize width="25.0" height="25.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff9999ff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa194" species="s1" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1823.5" y="922.0" w="33.0" h="36.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="717.75" y="75.75" />
        <celldesigner:boxSize width="33.0" height="36.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff9999ff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa195" species="s1" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2313.5" y="872.0" w="33.0" h="36.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1207.75" y="25.75" />
        <celldesigner:boxSize width="33.0" height="36.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff9999ff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa196" species="s1" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2623.5" y="1092.0" w="33.0" h="36.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1517.75" y="245.75" />
        <celldesigner:boxSize width="33.0" height="36.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff9999ff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa197" species="s1" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2373.5" y="1512.0" w="33.0" h="36.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1267.75" y="665.75" />
        <celldesigner:boxSize width="33.0" height="36.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff9999ff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa198" species="s1" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1863.5" y="2662.0" w="33.0" h="36.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="757.75" y="1815.75" />
        <celldesigner:boxSize width="33.0" height="36.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff9999ff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa199" species="s61" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1820.0" y="2720.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="714.25" y="1873.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa200" species="s63" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1820.0" y="2790.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="714.25" y="1943.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa201" species="s38" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2140.0" y="2720.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1034.25" y="1873.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa202" species="s62" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2140.0" y="2790.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1034.25" y="1943.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa203" species="s74" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2300.0" y="910.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1194.25" y="63.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa204" species="s32" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2147.5" y="877.5" w="25.0" h="25.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1041.75" y="31.25" />
        <celldesigner:boxSize width="25.0" height="25.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff9999ff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa205" species="s75" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1870.0" y="910.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="764.25" y="63.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa206" species="s57" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2550.0" y="1190.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1444.25" y="343.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa207" species="s76" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2650.0" y="1260.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1544.25" y="413.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa208" species="s73" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2000.0" y="1080.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="894.25" y="233.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa209" species="s36" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1870.0" y="1080.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="764.25" y="233.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa210" species="s75" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1870.0" y="1030.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="764.25" y="183.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa211" species="s1" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1823.5" y="1042.0" w="33.0" h="36.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="717.75" y="195.75" />
        <celldesigner:boxSize width="33.0" height="36.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff9999ff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa212" species="s35" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1990.0" y="1270.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="884.25" y="423.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa213" species="s35" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2180.0" y="1030.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1074.25" y="183.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa214" species="s35" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1950.0" y="870.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="844.25" y="23.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa215" species="s35" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1960.0" y="1010.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="854.25" y="163.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa216" species="s67" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2130.0" y="1760.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1024.25" y="913.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa217" species="s77" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2080.0" y="1850.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="974.25" y="1003.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa218" species="s62" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1990.0" y="1850.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="884.25" y="1003.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa219" species="s63" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1990.0" y="1760.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="884.25" y="913.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa220" species="s78" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2055.0" y="1965.0" w="30.0" h="30.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="949.25" y="1118.75" />
        <celldesigner:boxSize width="30.0" height="30.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffffcccc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa221" species="s32" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2007.5" y="1967.5" w="25.0" h="25.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="901.75" y="1121.25" />
        <celldesigner:boxSize width="25.0" height="25.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff9999ff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa222" species="s62" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="3470.0" y="2760.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="2364.25" y="1913.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa223" species="s30" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="3290.0" y="2790.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="2184.25" y="1943.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa224" species="s30" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="3280.0" y="2770.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="2174.25" y="1923.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa225" species="s30" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="3300.0" y="2780.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="2194.25" y="1933.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa226" species="s63" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="3480.0" y="2600.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="2374.25" y="1753.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa227" species="s32" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="3387.5" y="2577.5" w="25.0" h="25.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="2281.75" y="1731.25" />
        <celldesigner:boxSize width="25.0" height="25.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff9999ff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa228" species="s64" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="3188.75" y="2738.75" w="42.5" h="42.5" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="2083.0" y="1892.5" />
        <celldesigner:boxSize width="42.5" height="42.5" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff9999ff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa229" species="s64" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="3168.75" y="2778.75" w="42.5" h="42.5" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="2063.0" y="1932.5" />
        <celldesigner:boxSize width="42.5" height="42.5" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff9999ff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa230" species="s32" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="3397.5" y="2567.5" w="25.0" h="25.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="2291.75" y="1721.25" />
        <celldesigner:boxSize width="25.0" height="25.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff9999ff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa231" species="s32" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="3387.5" y="2567.5" w="25.0" h="25.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="2281.75" y="1721.25" />
        <celldesigner:boxSize width="25.0" height="25.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff9999ff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa232" species="s64" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="3128.75" y="2718.75" w="42.5" h="42.5" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="2023.0" y="1872.5" />
        <celldesigner:boxSize width="42.5" height="42.5" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff9999ff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa233" species="s65" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="3147.5" y="2577.5" w="25.0" h="25.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="2041.75" y="1731.25" />
        <celldesigner:boxSize width="25.0" height="25.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff9999ff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa234" species="s31" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="3290.0" y="2530.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="2184.25" y="1683.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa235" species="s61" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="3180.0" y="2520.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="2074.25" y="1673.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa236" species="s31" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="3300.0" y="2520.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="2194.25" y="1673.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa237" species="s65" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="3107.5" y="2567.5" w="25.0" h="25.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="2001.75" y="1721.25" />
        <celldesigner:boxSize width="25.0" height="25.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff9999ff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa238" species="s65" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="3095.5" y="2597.5" w="25.0" h="25.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1989.75" y="1751.25" />
        <celldesigner:boxSize width="25.0" height="25.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff9999ff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa239" species="s31" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="3270.0" y="2510.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="2164.25" y="1663.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa240" species="s32" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2617.5" y="1297.5" w="25.0" h="25.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1511.75" y="451.25" />
        <celldesigner:boxSize width="25.0" height="25.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff9999ff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa242" species="s68" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1880.0" y="2100.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="774.25" y="1253.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa243" species="s72" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1780.0" y="2090.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="674.25" y="1243.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa244" species="s69" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1880.0" y="2240.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="774.25" y="1393.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa245" species="s79" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1750.0" y="2240.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="644.25" y="1393.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa246" species="s78" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1745.0" y="2375.0" w="30.0" h="30.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="639.25" y="1528.75" />
        <celldesigner:boxSize width="30.0" height="30.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffffcccc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa247" species="s32" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1687.5" y="2347.5" w="25.0" h="25.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="581.75" y="1501.25" />
        <celldesigner:boxSize width="25.0" height="25.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff9999ff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa248" species="s32" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1707.5" y="2377.5" w="25.0" h="25.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="601.75" y="1531.25" />
        <celldesigner:boxSize width="25.0" height="25.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff9999ff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa249" species="s65" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2817.0" y="890.0" w="25.0" h="25.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1711.25" y="43.75" />
        <celldesigner:boxSize width="25.0" height="25.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff9999ff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa250" species="s82" compartmentAlias="ca2">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2812.5" y="759.5" w="33.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="955.5" y="44.5" />
        <celldesigner:boxSize width="33.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff9999ff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa251" species="s81" compartmentAlias="ca3">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2758.5" y="618.5" w="37.0" h="39.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="892.5" y="88.5" />
        <celldesigner:boxSize width="37.0" height="39.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff9999ff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa253" species="s82" compartmentAlias="ca2">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2761.0" y="747.0" w="33.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="904.0" y="32.0" />
        <celldesigner:boxSize width="33.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff9999ff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa254" species="s65" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2979.6666666666674" y="882.6666666666666" w="25.0" h="25.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1873.9166666666674" y="36.41666666666663" />
        <celldesigner:boxSize width="25.0" height="25.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff9999ff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa255" species="s83" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2956.0" y="932.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1850.25" y="85.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa256" species="s84" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="3117.0" y="897.0" w="80.0" h="40.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="2011.25" y="50.75" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccffcc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa257" species="s85" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="3520.0" y="1873.0" w="30.0" h="30.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="2414.25" y="1026.75" />
        <celldesigner:boxSize width="30.0" height="30.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffffcccc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="0.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa258" species="s1" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="2354.4285714285716" y="2756.5714285714284" w="33.0" h="36.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1248.6785714285716" y="1910.3214285714284" />
        <celldesigner:boxSize width="33.0" height="36.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff9999ff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa259" species="s86" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="3537.0" y="1935.0" w="30.0" h="30.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="2431.25" y="1088.75" />
        <celldesigner:boxSize width="30.0" height="30.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffffcccc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="0.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
  </celldesigner:listOfSpeciesAliases>
  <celldesigner:listOfGroups />
  <celldesigner:listOfProteins>
    <celldesigner:protein id="pr1" name="NHE" type="ION_CHANNEL" />
    <celldesigner:protein id="pr2" name="NHS" type="ION_CHANNEL" />
    <celldesigner:protein id="pr3" name="CHE" type="ION_CHANNEL" />
    <celldesigner:protein id="pr4" name="AE" type="ION_CHANNEL" />
    <celldesigner:protein id="pr5" name="ATP" type="GENERIC" />
    <celldesigner:protein id="pr6" name="ADP" type="GENERIC" />
    <celldesigner:protein id="pr7" name="CrP" type="GENERIC" />
    <celldesigner:protein id="pr8" name="Cr" type="GENERIC" />
    <celldesigner:protein id="pr9" name="AMP" type="GENERIC" />
    <celldesigner:protein id="pr10" name="Glycogen" type="GENERIC" />
    <celldesigner:protein id="pr11" name="LactateXport" type="ION_CHANNEL" />
    <celldesigner:protein id="pr12" name="L_super__minus__endsuper__sub_i_endsub_" type="GENERIC" />
    <celldesigner:protein id="pr13" name="L_super__minus__endsuper__sub_o_endsub_" type="GENERIC" />
    <celldesigner:protein id="pr15" name="Lactic Acid" type="GENERIC" />
    <celldesigner:protein id="pr17" name="G6P" type="GENERIC" />
    <celldesigner:protein id="pr16" name="Glucose" type="GENERIC" />
    <celldesigner:protein id="pr18" name="F6P" type="GENERIC" />
    <celldesigner:protein id="pr20" name="PEP" type="GENERIC" />
    <celldesigner:protein id="pr21" name="PYR" type="GENERIC" />
    <celldesigner:protein id="pr19" name="GAP" type="GENERIC" />
    <celldesigner:protein id="pr23" name="NADH" type="GENERIC" />
    <celldesigner:protein id="pr22" name="NAD" type="GENERIC" />
    <celldesigner:protein id="pr24" name="F16BP" type="GENERIC" />
    <celldesigner:protein id="pr25" name="DHAP" type="GENERIC" />
    <celldesigner:protein id="pr26" name="13BPG" type="GENERIC" />
    <celldesigner:protein id="pr27" name="3PG" type="GENERIC" />
    <celldesigner:protein id="pr28" name="2PG" type="GENERIC" />
    <celldesigner:protein id="pr29" name="H_sub_2_endsub_O" type="GENERIC" />
    <celldesigner:protein id="pr30" name="G1P" type="GENERIC" />
    <celldesigner:protein id="pr31" name="UDPG" type="GENERIC" />
    <celldesigner:protein id="pr32" name="UTP" type="GENERIC" />
    <celldesigner:protein id="pr33" name="UDP" type="GENERIC" />
    <celldesigner:protein id="pr34" name="6PGN" type="GENERIC" />
    <celldesigner:protein id="pr35" name="Glycerol-3-P" type="GENERIC" />
    <celldesigner:protein id="pr36" name="G16BP" type="GENERIC" />
    <celldesigner:protein id="pr37" name="Mb" type="GENERIC" />
    <celldesigner:protein id="pr38" name="MbO_sub_2_endsub_" type="GENERIC" />
  </celldesigner:listOfProteins>
  <celldesigner:listOfGenes />
  <celldesigner:listOfRNAs />
  <celldesigner:listOfAntisenseRNAs />
  <celldesigner:listOfLayers />
  <celldesigner:listOfBlockDiagrams />
</celldesigner:extension>
      </UnsupportedAnnotation>
    </ListOfUnsupportedAnnotations>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="cell" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C12508" />
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C13002" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:name>cell</celldesigner:name>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Compartment>
      <Compartment key="Compartment_1" name="extracellular" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005576" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:name>extracellular</celldesigner:name>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Compartment>
      <Compartment key="Compartment_2" name="vessel" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C12679" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:name>vessel</celldesigner:name>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Compartment>
      <Compartment key="Compartment_3" name="default" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-08-23T13:30:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="H_super__plus__endsuper__sub_i_endsub_" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:15378" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>ION</celldesigner:class>
    <celldesigner:name>H_super__plus__endsuper__sub_i_endsub_</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="H_super__plus__endsuper__sub_o_endsub_" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:15378" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>ION</celldesigner:class>
    <celldesigner:name>H_super__plus__endsuper__sub_o_endsub_</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="OH_super__minus__endsuper__sub_i_endsub_" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:16234" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>ION</celldesigner:class>
    <celldesigner:name>OH_super__minus__endsuper__sub_i_endsub_</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="OH_super__minus__endsuper__sub_o_endsub_" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:16234" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>ION</celldesigner:class>
    <celldesigner:name>OH_super__minus__endsuper__sub_o_endsub_</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="pH_sub_i_endsub_" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:omit:0008003" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>SIMPLE_MOLECULE</celldesigner:class>
    <celldesigner:name>pH_sub_i_endsub_</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="Na_super__plus__endsuper__sub_i_endsub_" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:29101" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>ION</celldesigner:class>
    <celldesigner:name>Na_super__plus__endsuper__sub_i_endsub_</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="Na_super__plus__endsuper__sub_o_endsub_" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:29101" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>ION</celldesigner:class>
    <celldesigner:name>Na_super__plus__endsuper__sub_o_endsub_</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="HCO_sub_3_endsub__super__minus__endsuper__sub_i_endsub_" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:17544" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>ION</celldesigner:class>
    <celldesigner:name>HCO_sub_3_endsub__super__minus__endsuper__sub_i_endsub_</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="HCO_sub_3_endsub__super__minus__endsuper__sub_o_endsub_" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:17544" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>ION</celldesigner:class>
    <celldesigner:name>HCO_sub_3_endsub__super__minus__endsuper__sub_o_endsub_</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="Cl_super__minus__endsuper__sub_i_endsub_" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:17996" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>ION</celldesigner:class>
    <celldesigner:name>Cl_super__minus__endsuper__sub_i_endsub_</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="Cl_super__minus__endsuper__sub_o_endsub_" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:17996" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>ION</celldesigner:class>
    <celldesigner:name>Cl_super__minus__endsuper__sub_o_endsub_</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="ATP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:15422" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr5</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="ADP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:16761" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
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
      <Metabolite key="Metabolite_13" name="P_sub_i_endsub_" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:24838" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
      <title />
    </head>
    <body>Initial value 6.94 mM from Kashiwaya et al_1994_Control of glucose utilization in working perfused rat heart
</body>
  </html>
        </Comment>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>ION</celldesigner:class>
    <celldesigner:name>P_sub_i_endsub_</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="CrP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:58092" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr7</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="Cr" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:16919" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr8</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_16" name="AMP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:16027" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr9</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re48" />
    <celldesigner:catalyzed reaction="re49" />
    <celldesigner:catalyzed reaction="re50" />
    <celldesigner:catalyzed reaction="re53" />
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="Glycogen" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:28087" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr10</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_18" name="L_super__minus__endsuper__sub_i_endsub_" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:24996" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr12</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="Lactic Acid" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:chebi:CHEBI:28358" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr15</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_20" name="G6P" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:4170" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
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
      <Metabolite key="Metabolite_21" name="F6P" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:88003" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
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
      <Metabolite key="Metabolite_22" name="GAP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:17138" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr19</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_23" name="PEP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:18021" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr20</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_24" name="CO_sub_2_endsub_" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:16526" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>ION</celldesigner:class>
    <celldesigner:name>CO_sub_2_endsub_</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_25" name="F16BP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasVersion rdf:resource="urn:miriam:chebi:CHEBI:78682" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr24</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_26" name="DHAP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:16108" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr25</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_27" name="13BPG" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:chebi:CHEBI:89363" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr26</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_28" name="3PG" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:57998" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr27</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_29" name="2PG" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:88350" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr28</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_30" name="H_sub_2_endsub_O" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:15377" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
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
      <Metabolite key="Metabolite_31" name="G1P" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:16077" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
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
      <Metabolite key="Metabolite_32" name="UDPG" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:18066" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
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
      <Metabolite key="Metabolite_33" name="UTP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:15713" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr32</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_34" name="UDP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_34">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:17659" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr33</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_35" name="6PGN" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:16938" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr34</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_36" name="Glycerol-3-P" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_36">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:15978" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr35</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_37" name="s78" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
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
    <celldesigner:class>DEGRADED</celldesigner:class>
    <celldesigner:name>s78</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_38" name="PYR" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_38">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:15361" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr21</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_39" name="G16BP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:17680" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
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
      <Metabolite key="Metabolite_40" name="O_sub_2,e_endsub" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-03-19T11:27:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:33263" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>ION</celldesigner:class>
    <celldesigner:name>O_sub_2,e_endsub</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_41" name="Mb" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:7044" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr37</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_42" name="MbO_sub_2_endsub_" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:chebi:CHEBI:7044" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr38</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_43" name="O_sub_2_endsub" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-03-19T11:27:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:33263" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>ION</celldesigner:class>
    <celldesigner:name>O_sub_2_endsub</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_44" name="O_sub_2,v_endsub" simulationType="fixed" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-03-11T15:42:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:33263" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>ION</celldesigner:class>
    <celldesigner:name>O_sub_2,v_endsub</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_45" name="NAD" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:13389" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr22</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_46" name="NADH" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:16908" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr23</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_47" name="L_super__minus__endsuper__sub_o_endsub_" simulationType="fixed" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:24996" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr13</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_48" name="Glucose" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:17234" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
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
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="J_NHE" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-03-11T15:44:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          1/60*(20.609256722400001*&lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[pH_sub_i_endsub_],Reference=Concentration>^4-606.55628602759998*&lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[pH_sub_i_endsub_],Reference=Concentration>^3+6701.0653365770004*&lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[pH_sub_i_endsub_],Reference=Concentration>^2-32930.547648211599*&lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[pH_sub_i_endsub_],Reference=Concentration>+60727.934542116403)
        </Expression>
        <Unit>
          mmol*l*s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="J_CHE" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-03-19T11:07:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          1/60*(-0.272561314*&lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[pH_sub_i_endsub_],Reference=Concentration>^4+12.313011154*&lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[pH_sub_i_endsub_],Reference=Concentration>^3-181.77043058070001*&lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[pH_sub_i_endsub_],Reference=Concentration>^2+1108.6191429405001*&lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[pH_sub_i_endsub_],Reference=Concentration>-2422.8396631585001)
        </Expression>
        <Unit>
          mmol*l*s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="J_NHS" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-03-11T15:44:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          1/60*(2.3290050022000002*&lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[pH_sub_i_endsub_],Reference=Concentration>^3-45.1765173617*&lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[pH_sub_i_endsub_],Reference=Concentration>^2+286.77069821010002*&lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[pH_sub_i_endsub_],Reference=Concentration>-592.16822401410002)
        </Expression>
        <Unit>
          mmol*l*s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="J_AE" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-03-19T11:07:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          1/60*(-15.226660647099999*&lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[pH_sub_i_endsub_],Reference=Concentration>^4+302.25901699989998*&lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[pH_sub_i_endsub_],Reference=Concentration>^3-1823.1533057567999*&lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[pH_sub_i_endsub_],Reference=Concentration>^2+1976.4960115099*&lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[pH_sub_i_endsub_],Reference=Concentration>+8383.5337195979992)
        </Expression>
        <Unit>
          mmol*l*s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="beta_i" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-03-11T15:43:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          -28*&lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[pH_sub_i_endsub_],Reference=Concentration>+222.59999999999999
        </Expression>
        <Unit>
          mmol*l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="beta_CO2" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-03-11T11:26:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          2.2999999999999998*&lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[HCO3_i],Reference=Value>
        </Expression>
        <Unit>
          mmol*l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="H_active" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-03-19T11:07:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          1000*10^(-&lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[pH_sub_i_endsub_],Reference=Concentration>)
        </Expression>
        <Unit>
          mmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="pH_o" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-03-11T12:36:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
      <title />
    </head>
    <body>Lagadic-Gossmann et al_1992_Role of bicarbonate in pH recovery from intracellular acidosis in the
</body>
  </html>
        </Comment>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="HCO3_o" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-03-19T11:07:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
      <title />
    </head>
    <body>Lagadic-Gossmann et al_1992_Role of bicarbonate in pH recovery from intracellular acidosis in the
</body>
  </html>
        </Comment>
        <Unit>
          mmol
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="HCO3_i" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-03-19T11:07:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[HCO3_o],Reference=Value>*10^(&lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[pH_sub_i_endsub_],Reference=Concentration>-&lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[pH_o],Reference=Value>)
        </Expression>
        <Unit>
          mmol
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="switch_kashi" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="h" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-03-19T11:07:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mmol
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="Km_AMP_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-03-11T15:44:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mmol
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="switch_GSGP" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-03-11T12:40:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="switch_LDH" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-03-11T15:41:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="level" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-03-11T12:36:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="rateOf_re15" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-03-19T11:07:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Lactate Flux (in)],Reference=Flux>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="rateOf_re20" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-03-19T11:07:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Lactate Flux (out)],Reference=Flux>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_18" name="rateOf_re37" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-03-11T11:10:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Phosphoglucose Isomerase (forward)],Reference=Flux>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_19" name="rateOf_re54" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-03-11T12:40:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[re54],Reference=Flux>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_20" name="rateOf_re46" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-03-11T11:11:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Pyruvate Kinase],Reference=Flux>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_21" name="rateOf_re58" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-03-11T12:40:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[re58],Reference=Flux>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_22" name="lowO2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_23" name="K_AK" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_23">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:23:08Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_24" name="X_AK" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-08-22T13:23:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_25" name="VR_cellcyto" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_25">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:23:55Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_26" name="X_atpase" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_26">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:24:11Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_27" name="K_CK" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_27">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:24:55Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_28" name="X_CK" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_28">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:25:00Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_29" name="Kmf_eno" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_29">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:25:47Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_30" name="Kmr_eno" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_30">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:25:50Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_31" name="Vf_eno" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_31">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:25:54Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_32" name="Vr_eno" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_32">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:25:57Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_33" name="Kmf_fbp" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_33">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:26:36Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_34" name="Vf_fbp" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_34">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:26:40Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_35" name="Km_NAD" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_35">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:27:15Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_36" name="Kmf_gapdh" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_36">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:27:22Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_37" name="Vf_gapdh" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_37">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:27:25Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_38" name="Kmf_gp" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_38">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:28:17Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_39" name="Kmr_gp" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_39">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:28:22Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_40" name="Vf_gp" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_40">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:28:25Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_41" name="Vr_gp" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_41">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:28:30Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_42" name="Kmf_gs_I_form" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-08-22T13:29:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_43" name="Vf_gs_I_form" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_43">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:29:40Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_44" name="Kmf_gs_D_form" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-08-22T13:30:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_45" name="Vf_gs_D_form" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_45">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:30:45Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_46" name="Km_ATP_hk" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_46">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:31:38Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_47" name="Kmf_hk" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_47">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:31:43Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_48" name="Kmr_hk" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_48">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:31:48Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_49" name="Vf_hk" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_49">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:31:51Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_50" name="Vr_hk" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_50">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:31:56Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_51" name="Km_NADH" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_51">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:32:45Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_52" name="Kmf_ldh" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_52">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:33:00Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_53" name="Vf_ldh" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_53">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:33:02Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_54" name="Km_Lac_flux_in" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_54">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:33:58Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_55" name="Vmax_Lac_flux_in" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_55">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:34:08Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_56" name="Km_Lac_flux_out" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_56">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:34:12Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_57" name="Vmax_Lac_flux_out" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_57">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:34:20Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_58" name="Km_ADP" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_58">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:35:06Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_59" name="Km_O2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_59">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:35:10Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_60" name="Km_ATP_pfk" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_60">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:35:55Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_61" name="Kmf_pfk" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_61">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:35:59Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_62" name="Vf_pfk" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_62">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:36:03Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_63" name="Kmf_pgm" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_63">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:36:35Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_64" name="Kmr_pgm" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_64">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:36:40Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_65" name="Vf_pgm" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_65">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:36:44Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_66" name="Vr_pgm" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_66">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:36:48Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_67" name="Kmf_pgi" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_67">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:37:18Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_68" name="Kmr_pgi" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_68">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:37:21Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_69" name="Vf_pgi" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_69">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:37:24Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_70" name="Vr_pgi" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_70">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:37:26Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_71" name="Km_ADP_pgk" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_71">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:38:16Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_72" name="Km_ATP_pgk" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_72">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:38:23Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_73" name="Kmf_pgk" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_73">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:38:27Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_74" name="Kmr_pgk" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_74">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:38:30Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_75" name="Vf_pgk" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_75">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:38:33Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_76" name="Vr_pgk" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_76">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:38:36Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_77" name="Kmf_pglym" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_77">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:40:03Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_78" name="Kmr_pglym" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_78">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:40:09Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_79" name="Vf_pglym" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_79">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:40:12Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_80" name="Vr_pglym" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_80">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:40:15Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_81" name="Km_ADP_pk" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_81">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:41:09Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_82" name="Kmf_pk" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_82">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:41:11Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_83" name="Kmr_pk" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_83">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:41:15Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_84" name="Vf_pk" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_84">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:41:18Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_85" name="Vr_pk" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_85">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:41:22Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_86" name="K_Lac" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_86">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:42:59Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_87" name="X_Lac" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_87">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:43:05Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_88" name="K_up" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_88">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:43:09Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_89" name="X_up" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_89">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:43:10Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_90" name="f_up_eq" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_90">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:43:13Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_91" name="Kia_NADH" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_91">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:45:59Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_92" name="Km_DHAP" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_92">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:46:03Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_93" name="Km_NADH_re54" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_93">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:46:11Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_94" name="Km_G1P" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_94">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:46:48Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_95" name="Km_GBP" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_95">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:46:51Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_96" name="Kmf_GBPS" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_96">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:46:56Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_97" name="Kmr_GBPS" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_97">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:47:00Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_98" name="Vf_GBPS" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_98">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:47:03Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_99" name="Vr_GBPS" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_99">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:47:07Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_100" name="PS_ec" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_100">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:47:44Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_101" name="PS_ve" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_101">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:48:05Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_102" name="k_a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_102">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:48:35Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_103" name="k_d" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_103">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:48:39Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_104" name="Kmf_tpi" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_104">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:49:09Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_105" name="Vf_tpi" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_105">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:49:12Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_106" name="v_PGI_ss" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_106">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-22T13:51:50Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="re2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s25" alias="sa4">
      <celldesigner:linkAnchor position="NNW" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s24" alias="sa3">
      <celldesigner:linkAnchor position="SW" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="1">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
      <celldesigner:lineDirection index="1" value="unknown" />
      <celldesigner:lineDirection index="2" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.5759650037719624,-0.12412150842671466 0.8695550037658606,-0.12120235478866448</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000" />
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5390" name="v" value="0.00281193"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="re3" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-03-11T10:57:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s25" alias="sa16">
      <celldesigner:linkAnchor position="NE" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s24" alias="sa15">
      <celldesigner:linkAnchor position="SE" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="1">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
      <celldesigner:lineDirection index="1" value="unknown" />
      <celldesigner:lineDirection index="2" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.5294127450269492,0.0851753909000017 0.8750870531603638,0.10143503348464478</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000" />
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5389" name="v" value="0.00220004"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="re4" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-03-11T10:57:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s27" alias="sa6">
      <celldesigner:linkAnchor position="NW" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s26" alias="sa5">
      <celldesigner:linkAnchor position="SW" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="1">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
      <celldesigner:lineDirection index="1" value="unknown" />
      <celldesigner:lineDirection index="2" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.4925385926872998,-0.14095590998011787 0.8486533675112504,-0.1368563220803516</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000" />
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5388" name="v" value="0.00220004"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="re5" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-03-11T10:57:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s26" alias="sa17">
      <celldesigner:linkAnchor position="SSE" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s27" alias="sa18">
      <celldesigner:linkAnchor position="NNE" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="1">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
      <celldesigner:lineDirection index="1" value="unknown" />
      <celldesigner:lineDirection index="2" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.13059156286451667,-0.08644035335449374 0.501600491160545,-0.09430350546009336</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000" />
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5387" name="v" value="-0.00300024"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="re6" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-03-11T10:57:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s29" alias="sa10">
      <celldesigner:linkAnchor position="NNW" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s28" alias="sa9">
      <celldesigner:linkAnchor position="SSW" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="1">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
      <celldesigner:lineDirection index="1" value="unknown" />
      <celldesigner:lineDirection index="2" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.5106324965130469,-0.1434069745393991 0.8554448666236034,-0.13433684750353692</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000" />
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5386" name="v" value="-0.00300024"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="re7" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s29" alias="sa20">
      <celldesigner:linkAnchor position="NNE" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s28" alias="sa19">
      <celldesigner:linkAnchor position="SSE" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="1">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
      <celldesigner:lineDirection index="1" value="unknown" />
      <celldesigner:lineDirection index="2" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.4504021237634568,0.07439567251394408 0.8430286575704287,0.09299317873885116</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000" />
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5385" name="v" value="-0.00588559"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="re8" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s7" alias="sa7">
      <celldesigner:linkAnchor position="SSW" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s8" alias="sa8">
      <celldesigner:linkAnchor position="NW" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="1">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
      <celldesigner:lineDirection index="1" value="unknown" />
      <celldesigner:lineDirection index="2" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.15455473251298457,0.1034153180865367 0.5434368873720832,0.08828753773859788</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000" />
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5384" name="v" value="-0.00588559"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="ATPase (ATP Consumption)" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-03-11T12:37:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:name>ATPase (ATP Consumption)</celldesigner:name>
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s30" alias="sa27">
      <celldesigner:linkAnchor position="E" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s31" alias="sa28">
      <celldesigner:linkAnchor position="W" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:listOfProductLinks>
    <celldesigner:productLink product="s32" alias="sa29" targetLineIndex="-1,1">
      <celldesigner:linkAnchor position="NW" />
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:line width="1.0" color="ff000000" type="Straight" />
    </celldesigner:productLink>
    <celldesigner:productLink product="s1" alias="sa62" targetLineIndex="-1,1">
      <celldesigner:linkAnchor position="SW" />
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:line width="1.0" color="ff000000" type="Straight" />
    </celldesigner:productLink>
  </celldesigner:listOfProductLinks>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000" />
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5383" name="X_atpase" value="0.39"/>
          <Constant key="Parameter_5382" name="level" value="1"/>
          <Constant key="Parameter_5381" name="VR_cellcyto" value="1.4703"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="Creatine Kinase" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:name>Creatine Kinase</celldesigner:name>
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s31" alias="sa31">
      <celldesigner:linkAnchor position="E" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s30" alias="sa30">
      <celldesigner:linkAnchor position="W" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:listOfReactantLinks>
    <celldesigner:reactantLink reactant="s33" alias="sa32" targetLineIndex="-1,0">
      <celldesigner:linkAnchor position="E" />
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:line width="1.0" color="ff000000" type="Straight" />
    </celldesigner:reactantLink>
    <celldesigner:reactantLink reactant="s1" alias="sa37" targetLineIndex="-1,0">
      <celldesigner:linkAnchor position="ESE" />
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:line width="1.0" color="ff000000" type="Straight" />
    </celldesigner:reactantLink>
  </celldesigner:listOfReactantLinks>
  <celldesigner:listOfProductLinks>
    <celldesigner:productLink product="s34" alias="sa33" targetLineIndex="-1,1">
      <celldesigner:linkAnchor position="W" />
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:line width="1.0" color="ff000000" type="Straight" />
    </celldesigner:productLink>
  </celldesigner:listOfProductLinks>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000" />
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5411" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5411"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_12"/>
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="Adenylate Kinase" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-03-19T11:51:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:name>Adenylate Kinase</celldesigner:name>
  <celldesigner:reactionType>DISSOCIATION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s31" alias="sa34">
      <celldesigner:linkAnchor position="E" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s30" alias="sa35">
      <celldesigner:linkAnchor position="W" />
    </celldesigner:baseProduct>
    <celldesigner:baseProduct species="s35" alias="sa36">
      <celldesigner:linkAnchor position="W" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:listOfReactantLinks>
    <celldesigner:reactantLink reactant="s31" alias="sa38" targetLineIndex="-1,0">
      <celldesigner:linkAnchor position="ENE" />
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:line width="1.0" color="ff000000" type="Straight" />
    </celldesigner:reactantLink>
  </celldesigner:listOfReactantLinks>
  <celldesigner:connectScheme connectPolicy="direct">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection arm="0" index="0" value="unknown" />
      <celldesigner:lineDirection arm="1" index="0" value="unknown" />
      <celldesigner:lineDirection arm="2" index="0" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints num0="0" num1="0" num2="0" tShapeIndex="0">0.5882352941176396,0.0</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000" />
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="2"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5377" name="K_AK" value="1"/>
          <Constant key="Parameter_5376" name="X_AK" value="10000"/>
        </ListOfConstants>
        <KineticLaw function="Function_53" unitType="Default" scalingCompartment="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_338">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="Lactate Flux (in)" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:name>Lactate Flux (in)</celldesigner:name>
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s39" alias="sa48">
      <celldesigner:linkAnchor position="SE" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s38" alias="sa46">
      <celldesigner:linkAnchor position="NE" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="1">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
      <celldesigner:lineDirection index="1" value="unknown" />
      <celldesigner:lineDirection index="2" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.37268061587050916,-0.19206474536123253 0.8632056849585474,-0.15752072641137005</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000" />
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5375" name="Km" value="2.2"/>
          <Constant key="Parameter_5374" name="Vmax" value="0.04817"/>
        </ListOfConstants>
        <KineticLaw function="Function_60" unitType="Default" scalingCompartment="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_390">
              <SourceParameter reference="ModelValue_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_389">
              <SourceParameter reference="ModelValue_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_388">
              <SourceParameter reference="Metabolite_47"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="co-Lactate Flux (in)" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:name>co-Lactate Flux (in)</celldesigner:name>
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s2" alias="sa47">
      <celldesigner:linkAnchor position="S" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s1" alias="sa49">
      <celldesigner:linkAnchor position="N" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="1">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
      <celldesigner:lineDirection index="1" value="unknown" />
      <celldesigner:lineDirection index="2" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.3565660958380841,0.1619633055558829 0.8354039092159242,0.1948731209083121</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000" />
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
          <Constant key="Parameter_5373" name="v" value="0.016346"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="Lactate Flux (out)" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:name>Lactate Flux (out)</celldesigner:name>
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s38" alias="sa58">
      <celldesigner:linkAnchor position="NE" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s39" alias="sa54">
      <celldesigner:linkAnchor position="SE" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="1">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
      <celldesigner:lineDirection index="1" value="unknown" />
      <celldesigner:lineDirection index="2" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.20686932491117282,0.16245558626135193 0.6973943939992111,0.1969996052112144</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000" />
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5372" name="Km" value="6.92"/>
          <Constant key="Parameter_5371" name="Vmax" value="0.1817"/>
        </ListOfConstants>
        <KineticLaw function="Function_61" unitType="Default" scalingCompartment="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_385">
              <SourceParameter reference="ModelValue_56"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_386">
              <SourceParameter reference="ModelValue_57"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_387">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="co-Lactate Flux (out)" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:name>co-Lactate Flux (out)</celldesigner:name>
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s1" alias="sa57">
      <celldesigner:linkAnchor position="N" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s2" alias="sa56">
      <celldesigner:linkAnchor position="S" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="1">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
      <celldesigner:lineDirection index="1" value="unknown" />
      <celldesigner:lineDirection index="2" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.23300149269519466,-0.1901717187151064 0.7118393060730348,-0.1572619033626772</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000" />
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5370" name="v" value="0.0163226"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="re22" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s38" alias="sa59">
      <celldesigner:linkAnchor position="E" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s52" alias="sa61">
      <celldesigner:linkAnchor position="W" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:listOfReactantLinks>
    <celldesigner:reactantLink reactant="s1" alias="sa60" targetLineIndex="-1,0">
      <celldesigner:linkAnchor position="E" />
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
          <celldesigner:lineDirection index="1" value="unknown" />
          <celldesigner:lineDirection index="2" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:editPoints>0.5076031860970289,0.21723388848660719 0.6451846488052055,-0.13758146270818017</celldesigner:editPoints>
      <celldesigner:line width="1.0" color="ff000000" type="Straight" />
    </celldesigner:reactantLink>
  </celldesigner:listOfReactantLinks>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="2">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
      <celldesigner:lineDirection index="1" value="unknown" />
      <celldesigner:lineDirection index="2" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.1923076923077076,-0.03846153846152811 0.2307692307692335,0.1538461538461653</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000" />
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5369" name="K_Lac" value="0.12589"/>
          <Constant key="Parameter_5368" name="X_Lac" value="10000"/>
          <Constant key="Parameter_5367" name="H_active" value="7.94328e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="ModelValue_86"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_87"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="Hexokinase" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:name>Hexokinase</celldesigner:name>
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s56" alias="sa137">
      <celldesigner:linkAnchor position="S" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s57" alias="sa139">
      <celldesigner:linkAnchor position="N" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:listOfReactantLinks>
    <celldesigner:reactantLink reactant="s30" alias="sa138" targetLineIndex="-1,0">
      <celldesigner:linkAnchor position="SSW" />
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:line width="1.0" color="ff000000" type="Straight" />
    </celldesigner:reactantLink>
  </celldesigner:listOfReactantLinks>
  <celldesigner:listOfProductLinks>
    <celldesigner:productLink product="s31" alias="sa140" targetLineIndex="-1,1">
      <celldesigner:linkAnchor position="NNW" />
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:line width="1.0" color="ff000000" type="Straight" />
    </celldesigner:productLink>
    <celldesigner:productLink product="s1" alias="sa196" targetLineIndex="-1,1">
      <celldesigner:linkAnchor position="WNW" />
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:line width="1.0" color="ff000000" type="Straight" />
    </celldesigner:productLink>
  </celldesigner:listOfProductLinks>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000" />
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_48" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5366" name="Km_ATP" value="0.236"/>
          <Constant key="Parameter_5365" name="Kmf_hk" value="0.072"/>
          <Constant key="Parameter_5364" name="Kmr_hk" value="0.042"/>
          <Constant key="Parameter_5363" name="Vf_hk" value="0.55"/>
          <Constant key="Parameter_5687" name="Vr_hk" value="0.000106"/>
          <Constant key="Parameter_5688" name="switch_kashi" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_56" unitType="Default" scalingCompartment="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="ModelValue_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="ModelValue_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_359">
              <SourceParameter reference="ModelValue_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_358">
              <SourceParameter reference="ModelValue_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_357">
              <SourceParameter reference="ModelValue_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_356">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_355">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_354">
              <SourceParameter reference="Metabolite_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_362">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_363">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="Phosphoglucose Isomerase (forward)" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:name>Phosphoglucose Isomerase (forward)</celldesigner:name>
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s57" alias="sa141">
      <celldesigner:linkAnchor position="S" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s58" alias="sa142">
      <celldesigner:linkAnchor position="N" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000" />
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5686" name="Kmf_pgi" value="0.425"/>
          <Constant key="Parameter_5689" name="Kmr_pgi" value="0.175"/>
          <Constant key="Parameter_5716" name="Vf_pgi" value="10.0667"/>
          <Constant key="Parameter_5717" name="Vr_pgi" value="9.6"/>
          <Constant key="Parameter_5715" name="switch_kashi" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_66" unitType="Default" scalingCompartment="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_424">
              <SourceParameter reference="ModelValue_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_423">
              <SourceParameter reference="ModelValue_68"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_422">
              <SourceParameter reference="ModelValue_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_421">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_411">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_412">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_413">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_425">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="Phosphfructokinase" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:name>Phosphfructokinase</celldesigner:name>
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s58" alias="sa143">
      <celldesigner:linkAnchor position="S" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s66" alias="sa144">
      <celldesigner:linkAnchor position="N" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:listOfReactantLinks>
    <celldesigner:reactantLink reactant="s30" alias="sa173" targetLineIndex="-1,0">
      <celldesigner:linkAnchor position="SW" />
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:line width="1.0" color="ff000000" type="Straight" />
    </celldesigner:reactantLink>
  </celldesigner:listOfReactantLinks>
  <celldesigner:listOfProductLinks>
    <celldesigner:productLink product="s31" alias="sa174" targetLineIndex="-1,1">
      <celldesigner:linkAnchor position="NW" />
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:line width="1.0" color="ff000000" type="Straight" />
    </celldesigner:productLink>
    <celldesigner:productLink product="s1" alias="sa197" targetLineIndex="-1,1">
      <celldesigner:linkAnchor position="NE" />
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:line width="1.0" color="ff000000" type="Straight" />
    </celldesigner:productLink>
  </celldesigner:listOfProductLinks>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000" />
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5718" name="Km_ATP" value="0.127"/>
          <Constant key="Parameter_5700" name="Kmf_pfk" value="0.224"/>
          <Constant key="Parameter_5701" name="Vf_pfk" value="1.32833"/>
          <Constant key="Parameter_5699" name="switch_kashi" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default" scalingCompartment="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="ModelValue_60"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="ModelValue_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="ModelValue_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_332">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="Fructose-bisphosphate Aldolase" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:name>Fructose-bisphosphate Aldolase</celldesigner:name>
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s66" alias="sa145">
      <celldesigner:linkAnchor position="S" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s59" alias="sa146">
      <celldesigner:linkAnchor position="N" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:listOfProductLinks>
    <celldesigner:productLink product="s67" alias="sa147" targetLineIndex="-1,1">
      <celldesigner:linkAnchor position="ESE" />
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:line width="1.0" color="ff000000" type="Straight" />
    </celldesigner:productLink>
  </celldesigner:listOfProductLinks>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000" />
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
          <Product metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5702" name="Kmf_fbp" value="0.038"/>
          <Constant key="Parameter_5362" name="Vf_fbp" value="0.991667"/>
          <Constant key="Parameter_5361" name="switch_kashi" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_62" unitType="Default" scalingCompartment="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_391">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_383">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_384">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_392">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_393">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="Triosephosphate Isomerase" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:name>Triosephosphate Isomerase</celldesigner:name>
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s67" alias="sa148">
      <celldesigner:linkAnchor position="SSE" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s59" alias="sa149">
      <celldesigner:linkAnchor position="W" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000" />
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5360" name="Kmf_tpi" value="1.53"/>
          <Constant key="Parameter_5359" name="Vf_tpi" value="5.93333"/>
          <Constant key="Parameter_5358" name="switch_kashi" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="ModelValue_104"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_105"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="Glyceraldehyde 3-Phosphate Dehydrogenase" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:name>Glyceraldehyde 3-Phosphate Dehydrogenase</celldesigner:name>
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s59" alias="sa150">
      <celldesigner:linkAnchor position="S" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s68" alias="sa151">
      <celldesigner:linkAnchor position="N" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:listOfReactantLinks>
    <celldesigner:reactantLink reactant="s62" alias="sa152" targetLineIndex="-1,0">
      <celldesigner:linkAnchor position="SE" />
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:line width="1.0" color="ff000000" type="Straight" />
    </celldesigner:reactantLink>
    <celldesigner:reactantLink reactant="s32" alias="sa154" targetLineIndex="-1,0">
      <celldesigner:linkAnchor position="ESE" />
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:line width="1.0" color="ff000000" type="Straight" />
    </celldesigner:reactantLink>
  </celldesigner:listOfReactantLinks>
  <celldesigner:listOfProductLinks>
    <celldesigner:productLink product="s63" alias="sa153" targetLineIndex="-1,1">
      <celldesigner:linkAnchor position="NE" />
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:line width="1.0" color="ff000000" type="Straight" />
    </celldesigner:productLink>
    <celldesigner:productLink product="s1" alias="sa175" targetLineIndex="-1,1">
      <celldesigner:linkAnchor position="ENE" />
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:line width="1.0" color="ff000000" type="Straight" />
    </celldesigner:productLink>
  </celldesigner:listOfProductLinks>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000" />
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_45" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_27" stoichiometry="1"/>
          <Product metabolite="Metabolite_46" stoichiometry="1"/>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5357" name="Km_NAD" value="0.058"/>
          <Constant key="Parameter_5356" name="Kmf_gapdh" value="0.042"/>
          <Constant key="Parameter_5355" name="Vf_gapdh" value="5.35"/>
          <Constant key="Parameter_5354" name="switch_kashi" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_344">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_343">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_342">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_341">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_340">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_345">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="Phosphoglycerate Kinase" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:name>Phosphoglycerate Kinase</celldesigner:name>
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s68" alias="sa157">
      <celldesigner:linkAnchor position="S" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s69" alias="sa158">
      <celldesigner:linkAnchor position="N" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:listOfReactantLinks>
    <celldesigner:reactantLink reactant="s31" alias="sa161" targetLineIndex="-1,0">
      <celldesigner:linkAnchor position="SW" />
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:line width="1.0" color="ff000000" type="Straight" />
    </celldesigner:reactantLink>
  </celldesigner:listOfReactantLinks>
  <celldesigner:listOfProductLinks>
    <celldesigner:productLink product="s30" alias="sa162" targetLineIndex="-1,1">
      <celldesigner:linkAnchor position="NW" />
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:line width="1.0" color="ff000000" type="Straight" />
    </celldesigner:productLink>
  </celldesigner:listOfProductLinks>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000" />
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_28" stoichiometry="1"/>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5353" name="Km_adp" value="0.008"/>
          <Constant key="Parameter_5352" name="Km_atp" value="0.565"/>
          <Constant key="Parameter_5351" name="Kmf_pgk" value="0.021"/>
          <Constant key="Parameter_5350" name="Kmr_pgk" value="0.51"/>
          <Constant key="Parameter_5349" name="Vf_pgk" value="251"/>
          <Constant key="Parameter_5348" name="Vr_pgk" value="15.9833"/>
          <Constant key="Parameter_5347" name="switch_kashi" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_68" unitType="Default" scalingCompartment="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_441">
              <SourceParameter reference="ModelValue_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_440">
              <SourceParameter reference="ModelValue_72"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_439">
              <SourceParameter reference="ModelValue_73"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_438">
              <SourceParameter reference="ModelValue_74"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_437">
              <SourceParameter reference="ModelValue_75"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_436">
              <SourceParameter reference="ModelValue_76"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_435">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_434">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_442">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_443">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_444">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_445">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="Phosphoglycerate Mutase" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:name>Phosphoglycerate Mutase</celldesigner:name>
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s69" alias="sa159">
      <celldesigner:linkAnchor position="S" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s70" alias="sa160">
      <celldesigner:linkAnchor position="N" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000" />
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5655" name="Kmf_pgm" value="0.145"/>
          <Constant key="Parameter_5656" name="Kmr_pgm" value="0.139"/>
          <Constant key="Parameter_5654" name="Vf_pgm" value="11.2333"/>
          <Constant key="Parameter_5657" name="Vr_pgm" value="48"/>
          <Constant key="Parameter_5346" name="switch_kashi" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_67" unitType="Default" scalingCompartment="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_433">
              <SourceParameter reference="ModelValue_77"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_432">
              <SourceParameter reference="ModelValue_78"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_431">
              <SourceParameter reference="ModelValue_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_430">
              <SourceParameter reference="ModelValue_80"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_429">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_428">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_427">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_426">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="Enolase" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:name>Enolase</celldesigner:name>
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s70" alias="sa166">
      <celldesigner:linkAnchor position="S" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s60" alias="sa165">
      <celldesigner:linkAnchor position="N" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:listOfProductLinks>
    <celldesigner:productLink product="s71" alias="sa163" targetLineIndex="-1,1">
      <celldesigner:linkAnchor position="NE" />
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:line width="1.0" color="ff000000" type="Straight" />
    </celldesigner:productLink>
  </celldesigner:listOfProductLinks>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000" />
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
          <Product metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5345" name="Kmf_eno" value="0.045"/>
          <Constant key="Parameter_5344" name="Kmr_eno" value="0.089"/>
          <Constant key="Parameter_5343" name="Vf_eno" value="1.85"/>
          <Constant key="Parameter_5342" name="Vr_eno" value="2"/>
          <Constant key="Parameter_5341" name="switch_kashi" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_69" unitType="Default" scalingCompartment="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_457">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_456">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_455">
              <SourceParameter reference="ModelValue_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_454">
              <SourceParameter reference="ModelValue_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_453">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_452">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_451">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_450">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="Pyruvate Kinase" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-03-11T10:55:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:name>Pyruvate Kinase</celldesigner:name>
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s60" alias="sa168">
      <celldesigner:linkAnchor position="S" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s61" alias="sa167">
      <celldesigner:linkAnchor position="N" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:listOfReactantLinks>
    <celldesigner:reactantLink reactant="s31" alias="sa172" targetLineIndex="-1,0">
      <celldesigner:linkAnchor position="SW" />
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:line width="1.0" color="ff000000" type="Straight" />
    </celldesigner:reactantLink>
    <celldesigner:reactantLink reactant="s1" alias="sa258" targetLineIndex="-1,0">
      <celldesigner:linkAnchor position="SE" />
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:line width="1.0" color="ff000000" type="Straight" />
    </celldesigner:reactantLink>
  </celldesigner:listOfReactantLinks>
  <celldesigner:listOfProductLinks>
    <celldesigner:productLink product="s30" alias="sa171" targetLineIndex="-1,1">
      <celldesigner:linkAnchor position="NW" />
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:line width="1.0" color="ff000000" type="Straight" />
    </celldesigner:productLink>
  </celldesigner:listOfProductLinks>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000" />
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_38" stoichiometry="1"/>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5340" name="Km_adp" value="0.00268"/>
          <Constant key="Parameter_5337" name="Kmf_pk" value="0.11"/>
          <Constant key="Parameter_5338" name="Kmr_pk" value="10"/>
          <Constant key="Parameter_5339" name="Vf_pk" value="9.43333"/>
          <Constant key="Parameter_5336" name="Vr_pk" value="0.00105"/>
          <Constant key="Parameter_5335" name="switch_kashi" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_70" unitType="Default" scalingCompartment="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_461">
              <SourceParameter reference="ModelValue_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_460">
              <SourceParameter reference="ModelValue_82"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_459">
              <SourceParameter reference="ModelValue_83"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_458">
              <SourceParameter reference="ModelValue_84"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_446">
              <SourceParameter reference="ModelValue_85"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_447">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_448">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_449">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_462">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_463">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="Phosphoglucomutase" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:name>Phosphoglucomutase</celldesigner:name>
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s72" alias="sa181">
      <celldesigner:linkAnchor position="S" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s57" alias="sa180">
      <celldesigner:linkAnchor position="N" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000" />
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5334" name="Kmf_pgm" value="0.045"/>
          <Constant key="Parameter_5333" name="Kmr_pgm" value="0.67"/>
          <Constant key="Parameter_5332" name="Vf_pgm" value="1.93333"/>
          <Constant key="Parameter_5331" name="Vr_pgm" value="1.12"/>
          <Constant key="Parameter_5330" name="switch_GSGP" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_352">
              <SourceParameter reference="ModelValue_63"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_351">
              <SourceParameter reference="ModelValue_64"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_350">
              <SourceParameter reference="ModelValue_65"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_349">
              <SourceParameter reference="ModelValue_66"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_348">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_347">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_346">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_353">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_26" name="re48" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-03-11T10:57:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s72" alias="sa182">
      <celldesigner:linkAnchor position="W" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s73" alias="sa183">
      <celldesigner:linkAnchor position="E" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:listOfReactantLinks>
    <celldesigner:reactantLink reactant="s74" alias="sa203" targetLineIndex="-1,0">
      <celldesigner:linkAnchor position="W" />
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:line width="1.0" color="ff000000" type="Straight" />
    </celldesigner:reactantLink>
  </celldesigner:listOfReactantLinks>
  <celldesigner:listOfProductLinks>
    <celldesigner:productLink product="s32" alias="sa204" targetLineIndex="-1,1">
      <celldesigner:linkAnchor position="SE" />
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:line width="1.0" color="ff000000" type="Straight" />
    </celldesigner:productLink>
    <celldesigner:productLink product="s32" alias="sa191" targetLineIndex="-1,1">
      <celldesigner:linkAnchor position="SE" />
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:line width="1.0" color="ff000000" type="Straight" />
    </celldesigner:productLink>
  </celldesigner:listOfProductLinks>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000" />
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s35" aliases="sa213" targetLineIndex="-1,2">
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s35" alias="sa213">
        <celldesigner:linkAnchor position="N" />
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000" />
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_32" stoichiometry="1"/>
          <Product metabolite="Metabolite_13" stoichiometry="2"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5329" name="K_up" value="4.36"/>
          <Constant key="Parameter_5328" name="X_up" value="10000"/>
          <Constant key="Parameter_5327" name="f_up_eq" value="8808"/>
          <Constant key="Parameter_5326" name="Km_AMP_2" value="0.016"/>
          <Constant key="Parameter_5320" name="h" value="1.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="ModelValue_88"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="ModelValue_89"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_90"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_27" name="Glycogen Synthase D-form" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:name>Glycogen Synthase D-form</celldesigner:name>
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s73" alias="sa185">
      <celldesigner:linkAnchor position="W" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s36" alias="sa186">
      <celldesigner:linkAnchor position="E" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:listOfProductLinks>
    <celldesigner:productLink product="s75" alias="sa205" targetLineIndex="-1,1">
      <celldesigner:linkAnchor position="E" />
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:line width="1.0" color="ff000000" type="Straight" />
    </celldesigner:productLink>
  </celldesigner:listOfProductLinks>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000" />
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s35" aliases="sa214" targetLineIndex="-1,3">
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s35" alias="sa214">
        <celldesigner:linkAnchor position="S" />
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000" />
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
          <Product metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5319" name="Kmf_gs" value="1.42"/>
          <Constant key="Parameter_5318" name="Vf_gs" value="0.146833"/>
          <Constant key="Parameter_5317" name="Km_AMP_2" value="0.016"/>
          <Constant key="Parameter_5316" name="h" value="1.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_63" unitType="Default" scalingCompartment="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_398">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_397">
              <SourceParameter reference="ModelValue_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_396">
              <SourceParameter reference="ModelValue_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_395">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_394">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_399">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_400">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_28" name="Glycogen Phosphorylase" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:name>Glycogen Phosphorylase</celldesigner:name>
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s36" alias="sa187">
      <celldesigner:linkAnchor position="E" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s72" alias="sa184">
      <celldesigner:linkAnchor position="W" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:listOfReactantLinks>
    <celldesigner:reactantLink reactant="s32" alias="sa188" targetLineIndex="-1,0">
      <celldesigner:linkAnchor position="ENE" />
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:line width="1.0" color="ff000000" type="Straight" />
    </celldesigner:reactantLink>
  </celldesigner:listOfReactantLinks>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000" />
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s35" aliases="sa212" targetLineIndex="-1,7">
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s35" alias="sa212">
        <celldesigner:linkAnchor position="N" />
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000" />
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5315" name="Kmf_gp" value="0.1"/>
          <Constant key="Parameter_5314" name="Kmr_gp" value="5"/>
          <Constant key="Parameter_5311" name="Vf_gp" value="0.781667"/>
          <Constant key="Parameter_5312" name="Vr_gp" value="55.8333"/>
          <Constant key="Parameter_5313" name="Km_AMP_2" value="0.016"/>
          <Constant key="Parameter_5310" name="h" value="1.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_64" unitType="Default" scalingCompartment="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_407">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_406">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_405">
              <SourceParameter reference="ModelValue_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_404">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_403">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_402">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_401">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_408">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_409">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_410">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_29" name="Lactate Dehydrogenase" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:name>Lactate Dehydrogenase</celldesigner:name>
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s61" alias="sa199">
      <celldesigner:linkAnchor position="E" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s38" alias="sa201">
      <celldesigner:linkAnchor position="W" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:listOfReactantLinks>
    <celldesigner:reactantLink reactant="s63" alias="sa200" targetLineIndex="-1,0">
      <celldesigner:linkAnchor position="E" />
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:line width="1.0" color="ff000000" type="Straight" />
    </celldesigner:reactantLink>
    <celldesigner:reactantLink reactant="s1" alias="sa198" targetLineIndex="-1,0">
      <celldesigner:linkAnchor position="SE" />
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:line width="1.0" color="ff000000" type="Straight" />
    </celldesigner:reactantLink>
  </celldesigner:listOfReactantLinks>
  <celldesigner:listOfProductLinks>
    <celldesigner:productLink product="s62" alias="sa202" targetLineIndex="-1,1">
      <celldesigner:linkAnchor position="WNW" />
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:line width="1.0" color="ff000000" type="Straight" />
    </celldesigner:productLink>
  </celldesigner:listOfProductLinks>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000" />
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_38" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_46" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
          <Product metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5309" name="Km_NADH" value="0.001"/>
          <Constant key="Parameter_5308" name="Kmf_ldh" value="0.125"/>
          <Constant key="Parameter_5307" name="Vf_ldh" value="23.9333"/>
          <Constant key="Parameter_5306" name="switch_LDH" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_65" unitType="Default" scalingCompartment="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_420">
              <SourceParameter reference="ModelValue_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_419">
              <SourceParameter reference="ModelValue_52"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_418">
              <SourceParameter reference="ModelValue_53"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_417">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_416">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_415">
              <SourceParameter reference="Metabolite_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_414">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_30" name="G6P Dehydrogenase" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:name>G6P Dehydrogenase</celldesigner:name>
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s57" alias="sa206">
      <celldesigner:linkAnchor position="SE" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s76" alias="sa207">
      <celldesigner:linkAnchor position="NW" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:listOfProductLinks>
    <celldesigner:productLink product="s32" alias="sa240" targetLineIndex="-1,1">
      <celldesigner:linkAnchor position="N" />
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:line width="1.0" color="ff000000" type="Straight" />
    </celldesigner:productLink>
  </celldesigner:listOfProductLinks>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000" />
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_35" stoichiometry="1"/>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5305" name="v_PGI_ss" value="0.22"/>
          <Constant key="Parameter_5304" name="rateOf_re37" value="1.07471"/>
          <Constant key="Parameter_5303" name="switch_kashi" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_57" unitType="Default" scalingCompartment="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_373">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_372">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_371">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_370">
              <SourceParameter reference="ModelValue_106"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_31" name="Glycogen Synthase I-form" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:name>Glycogen Synthase I-form</celldesigner:name>
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s73" alias="sa208">
      <celldesigner:linkAnchor position="W" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s36" alias="sa209">
      <celldesigner:linkAnchor position="E" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:listOfProductLinks>
    <celldesigner:productLink product="s75" alias="sa210" targetLineIndex="-1,1">
      <celldesigner:linkAnchor position="E" />
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:line width="1.0" color="ff000000" type="Straight" />
    </celldesigner:productLink>
  </celldesigner:listOfProductLinks>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000" />
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s35" aliases="sa215" targetLineIndex="-1,3">
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s35" alias="sa215">
        <celldesigner:linkAnchor position="S" />
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000" />
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
          <Product metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5302" name="Kmf_gs" value="0.08"/>
          <Constant key="Parameter_5301" name="Vf_gs" value="0.146833"/>
          <Constant key="Parameter_5300" name="Km_AMP_2" value="0.016"/>
          <Constant key="Parameter_5299" name="h" value="1.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_58" unitType="Default" scalingCompartment="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_366">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_367">
              <SourceParameter reference="ModelValue_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_368">
              <SourceParameter reference="ModelValue_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_369">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_365">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_364">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_374">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_32" name="re54" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-03-11T10:57:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s67" alias="sa216">
      <celldesigner:linkAnchor position="S" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s77" alias="sa217">
      <celldesigner:linkAnchor position="N" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:listOfReactantLinks>
    <celldesigner:reactantLink reactant="s63" alias="sa219" targetLineIndex="-1,0">
      <celldesigner:linkAnchor position="SSE" />
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:line width="1.0" color="ff000000" type="Straight" />
    </celldesigner:reactantLink>
  </celldesigner:listOfReactantLinks>
  <celldesigner:listOfProductLinks>
    <celldesigner:productLink product="s62" alias="sa218" targetLineIndex="-1,1">
      <celldesigner:linkAnchor position="NNE" />
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:line width="1.0" color="ff000000" type="Straight" />
    </celldesigner:productLink>
  </celldesigner:listOfProductLinks>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000" />
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_26" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_46" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_36" stoichiometry="1"/>
          <Product metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5298" name="Kia_NADH" value="0.00107"/>
          <Constant key="Parameter_5297" name="Km_DHAP" value="0.3"/>
          <Constant key="Parameter_5296" name="Km_NADH" value="0.00284"/>
          <Constant key="Parameter_5295" name="vf" value="20"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="ModelValue_91"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="ModelValue_92"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="ModelValue_93"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Metabolite_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="Parameter_5295"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_33" name="re55" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-03-11T10:57:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s77" alias="sa217">
      <celldesigner:linkAnchor position="S" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s78" alias="sa220">
      <celldesigner:linkAnchor position="NNE" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:listOfProductLinks>
    <celldesigner:productLink product="s32" alias="sa221" targetLineIndex="-1,1">
      <celldesigner:linkAnchor position="NE" />
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:line width="1.0" color="ff000000" type="Straight" />
    </celldesigner:productLink>
  </celldesigner:listOfProductLinks>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000" />
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5294" name="rateOf_re54" value="2.13908"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_34" name="Mitochondrial Oxidation of Pyruvate" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_34">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-16T08:45:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:name>Mitochondrial Oxidation of Pyruvate</celldesigner:name>
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s31" alias="sa234">
      <celldesigner:linkAnchor position="S" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s30" alias="sa224">
      <celldesigner:linkAnchor position="N" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:listOfReactantLinks>
    <celldesigner:reactantLink reactant="s61" alias="sa235" targetLineIndex="-1,0">
      <celldesigner:linkAnchor position="SSW" />
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:line width="1.0" color="ff000000" type="Straight" />
    </celldesigner:reactantLink>
    <celldesigner:reactantLink reactant="s65" alias="sa233" targetLineIndex="-1,0">
      <celldesigner:linkAnchor position="SE" />
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:line width="1.0" color="ff000000" type="Straight" />
    </celldesigner:reactantLink>
    <celldesigner:reactantLink reactant="s65" alias="sa238" targetLineIndex="-1,0">
      <celldesigner:linkAnchor position="ESE" />
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:line width="1.0" color="ff000000" type="Straight" />
    </celldesigner:reactantLink>
    <celldesigner:reactantLink reactant="s65" alias="sa237" targetLineIndex="-1,0">
      <celldesigner:linkAnchor position="SE" />
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:line width="1.0" color="ff000000" type="Straight" />
    </celldesigner:reactantLink>
    <celldesigner:reactantLink reactant="s32" alias="sa227" targetLineIndex="-1,0">
      <celldesigner:linkAnchor position="SW" />
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:line width="1.0" color="ff000000" type="Straight" />
    </celldesigner:reactantLink>
    <celldesigner:reactantLink reactant="s63" alias="sa226" targetLineIndex="-1,0">
      <celldesigner:linkAnchor position="WSW" />
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:line width="1.0" color="ff000000" type="Straight" />
    </celldesigner:reactantLink>
  </celldesigner:listOfReactantLinks>
  <celldesigner:listOfProductLinks>
    <celldesigner:productLink product="s64" alias="sa228" targetLineIndex="-1,1">
      <celldesigner:linkAnchor position="ENE" />
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:line width="1.0" color="ff000000" type="Straight" />
    </celldesigner:productLink>
    <celldesigner:productLink product="s64" alias="sa229" targetLineIndex="-1,1">
      <celldesigner:linkAnchor position="E" />
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:line width="1.0" color="ff000000" type="Straight" />
    </celldesigner:productLink>
    <celldesigner:productLink product="s64" alias="sa232" targetLineIndex="-1,1">
      <celldesigner:linkAnchor position="E" />
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:line width="1.0" color="ff000000" type="Straight" />
    </celldesigner:productLink>
    <celldesigner:productLink product="s62" alias="sa222" targetLineIndex="-1,1">
      <celldesigner:linkAnchor position="WNW" />
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:line width="1.0" color="ff000000" type="Straight" />
    </celldesigner:productLink>
  </celldesigner:listOfProductLinks>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000" />
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="15"/>
          <Substrate metabolite="Metabolite_38" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_43" stoichiometry="3"/>
          <Substrate metabolite="Metabolite_13" stoichiometry="15"/>
          <Substrate metabolite="Metabolite_46" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="15"/>
          <Product metabolite="Metabolite_24" stoichiometry="3"/>
          <Product metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5293" name="Km_ADP" value="0.00107"/>
          <Constant key="Parameter_5292" name="Km_O2" value="0.00297"/>
          <Constant key="Parameter_5291" name="rateOf_re46" value="-5.13936e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="ModelValue_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="ModelValue_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_35" name="re58" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-03-11T10:57:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s68" alias="sa242">
      <celldesigner:linkAnchor position="S" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s69" alias="sa244">
      <celldesigner:linkAnchor position="N" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:listOfReactantLinks>
    <celldesigner:reactantLink reactant="s72" alias="sa243" targetLineIndex="-1,0">
      <celldesigner:linkAnchor position="SSE" />
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:line width="1.0" color="ff000000" type="Straight" />
    </celldesigner:reactantLink>
  </celldesigner:listOfReactantLinks>
  <celldesigner:listOfProductLinks>
    <celldesigner:productLink product="s79" alias="sa245" targetLineIndex="-1,1">
      <celldesigner:linkAnchor position="NNE" />
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:line width="1.0" color="ff000000" type="Straight" />
    </celldesigner:productLink>
  </celldesigner:listOfProductLinks>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000" />
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_28" stoichiometry="1"/>
          <Product metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5290" name="Km_G1P" value="0.008"/>
          <Constant key="Parameter_5289" name="Km_GBP" value="0.565"/>
          <Constant key="Parameter_5288" name="Kmf_GBPS" value="0.021"/>
          <Constant key="Parameter_5287" name="Kmr_GBPS" value="0.51"/>
          <Constant key="Parameter_5286" name="Vf_GBPS" value="10"/>
          <Constant key="Parameter_5285" name="Vr_GBPS" value="6"/>
          <Constant key="Parameter_5284" name="switch_kashi" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default" scalingCompartment="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="ModelValue_94"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="ModelValue_95"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="ModelValue_96"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="ModelValue_97"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="ModelValue_98"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="ModelValue_99"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_309">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_36" name="re59" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_36">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-03-11T10:57:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s79" alias="sa245">
      <celldesigner:linkAnchor position="SSW" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s78" alias="sa246">
      <celldesigner:linkAnchor position="NNE" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:listOfProductLinks>
    <celldesigner:productLink product="s32" alias="sa247" targetLineIndex="-1,1">
      <celldesigner:linkAnchor position="E" />
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:line width="1.0" color="ff000000" type="Straight" />
    </celldesigner:productLink>
    <celldesigner:productLink product="s32" alias="sa248" targetLineIndex="-1,1">
      <celldesigner:linkAnchor position="NE" />
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:line width="1.0" color="ff000000" type="Straight" />
    </celldesigner:productLink>
  </celldesigner:listOfProductLinks>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000" />
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
          <Product metabolite="Metabolite_13" stoichiometry="2"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5283" name="rateOf_re58" value="0.241705"/>
        </ListOfConstants>
        <KineticLaw function="Function_48" unitType="Default" scalingCompartment="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_323">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_37" name="re60" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-03-11T10:57:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s82" alias="sa250">
      <celldesigner:linkAnchor position="S" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s65" alias="sa249">
      <celldesigner:linkAnchor position="N" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000" />
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5282" name="PS_ec" value="10"/>
        </ListOfConstants>
        <KineticLaw function="Function_49" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_320">
              <SourceParameter reference="ModelValue_100"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_319">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_38" name="re61" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_38">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-03-11T10:57:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s81" alias="sa251">
      <celldesigner:linkAnchor position="S" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s82" alias="sa253">
      <celldesigner:linkAnchor position="N" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000" />
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5281" name="PS_ve" value="50"/>
        </ListOfConstants>
        <KineticLaw function="Function_50" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="ModelValue_101"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_39" name="re62" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-03-11T10:57:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s83" alias="sa255">
      <celldesigner:linkAnchor position="E" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s84" alias="sa256">
      <celldesigner:linkAnchor position="W" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:listOfReactantLinks>
    <celldesigner:reactantLink reactant="s65" alias="sa254" targetLineIndex="-1,0">
      <celldesigner:linkAnchor position="SE" />
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:line width="1.0" color="ff000000" type="Straight" />
    </celldesigner:reactantLink>
  </celldesigner:listOfReactantLinks>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000" />
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_41" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5280" name="k_a" value="15400"/>
          <Constant key="Parameter_5279" name="k_d" value="60"/>
        </ListOfConstants>
        <KineticLaw function="Function_51" unitType="Default" scalingCompartment="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_313">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="ModelValue_102"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="ModelValue_103"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_312">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_324">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_325">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfEvents>
      <Event key="Event_0" name="Hypoxia" delayAssignment="true" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-06-04T08:51:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Reference=Time> gt 100
        </TriggerExpression>
        <DelayExpression>
          0
        </DelayExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[vessel],Vector=Metabolites[O_sub_2\,v_endsub]" targetKey="Metabolite_44">
            <Expression>
              &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[lowO2],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
    </ListOfEvents>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_1">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-23T18:23:22Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[extracellular]" value="0.240633296" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[vessel]" value="0.068419999999999995" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[default]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[H_super__plus__endsuper__sub_i_endsub_]" value="47815798404580008" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[default],Vector=Metabolites[H_super__plus__endsuper__sub_o_endsub_]" value="602214085.70000005" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[OH_super__minus__endsuper__sub_i_endsub_]" value="602214085.70000005" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[default],Vector=Metabolites[OH_super__minus__endsuper__sub_o_endsub_]" value="602214085.70000005" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[pH_sub_i_endsub_]" value="4.2757200084699998e+21" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[Na_super__plus__endsuper__sub_i_endsub_]" value="3.0110704285000002e+21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[default],Vector=Metabolites[Na_super__plus__endsuper__sub_o_endsub_]" value="602214085.70000005" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[HCO_sub_3_endsub__super__minus__endsuper__sub_i_endsub_]" value="1.5055352142500001e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[default],Vector=Metabolites[HCO_sub_3_endsub__super__minus__endsuper__sub_o_endsub_]" value="602214085.70000005" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[Cl_super__minus__endsuper__sub_i_endsub_]" value="602214085.70000005" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[default],Vector=Metabolites[Cl_super__minus__endsuper__sub_o_endsub_]" value="602214085.70000005" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[ATP]" value="4.2154985999e+21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[ADP]" value="602214085.70000005" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[P_sub_i_endsub_]" value="4.2154985999e+21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[CrP]" value="1.5055352142500001e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[Cr]" value="602214085.70000005" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[AMP]" value="6022140857000001" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[Glycogen]" value="1.288738143398e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[L_super__minus__endsuper__sub_i_endsub_]" value="4.1131222053310005e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[Lactic Acid]" value="9.3849043115488011e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[G6P]" value="1.0177418048330002e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[F6P]" value="2.4690777513700008e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[GAP]" value="9.75586818834e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[PEP]" value="7.8287831140999997e+18" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[CO_sub_2_endsub_]" value="602214085.70000005" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[F16BP]" value="4.083011501046e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[DHAP]" value="2.1679707085199999e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[13BPG]" value="5.2332404047330003e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[3PG]" value="4.2757200084699996e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[2PG]" value="5.4199267712999997e+18" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[H_sub_2_endsub_O]" value="602214085.70000005" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[G1P]" value="1.2044281714000001e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[UDPG]" value="5.9619194484300005e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[UTP]" value="1.168295326258e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[UDP]" value="2.0475278913800004e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[6PGN]" value="602214085.70000005" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[Glycerol-3-P]" value="9.5149825540600005e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[s78]" value="602214085.70000005" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[PYR]" value="3.31217747135e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[G16BP]" value="4.2154985999000003e+18" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[extracellular],Vector=Metabolites[O_sub_2\,e_endsub]" value="1.8672878646321766e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[Mb]" value="3.2700224853510001e+18" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[MbO_sub_2_endsub_]" value="1.114096058545e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[O_sub_2_endsub]" value="6.6345323607483302e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[vessel],Vector=Metabolites[O_sub_2\,v_endsub]" value="5.4632940503863583e+18" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[NAD]" value="1.3588960843820499e+21" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[NADH]" value="4.2967975014695004e+20" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[default],Vector=Metabolites[L_super__minus__endsuper__sub_o_endsub_]" value="6.8050191684099991e+20" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[Glucose]" value="1.150228903687e+21" type="Species" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[J_NHE]" value="0.002811931829152551" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[J_CHE]" value="-0.0058855857604309374" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[J_NHS]" value="0.0022000402786242525" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[J_AE]" value="-0.0030002394441604944" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[beta_i]" value="23.800000000000011" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[beta_CO2]" value="26.512804658882658" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[H_active]" value="7.9432823472428221e-05" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[pH_o]" value="7.4000000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[HCO3_o]" value="23" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[HCO3_i]" value="11.527306373427244" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[switch_kashi]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[h]" value="1.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Km_AMP_2]" value="0.016" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[switch_GSGP]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[switch_LDH]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[level]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[rateOf_re15]" value="0.016345975975975972" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[rateOf_re20]" value="0.016322648954360121" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[rateOf_re37]" value="1.074707744593203" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[rateOf_re54]" value="2.1390807199423181" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[rateOf_re46]" value="-5.1389850031124836e-06" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[rateOf_re58]" value="0.24170499147543945" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[lowO2]" value="0.017500000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[K_AK]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[X_AK]" value="10000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[VR_cellcyto]" value="1.4702999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[X_atpase]" value="0.39000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[K_CK]" value="1660000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[X_CK]" value="10000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Kmf_eno]" value="0.044999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Kmr_eno]" value="0.088999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Vf_eno]" value="1.8500000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Vr_eno]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Kmf_fbp]" value="0.037999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Vf_fbp]" value="0.99166699999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Km_NAD]" value="0.058000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Kmf_gapdh]" value="0.042000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Vf_gapdh]" value="5.3499999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Kmf_gp]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Kmr_gp]" value="5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Vf_gp]" value="0.781667" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Vr_gp]" value="55.833300000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Kmf_gs_I_form]" value="0.080000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Vf_gs_I_form]" value="0.14683299999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Kmf_gs_D_form]" value="1.4199999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Vf_gs_D_form]" value="0.14683299999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Km_ATP_hk]" value="0.23599999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Kmf_hk]" value="0.071999999999999995" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Kmr_hk]" value="0.042000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Vf_hk]" value="0.55000000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Vr_hk]" value="0.000106" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Km_NADH]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Kmf_ldh]" value="0.125" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Vf_ldh]" value="23.933299999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Km_Lac_flux_in]" value="2.2000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Vmax_Lac_flux_in]" value="0.048169999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Km_Lac_flux_out]" value="6.9199999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Vmax_Lac_flux_out]" value="0.1817" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Km_ADP]" value="0.00107" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Km_O2]" value="0.00297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Km_ATP_pfk]" value="0.127" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Kmf_pfk]" value="0.224" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Vf_pfk]" value="1.32833" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Kmf_pgm]" value="0.044999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Kmr_pgm]" value="0.67000000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Vf_pgm]" value="1.93333" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Vr_pgm]" value="1.1200000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Kmf_pgi]" value="0.42499999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Kmr_pgi]" value="0.17499999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Vf_pgi]" value="10.066700000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Vr_pgi]" value="9.5999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Km_ADP_pgk]" value="0.0080000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Km_ATP_pgk]" value="0.56499999999999995" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Kmf_pgk]" value="0.021000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Kmr_pgk]" value="0.51000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Vf_pgk]" value="251" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Vr_pgk]" value="15.9833" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Kmf_pglym]" value="0.14499999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Kmr_pglym]" value="0.13900000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Vf_pglym]" value="11.2333" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Vr_pglym]" value="48" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Km_ADP_pk]" value="0.0026800000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Kmf_pk]" value="0.11" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Kmr_pk]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Vf_pk]" value="9.4333299999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Vr_pk]" value="0.0010499999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[K_Lac]" value="0.12589" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[X_Lac]" value="10000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[K_up]" value="4.3600000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[X_up]" value="10000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[f_up_eq]" value="8808" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Kia_NADH]" value="0.00107" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Km_DHAP]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Km_NADH_re54]" value="0.0028400000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Km_G1P]" value="0.0080000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Km_GBP]" value="0.56499999999999995" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Kmf_GBPS]" value="0.021000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Kmr_GBPS]" value="0.51000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Vf_GBPS]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Vr_GBPS]" value="6" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[PS_ec]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[PS_ve]" value="50" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[k_a]" value="15400" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[k_d]" value="60" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Kmf_tpi]" value="1.53" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Vf_tpi]" value="5.9333299999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[v_PGI_ss]" value="0.22" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[re2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[re2],ParameterGroup=Parameters,Parameter=v" value="0.002811931829152551" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[J_NHE],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[re3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[re3],ParameterGroup=Parameters,Parameter=v" value="0.0022000402786242525" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[J_NHS],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[re4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[re4],ParameterGroup=Parameters,Parameter=v" value="0.0022000402786242525" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[J_NHS],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[re5]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[re5],ParameterGroup=Parameters,Parameter=v" value="-0.0030002394441604944" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[J_AE],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[re6]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[re6],ParameterGroup=Parameters,Parameter=v" value="-0.0030002394441604944" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[J_AE],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[re7]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[re7],ParameterGroup=Parameters,Parameter=v" value="-0.0058855857604309374" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[J_CHE],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[re8]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[re8],ParameterGroup=Parameters,Parameter=v" value="-0.0058855857604309374" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[J_CHE],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[ATPase (ATP Consumption)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[ATPase (ATP Consumption)],ParameterGroup=Parameters,Parameter=X_atpase" value="0.39000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[X_atpase],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[ATPase (ATP Consumption)],ParameterGroup=Parameters,Parameter=level" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[level],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[ATPase (ATP Consumption)],ParameterGroup=Parameters,Parameter=VR_cellcyto" value="1.4702999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[VR_cellcyto],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Creatine Kinase]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Creatine Kinase],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Adenylate Kinase]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Adenylate Kinase],ParameterGroup=Parameters,Parameter=K_AK" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[K_AK],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Adenylate Kinase],ParameterGroup=Parameters,Parameter=X_AK" value="10000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[X_AK],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Lactate Flux (in)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Lactate Flux (in)],ParameterGroup=Parameters,Parameter=Km" value="2.2000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Km_Lac_flux_in],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Lactate Flux (in)],ParameterGroup=Parameters,Parameter=Vmax" value="0.048169999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Vmax_Lac_flux_in],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[co-Lactate Flux (in)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[co-Lactate Flux (in)],ParameterGroup=Parameters,Parameter=v" value="0.016345975975975972" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[rateOf_re15],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Lactate Flux (out)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Lactate Flux (out)],ParameterGroup=Parameters,Parameter=Km" value="6.9199999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Km_Lac_flux_out],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Lactate Flux (out)],ParameterGroup=Parameters,Parameter=Vmax" value="0.1817" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Vmax_Lac_flux_out],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[co-Lactate Flux (out)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[co-Lactate Flux (out)],ParameterGroup=Parameters,Parameter=v" value="0.016322648954360121" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[rateOf_re20],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[re22]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[re22],ParameterGroup=Parameters,Parameter=K_Lac" value="0.12589" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[K_Lac],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[re22],ParameterGroup=Parameters,Parameter=X_Lac" value="10000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[X_Lac],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[re22],ParameterGroup=Parameters,Parameter=H_active" value="7.9432823472428221e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[H_active],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Hexokinase]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Hexokinase],ParameterGroup=Parameters,Parameter=Km_ATP" value="0.23599999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Km_ATP_hk],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Hexokinase],ParameterGroup=Parameters,Parameter=Kmf_hk" value="0.071999999999999995" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Kmf_hk],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Hexokinase],ParameterGroup=Parameters,Parameter=Kmr_hk" value="0.042000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Kmr_hk],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Hexokinase],ParameterGroup=Parameters,Parameter=Vf_hk" value="0.55000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Vf_hk],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Hexokinase],ParameterGroup=Parameters,Parameter=Vr_hk" value="0.000106" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Vr_hk],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Hexokinase],ParameterGroup=Parameters,Parameter=switch_kashi" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[switch_kashi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Phosphoglucose Isomerase (forward)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Phosphoglucose Isomerase (forward)],ParameterGroup=Parameters,Parameter=Kmf_pgi" value="0.42499999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Kmf_pgi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Phosphoglucose Isomerase (forward)],ParameterGroup=Parameters,Parameter=Kmr_pgi" value="0.17499999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Kmr_pgi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Phosphoglucose Isomerase (forward)],ParameterGroup=Parameters,Parameter=Vf_pgi" value="10.066700000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Vf_pgi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Phosphoglucose Isomerase (forward)],ParameterGroup=Parameters,Parameter=Vr_pgi" value="9.5999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Vr_pgi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Phosphoglucose Isomerase (forward)],ParameterGroup=Parameters,Parameter=switch_kashi" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[switch_kashi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Phosphfructokinase]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Phosphfructokinase],ParameterGroup=Parameters,Parameter=Km_ATP" value="0.127" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Km_ATP_pfk],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Phosphfructokinase],ParameterGroup=Parameters,Parameter=Kmf_pfk" value="0.224" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Kmf_pfk],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Phosphfructokinase],ParameterGroup=Parameters,Parameter=Vf_pfk" value="1.32833" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Vf_pfk],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Phosphfructokinase],ParameterGroup=Parameters,Parameter=switch_kashi" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[switch_kashi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Fructose-bisphosphate Aldolase]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Fructose-bisphosphate Aldolase],ParameterGroup=Parameters,Parameter=Kmf_fbp" value="0.037999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Kmf_fbp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Fructose-bisphosphate Aldolase],ParameterGroup=Parameters,Parameter=Vf_fbp" value="0.99166699999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Vf_fbp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Fructose-bisphosphate Aldolase],ParameterGroup=Parameters,Parameter=switch_kashi" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[switch_kashi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Triosephosphate Isomerase]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Triosephosphate Isomerase],ParameterGroup=Parameters,Parameter=Kmf_tpi" value="1.53" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Kmf_tpi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Triosephosphate Isomerase],ParameterGroup=Parameters,Parameter=Vf_tpi" value="5.9333299999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Vf_tpi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Triosephosphate Isomerase],ParameterGroup=Parameters,Parameter=switch_kashi" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[switch_kashi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Glyceraldehyde 3-Phosphate Dehydrogenase]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Glyceraldehyde 3-Phosphate Dehydrogenase],ParameterGroup=Parameters,Parameter=Km_NAD" value="0.058000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Km_NAD],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Glyceraldehyde 3-Phosphate Dehydrogenase],ParameterGroup=Parameters,Parameter=Kmf_gapdh" value="0.042000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Kmf_gapdh],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Glyceraldehyde 3-Phosphate Dehydrogenase],ParameterGroup=Parameters,Parameter=Vf_gapdh" value="5.3499999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Vf_gapdh],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Glyceraldehyde 3-Phosphate Dehydrogenase],ParameterGroup=Parameters,Parameter=switch_kashi" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[switch_kashi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Phosphoglycerate Kinase]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Phosphoglycerate Kinase],ParameterGroup=Parameters,Parameter=Km_adp" value="0.0080000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Km_ADP_pgk],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Phosphoglycerate Kinase],ParameterGroup=Parameters,Parameter=Km_atp" value="0.56499999999999995" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Km_ATP_pgk],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Phosphoglycerate Kinase],ParameterGroup=Parameters,Parameter=Kmf_pgk" value="0.021000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Kmf_pgk],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Phosphoglycerate Kinase],ParameterGroup=Parameters,Parameter=Kmr_pgk" value="0.51000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Kmr_pgk],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Phosphoglycerate Kinase],ParameterGroup=Parameters,Parameter=Vf_pgk" value="251" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Vf_pgk],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Phosphoglycerate Kinase],ParameterGroup=Parameters,Parameter=Vr_pgk" value="15.9833" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Vr_pgk],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Phosphoglycerate Kinase],ParameterGroup=Parameters,Parameter=switch_kashi" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[switch_kashi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Phosphoglycerate Mutase]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Phosphoglycerate Mutase],ParameterGroup=Parameters,Parameter=Kmf_pgm" value="0.14499999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Kmf_pglym],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Phosphoglycerate Mutase],ParameterGroup=Parameters,Parameter=Kmr_pgm" value="0.13900000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Kmr_pglym],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Phosphoglycerate Mutase],ParameterGroup=Parameters,Parameter=Vf_pgm" value="11.2333" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Vf_pglym],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Phosphoglycerate Mutase],ParameterGroup=Parameters,Parameter=Vr_pgm" value="48" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Vr_pglym],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Phosphoglycerate Mutase],ParameterGroup=Parameters,Parameter=switch_kashi" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[switch_kashi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Enolase]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Enolase],ParameterGroup=Parameters,Parameter=Kmf_eno" value="0.044999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Kmf_eno],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Enolase],ParameterGroup=Parameters,Parameter=Kmr_eno" value="0.088999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Kmr_eno],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Enolase],ParameterGroup=Parameters,Parameter=Vf_eno" value="1.8500000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Vf_eno],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Enolase],ParameterGroup=Parameters,Parameter=Vr_eno" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Vr_eno],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Enolase],ParameterGroup=Parameters,Parameter=switch_kashi" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[switch_kashi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Pyruvate Kinase]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Pyruvate Kinase],ParameterGroup=Parameters,Parameter=Km_adp" value="0.0026800000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Km_ADP_pk],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Pyruvate Kinase],ParameterGroup=Parameters,Parameter=Kmf_pk" value="0.11" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Kmf_pk],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Pyruvate Kinase],ParameterGroup=Parameters,Parameter=Kmr_pk" value="10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Kmr_pk],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Pyruvate Kinase],ParameterGroup=Parameters,Parameter=Vf_pk" value="9.4333299999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Vf_pk],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Pyruvate Kinase],ParameterGroup=Parameters,Parameter=Vr_pk" value="0.0010499999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Vr_pk],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Pyruvate Kinase],ParameterGroup=Parameters,Parameter=switch_kashi" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[switch_kashi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Phosphoglucomutase]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Phosphoglucomutase],ParameterGroup=Parameters,Parameter=Kmf_pgm" value="0.044999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Kmf_pgm],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Phosphoglucomutase],ParameterGroup=Parameters,Parameter=Kmr_pgm" value="0.67000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Kmr_pgm],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Phosphoglucomutase],ParameterGroup=Parameters,Parameter=Vf_pgm" value="1.93333" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Vf_pgm],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Phosphoglucomutase],ParameterGroup=Parameters,Parameter=Vr_pgm" value="1.1200000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Vr_pgm],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Phosphoglucomutase],ParameterGroup=Parameters,Parameter=switch_GSGP" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[switch_GSGP],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[re48]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[re48],ParameterGroup=Parameters,Parameter=K_up" value="4.3600000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[K_up],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[re48],ParameterGroup=Parameters,Parameter=X_up" value="10000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[X_up],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[re48],ParameterGroup=Parameters,Parameter=f_up_eq" value="8808" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[f_up_eq],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[re48],ParameterGroup=Parameters,Parameter=Km_AMP_2" value="0.016" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Km_AMP_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[re48],ParameterGroup=Parameters,Parameter=h" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[h],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Glycogen Synthase D-form]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Glycogen Synthase D-form],ParameterGroup=Parameters,Parameter=Kmf_gs" value="1.4199999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Kmf_gs_D_form],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Glycogen Synthase D-form],ParameterGroup=Parameters,Parameter=Vf_gs" value="0.14683299999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Vf_gs_D_form],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Glycogen Synthase D-form],ParameterGroup=Parameters,Parameter=Km_AMP_2" value="0.016" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Km_AMP_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Glycogen Synthase D-form],ParameterGroup=Parameters,Parameter=h" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[h],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Glycogen Phosphorylase]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Glycogen Phosphorylase],ParameterGroup=Parameters,Parameter=Kmf_gp" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Kmf_gp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Glycogen Phosphorylase],ParameterGroup=Parameters,Parameter=Kmr_gp" value="5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Kmr_gp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Glycogen Phosphorylase],ParameterGroup=Parameters,Parameter=Vf_gp" value="0.781667" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Vf_gp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Glycogen Phosphorylase],ParameterGroup=Parameters,Parameter=Vr_gp" value="55.833300000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Vr_gp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Glycogen Phosphorylase],ParameterGroup=Parameters,Parameter=Km_AMP_2" value="0.016" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Km_AMP_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Glycogen Phosphorylase],ParameterGroup=Parameters,Parameter=h" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[h],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Lactate Dehydrogenase]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Lactate Dehydrogenase],ParameterGroup=Parameters,Parameter=Km_NADH" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Km_NADH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Lactate Dehydrogenase],ParameterGroup=Parameters,Parameter=Kmf_ldh" value="0.125" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Kmf_ldh],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Lactate Dehydrogenase],ParameterGroup=Parameters,Parameter=Vf_ldh" value="23.933299999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Vf_ldh],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Lactate Dehydrogenase],ParameterGroup=Parameters,Parameter=switch_LDH" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[switch_LDH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[G6P Dehydrogenase]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[G6P Dehydrogenase],ParameterGroup=Parameters,Parameter=v_PGI_ss" value="0.22" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[v_PGI_ss],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[G6P Dehydrogenase],ParameterGroup=Parameters,Parameter=rateOf_re37" value="1.074707744593203" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[rateOf_re37],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[G6P Dehydrogenase],ParameterGroup=Parameters,Parameter=switch_kashi" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[switch_kashi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Glycogen Synthase I-form]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Glycogen Synthase I-form],ParameterGroup=Parameters,Parameter=Kmf_gs" value="0.080000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Kmf_gs_I_form],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Glycogen Synthase I-form],ParameterGroup=Parameters,Parameter=Vf_gs" value="0.14683299999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Vf_gs_I_form],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Glycogen Synthase I-form],ParameterGroup=Parameters,Parameter=Km_AMP_2" value="0.016" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Km_AMP_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Glycogen Synthase I-form],ParameterGroup=Parameters,Parameter=h" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[h],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[re54]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[re54],ParameterGroup=Parameters,Parameter=Kia_NADH" value="0.00107" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Kia_NADH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[re54],ParameterGroup=Parameters,Parameter=Km_DHAP" value="0.29999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Km_DHAP],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[re54],ParameterGroup=Parameters,Parameter=Km_NADH" value="0.0028400000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Km_NADH_re54],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[re54],ParameterGroup=Parameters,Parameter=vf" value="20" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[re55]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[re55],ParameterGroup=Parameters,Parameter=rateOf_re54" value="2.1390807199423181" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[rateOf_re54],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Mitochondrial Oxidation of Pyruvate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Mitochondrial Oxidation of Pyruvate],ParameterGroup=Parameters,Parameter=Km_ADP" value="0.00107" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Km_ADP],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Mitochondrial Oxidation of Pyruvate],ParameterGroup=Parameters,Parameter=Km_O2" value="0.00297" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Km_O2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[Mitochondrial Oxidation of Pyruvate],ParameterGroup=Parameters,Parameter=rateOf_re46" value="-5.1389850031124836e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[rateOf_re46],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[re58]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[re58],ParameterGroup=Parameters,Parameter=Km_G1P" value="0.0080000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Km_G1P],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[re58],ParameterGroup=Parameters,Parameter=Km_GBP" value="0.56499999999999995" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Km_GBP],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[re58],ParameterGroup=Parameters,Parameter=Kmf_GBPS" value="0.021000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Kmf_GBPS],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[re58],ParameterGroup=Parameters,Parameter=Kmr_GBPS" value="0.51000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Kmr_GBPS],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[re58],ParameterGroup=Parameters,Parameter=Vf_GBPS" value="10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Vf_GBPS],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[re58],ParameterGroup=Parameters,Parameter=Vr_GBPS" value="6" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[Vr_GBPS],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[re58],ParameterGroup=Parameters,Parameter=switch_kashi" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[switch_kashi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[re59]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[re59],ParameterGroup=Parameters,Parameter=rateOf_re58" value="0.24170499147543945" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[rateOf_re58],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[re60]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[re60],ParameterGroup=Parameters,Parameter=PS_ec" value="10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[PS_ec],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[re61]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[re61],ParameterGroup=Parameters,Parameter=PS_ve" value="50" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[PS_ve],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[re62]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[re62],ParameterGroup=Parameters,Parameter=k_a" value="15400" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[k_a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Reactions[re62],ParameterGroup=Parameters,Parameter=k_d" value="60" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[k_d],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_18"/>
      <StateTemplateVariable objectReference="Metabolite_20"/>
      <StateTemplateVariable objectReference="Metabolite_31"/>
      <StateTemplateVariable objectReference="Metabolite_26"/>
      <StateTemplateVariable objectReference="Metabolite_22"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_28"/>
      <StateTemplateVariable objectReference="Metabolite_43"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_36"/>
      <StateTemplateVariable objectReference="Metabolite_40"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_38"/>
      <StateTemplateVariable objectReference="Metabolite_27"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_39"/>
      <StateTemplateVariable objectReference="Metabolite_35"/>
      <StateTemplateVariable objectReference="Metabolite_32"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_25"/>
      <StateTemplateVariable objectReference="Metabolite_41"/>
      <StateTemplateVariable objectReference="Metabolite_33"/>
      <StateTemplateVariable objectReference="Metabolite_29"/>
      <StateTemplateVariable objectReference="Metabolite_30"/>
      <StateTemplateVariable objectReference="Metabolite_24"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_34"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_42"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
      <StateTemplateVariable objectReference="ModelValue_3"/>
      <StateTemplateVariable objectReference="ModelValue_4"/>
      <StateTemplateVariable objectReference="ModelValue_5"/>
      <StateTemplateVariable objectReference="ModelValue_6"/>
      <StateTemplateVariable objectReference="ModelValue_9"/>
      <StateTemplateVariable objectReference="ModelValue_16"/>
      <StateTemplateVariable objectReference="ModelValue_17"/>
      <StateTemplateVariable objectReference="ModelValue_18"/>
      <StateTemplateVariable objectReference="ModelValue_19"/>
      <StateTemplateVariable objectReference="ModelValue_20"/>
      <StateTemplateVariable objectReference="ModelValue_21"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_37"/>
      <StateTemplateVariable objectReference="Metabolite_45"/>
      <StateTemplateVariable objectReference="Metabolite_46"/>
      <StateTemplateVariable objectReference="Metabolite_48"/>
      <StateTemplateVariable objectReference="Metabolite_44"/>
      <StateTemplateVariable objectReference="Metabolite_47"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
      <StateTemplateVariable objectReference="Compartment_2"/>
      <StateTemplateVariable objectReference="Compartment_3"/>
      <StateTemplateVariable objectReference="ModelValue_7"/>
      <StateTemplateVariable objectReference="ModelValue_8"/>
      <StateTemplateVariable objectReference="ModelValue_10"/>
      <StateTemplateVariable objectReference="ModelValue_11"/>
      <StateTemplateVariable objectReference="ModelValue_12"/>
      <StateTemplateVariable objectReference="ModelValue_13"/>
      <StateTemplateVariable objectReference="ModelValue_14"/>
      <StateTemplateVariable objectReference="ModelValue_15"/>
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
    </StateTemplate>
    <InitialState type="initialState">
      0 4.2154985999e+21 602214085.70000005 47815798404580008 4.1131222053310005e+20 1.0177418048330002e+20 1.2044281714000001e+19 2.1679707085199999e+19 9.75586818834e+17 1.288738143398e+22 4.2757200084699996e+19 6.6345323607483302e+19 1.5055352142500001e+22 602214085.70000005 3.0110704285000002e+21 7.8287831140999997e+18 2.4690777513700008e+19 9.5149825540600005e+19 1.8672878646321766e+19 602214085.70000005 3.31217747135e+19 5.2332404047330003e+17 602214085.70000005 602214085.70000005 4.2154985999000003e+18 602214085.70000005 5.9619194484300005e+19 9.3849043115488011e+22 4.083011501046e+17 3.2700224853510001e+18 1.168295326258e+20 5.4199267712999997e+18 602214085.70000005 602214085.70000005 4.2154985999e+21 602214085.70000005 6022140857000001 602214085.70000005 602214085.70000005 2.0475278913800004e+19 602214085.70000005 1.5055352142500001e+22 1.114096058545e+20 0.002811931829152551 -0.0058855857604309374 0.0022000402786242525 -0.0030002394441604944 23.800000000000011 26.512804658882658 7.9432823472428221e-05 11.527306373427244 0.016345975975975972 0.016322648954360121 1.074707744593203 2.1390807199423181 -5.1389850031124836e-06 0.24170499147543945 4.2757200084699998e+21 602214085.70000005 1.3588960843820499e+21 4.2967975014695004e+20 1.150228903687e+21 5.4632940503863583e+18 6.8050191684099991e+20 1 0.240633296 0.068419999999999995 1 7.4000000000000004 23 1 1.5 0.016 1 1 1 0.017500000000000002 1 10000 1.4702999999999999 0.39000000000000001 1660000 10000 0.044999999999999998 0.088999999999999996 1.8500000000000001 2 0.037999999999999999 0.99166699999999997 0.058000000000000003 0.042000000000000003 5.3499999999999996 0.10000000000000001 5 0.781667 55.833300000000001 0.080000000000000002 0.14683299999999999 1.4199999999999999 0.14683299999999999 0.23599999999999999 0.071999999999999995 0.042000000000000003 0.55000000000000004 0.000106 0.001 0.125 23.933299999999999 2.2000000000000002 0.048169999999999998 6.9199999999999999 0.1817 0.00107 0.00297 0.127 0.224 1.32833 0.044999999999999998 0.67000000000000004 1.93333 1.1200000000000001 0.42499999999999999 0.17499999999999999 10.066700000000001 9.5999999999999996 0.0080000000000000002 0.56499999999999995 0.021000000000000001 0.51000000000000001 251 15.9833 0.14499999999999999 0.13900000000000001 11.2333 48 0.0026800000000000001 0.11 10 9.4333299999999998 0.0010499999999999999 0.12589 10000 4.3600000000000003 10000 8808 0.00107 0.29999999999999999 0.0028400000000000001 0.0080000000000000002 0.56499999999999995 0.021000000000000001 0.51000000000000001 10 6 10 50 15400 60 1.53 5.9333299999999998 0.22 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_15" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_11" target="" append="1" confirmOverwrite="1"/>
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
        <Parameter name="Target Criterion" type="string" value="Distance and Rate"/>
      </Method>
    </Task>
    <Task key="Task_16" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_12" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="5050"/>
        <Parameter name="StepSize" type="float" value="1"/>
        <Parameter name="Duration" type="float" value="5050"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_17" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="10"/>
            <Parameter name="Type" type="unsignedInteger" value="1"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[level],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="0"/>
            <Parameter name="Maximum" type="float" value="1"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Values" type="string" value="1"/>
            <Parameter name="Use Values" type="bool" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="10"/>
            <Parameter name="Type" type="unsignedInteger" value="1"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[lowO2],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="0.0087500000000000008"/>
            <Parameter name="Maximum" type="float" value="0.035000000000000003"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Values" type="string" value="0.02, 0.0175, 0.015"/>
            <Parameter name="Use Values" type="bool" value="1"/>
          </ParameterGroup>
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="1"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
        <Parameter name="Continue on Error" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_18" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_13" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_19" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_14" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_20" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_15" target="" append="1" confirmOverwrite="1"/>
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
        <Parameter name="Use Time Sens" type="bool" value="0"/>
        <Parameter name="Time-Sens" type="cn" value=""/>
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
    <Task key="Task_21" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_16" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_15"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_22" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_17" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_23" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_18" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_24" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_19" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_25" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Report reference="Report_20" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_26" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
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
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_27" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_21" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_15"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
    <Task key="Task_28" name="Time-Course Sensitivities" type="timeSensitivities" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
        <ParameterGroup name="ListOfParameters">
        </ParameterGroup>
        <ParameterGroup name="ListOfTargets">
        </ParameterGroup>
      </Problem>
      <Method name="LSODA Sensitivities" type="Sensitivities(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_11" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_12" name="Time-Course" taskType="timeCourse" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time-Course],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Time-Course],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_13" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_14" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
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
    <Report key="Report_15" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
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
    <Report key="Report_16" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_17" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
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
    <Report key="Report_18" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_19" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
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
    <Report key="Report_20" name="Moieties" taskType="moieties" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_21" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
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
    <PlotSpecification name="plot" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[ADP]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[ADP],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[AMP]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[AMP],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[ATP]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[ATP],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CrP]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[CrP],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Glycogen]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[Glycogen],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="plot_1" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[ATP]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[cell],Vector=Metabolites[ATP],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="plot_2" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[level].InitialValue|[O_sub_2,e_endsub]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Compartments[extracellular],Vector=Metabolites[O_sub_2\,e_endsub],Reference=Concentration"/>
            <ChannelSpec cn="CN=Root,Model=McDougal2017 - Metabolism in ischemic cardiomyocytes,Vector=Values[level],Reference=InitialValue"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <ListOfLayouts xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <Layout key="Layout_2" name="Layout">
      <Dimensions width="6000" height="4000"/>
      <ListOfCompartmentGlyphs>
        <CompartmentGlyph key="Layout_3" name="CompartmentGlyph" compartment="Compartment_0">
          <BoundingBox>
            <Position x="1105.75" y="846.25"/>
            <Dimensions width="3534.25" height="2193.75"/>
          </BoundingBox>
        </CompartmentGlyph>
        <CompartmentGlyph key="Layout_4" name="CompartmentGlyph_1" compartment="Compartment_1">
          <BoundingBox>
            <Position x="1857" y="715"/>
            <Dimensions width="1949" height="109"/>
          </BoundingBox>
        </CompartmentGlyph>
        <CompartmentGlyph key="Layout_5" name="CompartmentGlyph_2" compartment="Compartment_2">
          <BoundingBox>
            <Position x="1866" y="530"/>
            <Dimensions width="1918" height="160"/>
          </BoundingBox>
        </CompartmentGlyph>
      </ListOfCompartmentGlyphs>
      <ListOfMetabGlyphs>
        <MetaboliteGlyph key="Layout_6" name="SpeciesGlyph" metabolite="Metabolite_0">
          <BoundingBox>
            <Position x="3790" y="2959"/>
            <Dimensions width="33" height="36"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_7" name="SpeciesGlyph_1" metabolite="Metabolite_1">
          <BoundingBox>
            <Position x="3787" y="3158.5"/>
            <Dimensions width="39" height="33"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_8" name="SpeciesGlyph_2" metabolite="Metabolite_5">
          <BoundingBox>
            <Position x="3848" y="2956"/>
            <Dimensions width="51" height="37"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_9" name="SpeciesGlyph_3" metabolite="Metabolite_6">
          <BoundingBox>
            <Position x="3849" y="3156.5"/>
            <Dimensions width="40" height="36"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_10" name="SpeciesGlyph_4" metabolite="Metabolite_7">
          <BoundingBox>
            <Position x="4005" y="2939"/>
            <Dimensions width="53" height="64"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_11" name="SpeciesGlyph_5" metabolite="Metabolite_8">
          <BoundingBox>
            <Position x="3987" y="3144.5"/>
            <Dimensions width="95" height="56"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_12" name="SpeciesGlyph_6" metabolite="Metabolite_2">
          <BoundingBox>
            <Position x="4323" y="2931"/>
            <Dimensions width="54" height="58"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_13" name="SpeciesGlyph_7" metabolite="Metabolite_3">
          <BoundingBox>
            <Position x="4323" y="3155.5"/>
            <Dimensions width="54" height="49"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_14" name="SpeciesGlyph_8" metabolite="Metabolite_9">
          <BoundingBox>
            <Position x="4168" y="2940"/>
            <Dimensions width="47" height="46"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_15" name="SpeciesGlyph_9" metabolite="Metabolite_10">
          <BoundingBox>
            <Position x="4172" y="3156.5"/>
            <Dimensions width="47" height="43"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_16" name="SpeciesGlyph_10" metabolite="">
          <BoundingBox>
            <Position x="3783.5" y="3017.5"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_17" name="SpeciesGlyph_11" metabolite="">
          <BoundingBox>
            <Position x="3935.5" y="3016.5"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_18" name="SpeciesGlyph_12" metabolite="">
          <BoundingBox>
            <Position x="4260.5" y="3018.5"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_19" name="SpeciesGlyph_13" metabolite="">
          <BoundingBox>
            <Position x="4104.5" y="3016.5"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_20" name="SpeciesGlyph_14" metabolite="Metabolite_5">
          <BoundingBox>
            <Position x="3922.8333333333335" y="2957.6111111111113"/>
            <Dimensions width="51" height="37"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_21" name="SpeciesGlyph_15" metabolite="Metabolite_6">
          <BoundingBox>
            <Position x="3936.8333333333339" y="3157.1111111111113"/>
            <Dimensions width="40" height="36"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_22" name="SpeciesGlyph_16" metabolite="Metabolite_7">
          <BoundingBox>
            <Position x="4099.8333333333339" y="2937.6111111111113"/>
            <Dimensions width="53" height="64"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_23" name="SpeciesGlyph_17" metabolite="Metabolite_8">
          <BoundingBox>
            <Position x="4074.8333333333339" y="3148.1111111111113"/>
            <Dimensions width="95" height="56"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_24" name="SpeciesGlyph_18" metabolite="Metabolite_9">
          <BoundingBox>
            <Position x="4249.8333333333339" y="2938.6111111111113"/>
            <Dimensions width="47" height="46"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_25" name="SpeciesGlyph_19" metabolite="Metabolite_10">
          <BoundingBox>
            <Position x="4258.8333333333339" y="3159.1111111111113"/>
            <Dimensions width="47" height="43"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_26" name="SpeciesGlyph_20" metabolite="Metabolite_4">
          <BoundingBox>
            <Position x="3625" y="1827.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_27" name="SpeciesGlyph_21" metabolite="">
          <BoundingBox>
            <Position x="3645" y="1905"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_28" name="SpeciesGlyph_22" metabolite="Metabolite_11">
          <BoundingBox>
            <Position x="4210" y="1680"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_29" name="SpeciesGlyph_23" metabolite="Metabolite_12">
          <BoundingBox>
            <Position x="4400" y="1680"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_30" name="SpeciesGlyph_24" metabolite="Metabolite_13">
          <BoundingBox>
            <Position x="4407.5" y="1737.5"/>
            <Dimensions width="25" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_31" name="SpeciesGlyph_25" metabolite="Metabolite_11">
          <BoundingBox>
            <Position x="4380" y="1790"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_32" name="SpeciesGlyph_26" metabolite="Metabolite_12">
          <BoundingBox>
            <Position x="4210" y="1790"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_33" name="SpeciesGlyph_27" metabolite="Metabolite_14">
          <BoundingBox>
            <Position x="4210" y="1840"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_34" name="SpeciesGlyph_28" metabolite="Metabolite_15">
          <BoundingBox>
            <Position x="4380" y="1840"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_35" name="SpeciesGlyph_29" metabolite="Metabolite_12">
          <BoundingBox>
            <Position x="4210" y="1910"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_36" name="SpeciesGlyph_30" metabolite="Metabolite_11">
          <BoundingBox>
            <Position x="4380" y="1910"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_37" name="SpeciesGlyph_31" metabolite="Metabolite_16">
          <BoundingBox>
            <Position x="4380" y="1960"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_38" name="SpeciesGlyph_32" metabolite="Metabolite_0">
          <BoundingBox>
            <Position x="4233.5" y="1742"/>
            <Dimensions width="33" height="36"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_39" name="SpeciesGlyph_33" metabolite="Metabolite_12">
          <BoundingBox>
            <Position x="4210" y="1960"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_40" name="SpeciesGlyph_34" metabolite="">
          <BoundingBox>
            <Position x="3955" y="830"/>
            <Dimensions width="130" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_41" name="SpeciesGlyph_35" metabolite="Metabolite_18">
          <BoundingBox>
            <Position x="3950" y="910"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_42" name="SpeciesGlyph_36" metabolite="Metabolite_1">
          <BoundingBox>
            <Position x="4060.5" y="733.5"/>
            <Dimensions width="39" height="33"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_43" name="SpeciesGlyph_37" metabolite="Metabolite_47">
          <BoundingBox>
            <Position x="3940" y="730"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_44" name="SpeciesGlyph_38" metabolite="Metabolite_0">
          <BoundingBox>
            <Position x="4073.5" y="912"/>
            <Dimensions width="33" height="36"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_45" name="SpeciesGlyph_39" metabolite="Metabolite_47">
          <BoundingBox>
            <Position x="4170" y="730"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_46" name="SpeciesGlyph_40" metabolite="">
          <BoundingBox>
            <Position x="4185" y="830"/>
            <Dimensions width="130" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_47" name="SpeciesGlyph_41" metabolite="Metabolite_1">
          <BoundingBox>
            <Position x="4290.5" y="733.5"/>
            <Dimensions width="39" height="33"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_48" name="SpeciesGlyph_42" metabolite="Metabolite_0">
          <BoundingBox>
            <Position x="4303.5" y="912"/>
            <Dimensions width="33" height="36"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_49" name="SpeciesGlyph_43" metabolite="Metabolite_18">
          <BoundingBox>
            <Position x="4180" y="910"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_50" name="SpeciesGlyph_44" metabolite="Metabolite_18">
          <BoundingBox>
            <Position x="4040" y="1040"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_51" name="SpeciesGlyph_45" metabolite="Metabolite_0">
          <BoundingBox>
            <Position x="4063.5" y="1092"/>
            <Dimensions width="33" height="36"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_52" name="SpeciesGlyph_46" metabolite="Metabolite_19">
          <BoundingBox>
            <Position x="4220" y="1060"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_53" name="SpeciesGlyph_47" metabolite="Metabolite_0">
          <BoundingBox>
            <Position x="4403" y="1628.5"/>
            <Dimensions width="33" height="36"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_54" name="SpeciesGlyph_48" metabolite="">
          <BoundingBox>
            <Position x="3525" y="1825"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_55" name="SpeciesGlyph_49" metabolite="">
          <BoundingBox>
            <Position x="3645" y="1735"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_56" name="SpeciesGlyph_50" metabolite="">
          <BoundingBox>
            <Position x="3765" y="1825"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_57" name="SpeciesGlyph_51" metabolite="Metabolite_48">
          <BoundingBox>
            <Position x="2430" y="990"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_58" name="SpeciesGlyph_52" metabolite="Metabolite_11">
          <BoundingBox>
            <Position x="2530" y="990"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_59" name="SpeciesGlyph_53" metabolite="Metabolite_20">
          <BoundingBox>
            <Position x="2430" y="1110"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_60" name="SpeciesGlyph_54" metabolite="Metabolite_12">
          <BoundingBox>
            <Position x="2530" y="1110"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_61" name="SpeciesGlyph_55" metabolite="Metabolite_20">
          <BoundingBox>
            <Position x="2430" y="1190"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_62" name="SpeciesGlyph_56" metabolite="Metabolite_21">
          <BoundingBox>
            <Position x="2430" y="1310"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_63" name="SpeciesGlyph_57" metabolite="Metabolite_21">
          <BoundingBox>
            <Position x="2430" y="1390"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_64" name="SpeciesGlyph_58" metabolite="Metabolite_25">
          <BoundingBox>
            <Position x="2430" y="1510"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_65" name="SpeciesGlyph_59" metabolite="Metabolite_25">
          <BoundingBox>
            <Position x="2430" y="1590"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_66" name="SpeciesGlyph_60" metabolite="Metabolite_22">
          <BoundingBox>
            <Position x="2430" y="1830"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_67" name="SpeciesGlyph_61" metabolite="Metabolite_26">
          <BoundingBox>
            <Position x="2200" y="1700"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_68" name="SpeciesGlyph_62" metabolite="Metabolite_26">
          <BoundingBox>
            <Position x="2230" y="1760"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_69" name="SpeciesGlyph_63" metabolite="Metabolite_22">
          <BoundingBox>
            <Position x="2330" y="1830"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_70" name="SpeciesGlyph_64" metabolite="Metabolite_22">
          <BoundingBox>
            <Position x="2430" y="1910"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_71" name="SpeciesGlyph_65" metabolite="Metabolite_27">
          <BoundingBox>
            <Position x="2430" y="2050"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_72" name="SpeciesGlyph_66" metabolite="Metabolite_45">
          <BoundingBox>
            <Position x="2330" y="1910"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_73" name="SpeciesGlyph_67" metabolite="Metabolite_46">
          <BoundingBox>
            <Position x="2330" y="2050"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_74" name="SpeciesGlyph_68" metabolite="Metabolite_13">
          <BoundingBox>
            <Position x="2277.5" y="1947.5"/>
            <Dimensions width="25" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_75" name="SpeciesGlyph_69" metabolite="Metabolite_27">
          <BoundingBox>
            <Position x="2430" y="2130"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_76" name="SpeciesGlyph_70" metabolite="Metabolite_28">
          <BoundingBox>
            <Position x="2430" y="2260"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_77" name="SpeciesGlyph_71" metabolite="Metabolite_28">
          <BoundingBox>
            <Position x="2430" y="2340"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_78" name="SpeciesGlyph_72" metabolite="Metabolite_29">
          <BoundingBox>
            <Position x="2430" y="2460"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_79" name="SpeciesGlyph_73" metabolite="Metabolite_12">
          <BoundingBox>
            <Position x="2530" y="2130"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_80" name="SpeciesGlyph_74" metabolite="Metabolite_11">
          <BoundingBox>
            <Position x="2530" y="2260"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_81" name="SpeciesGlyph_75" metabolite="Metabolite_30">
          <BoundingBox>
            <Position x="2330" y="2680"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_82" name="SpeciesGlyph_76" metabolite="Metabolite_23">
          <BoundingBox>
            <Position x="2430" y="2680"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_83" name="SpeciesGlyph_77" metabolite="Metabolite_29">
          <BoundingBox>
            <Position x="2430" y="2530"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_84" name="SpeciesGlyph_78" metabolite="Metabolite_38">
          <BoundingBox>
            <Position x="2430" y="2870"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_85" name="SpeciesGlyph_79" metabolite="Metabolite_23">
          <BoundingBox>
            <Position x="2430" y="2740"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_86" name="SpeciesGlyph_80" metabolite="Metabolite_11">
          <BoundingBox>
            <Position x="2530" y="2870"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_87" name="SpeciesGlyph_81" metabolite="Metabolite_12">
          <BoundingBox>
            <Position x="2530" y="2740"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_88" name="SpeciesGlyph_82" metabolite="Metabolite_11">
          <BoundingBox>
            <Position x="2530" y="1390"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_89" name="SpeciesGlyph_83" metabolite="Metabolite_12">
          <BoundingBox>
            <Position x="2530" y="1510"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_90" name="SpeciesGlyph_84" metabolite="Metabolite_0">
          <BoundingBox>
            <Position x="2273.5" y="2032"/>
            <Dimensions width="33" height="36"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_91" name="SpeciesGlyph_85" metabolite="Metabolite_20">
          <BoundingBox>
            <Position x="2260" y="1150"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_92" name="SpeciesGlyph_86" metabolite="Metabolite_31">
          <BoundingBox>
            <Position x="2260" y="1070"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_93" name="SpeciesGlyph_87" metabolite="Metabolite_31">
          <BoundingBox>
            <Position x="2300" y="960"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_94" name="SpeciesGlyph_88" metabolite="Metabolite_32">
          <BoundingBox>
            <Position x="2100" y="960"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_95" name="SpeciesGlyph_89" metabolite="Metabolite_31">
          <BoundingBox>
            <Position x="2140" y="1150"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_96" name="SpeciesGlyph_90" metabolite="Metabolite_32">
          <BoundingBox>
            <Position x="2000" y="960"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_97" name="SpeciesGlyph_91" metabolite="Metabolite_17">
          <BoundingBox>
            <Position x="1870" y="960"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_98" name="SpeciesGlyph_92" metabolite="Metabolite_17">
          <BoundingBox>
            <Position x="1850" y="1150"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_99" name="SpeciesGlyph_93" metabolite="Metabolite_13">
          <BoundingBox>
            <Position x="1907.5" y="1207.5"/>
            <Dimensions width="25" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_100" name="SpeciesGlyph_94" metabolite="Metabolite_13">
          <BoundingBox>
            <Position x="2127.5" y="917.5"/>
            <Dimensions width="25" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_101" name="SpeciesGlyph_95" metabolite="Metabolite_0">
          <BoundingBox>
            <Position x="1823.5" y="922"/>
            <Dimensions width="33" height="36"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_102" name="SpeciesGlyph_96" metabolite="Metabolite_0">
          <BoundingBox>
            <Position x="2313.5" y="872"/>
            <Dimensions width="33" height="36"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_103" name="SpeciesGlyph_97" metabolite="Metabolite_0">
          <BoundingBox>
            <Position x="2623.5" y="1092"/>
            <Dimensions width="33" height="36"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_104" name="SpeciesGlyph_98" metabolite="Metabolite_0">
          <BoundingBox>
            <Position x="2373.5" y="1512"/>
            <Dimensions width="33" height="36"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_105" name="SpeciesGlyph_99" metabolite="Metabolite_0">
          <BoundingBox>
            <Position x="1863.5" y="2662"/>
            <Dimensions width="33" height="36"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_106" name="SpeciesGlyph_100" metabolite="Metabolite_38">
          <BoundingBox>
            <Position x="1820" y="2720"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_107" name="SpeciesGlyph_101" metabolite="Metabolite_46">
          <BoundingBox>
            <Position x="1820" y="2790"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_108" name="SpeciesGlyph_102" metabolite="Metabolite_18">
          <BoundingBox>
            <Position x="2140" y="2720"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_109" name="SpeciesGlyph_103" metabolite="Metabolite_45">
          <BoundingBox>
            <Position x="2140" y="2790"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_110" name="SpeciesGlyph_104" metabolite="Metabolite_33">
          <BoundingBox>
            <Position x="2300" y="910"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_111" name="SpeciesGlyph_105" metabolite="Metabolite_13">
          <BoundingBox>
            <Position x="2147.5" y="877.5"/>
            <Dimensions width="25" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_112" name="SpeciesGlyph_106" metabolite="Metabolite_34">
          <BoundingBox>
            <Position x="1870" y="910"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_113" name="SpeciesGlyph_107" metabolite="Metabolite_20">
          <BoundingBox>
            <Position x="2550" y="1190"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_114" name="SpeciesGlyph_108" metabolite="Metabolite_35">
          <BoundingBox>
            <Position x="2650" y="1260"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_115" name="SpeciesGlyph_109" metabolite="Metabolite_32">
          <BoundingBox>
            <Position x="2000" y="1080"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_116" name="SpeciesGlyph_110" metabolite="Metabolite_17">
          <BoundingBox>
            <Position x="1870" y="1080"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_117" name="SpeciesGlyph_111" metabolite="Metabolite_34">
          <BoundingBox>
            <Position x="1870" y="1030"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_118" name="SpeciesGlyph_112" metabolite="Metabolite_0">
          <BoundingBox>
            <Position x="1823.5" y="1042"/>
            <Dimensions width="33" height="36"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_119" name="SpeciesGlyph_113" metabolite="Metabolite_16">
          <BoundingBox>
            <Position x="1990" y="1270"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_120" name="SpeciesGlyph_114" metabolite="Metabolite_16">
          <BoundingBox>
            <Position x="2180" y="1030"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_121" name="SpeciesGlyph_115" metabolite="Metabolite_16">
          <BoundingBox>
            <Position x="1950" y="870"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_122" name="SpeciesGlyph_116" metabolite="Metabolite_16">
          <BoundingBox>
            <Position x="1960" y="1010"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_123" name="SpeciesGlyph_117" metabolite="Metabolite_26">
          <BoundingBox>
            <Position x="2130" y="1760"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_124" name="SpeciesGlyph_118" metabolite="Metabolite_36">
          <BoundingBox>
            <Position x="2080" y="1850"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_125" name="SpeciesGlyph_119" metabolite="Metabolite_45">
          <BoundingBox>
            <Position x="1990" y="1850"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_126" name="SpeciesGlyph_120" metabolite="Metabolite_46">
          <BoundingBox>
            <Position x="1990" y="1760"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_127" name="SpeciesGlyph_121" metabolite="Metabolite_37">
          <BoundingBox>
            <Position x="2055" y="1965"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_128" name="SpeciesGlyph_122" metabolite="Metabolite_13">
          <BoundingBox>
            <Position x="2007.5" y="1967.5"/>
            <Dimensions width="25" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_129" name="SpeciesGlyph_123" metabolite="Metabolite_45">
          <BoundingBox>
            <Position x="3470" y="2760"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_130" name="SpeciesGlyph_124" metabolite="Metabolite_11">
          <BoundingBox>
            <Position x="3290" y="2790"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_131" name="SpeciesGlyph_125" metabolite="Metabolite_11">
          <BoundingBox>
            <Position x="3280" y="2770"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_132" name="SpeciesGlyph_126" metabolite="Metabolite_11">
          <BoundingBox>
            <Position x="3300" y="2780"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_133" name="SpeciesGlyph_127" metabolite="Metabolite_46">
          <BoundingBox>
            <Position x="3480" y="2600"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_134" name="SpeciesGlyph_128" metabolite="Metabolite_13">
          <BoundingBox>
            <Position x="3387.5" y="2577.5"/>
            <Dimensions width="25" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_135" name="SpeciesGlyph_129" metabolite="Metabolite_24">
          <BoundingBox>
            <Position x="3188.75" y="2738.75"/>
            <Dimensions width="42.5" height="42.5"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_136" name="SpeciesGlyph_130" metabolite="Metabolite_24">
          <BoundingBox>
            <Position x="3168.75" y="2778.75"/>
            <Dimensions width="42.5" height="42.5"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_137" name="SpeciesGlyph_131" metabolite="Metabolite_13">
          <BoundingBox>
            <Position x="3397.5" y="2567.5"/>
            <Dimensions width="25" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_138" name="SpeciesGlyph_132" metabolite="Metabolite_13">
          <BoundingBox>
            <Position x="3387.5" y="2567.5"/>
            <Dimensions width="25" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_139" name="SpeciesGlyph_133" metabolite="Metabolite_24">
          <BoundingBox>
            <Position x="3128.75" y="2718.75"/>
            <Dimensions width="42.5" height="42.5"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_140" name="SpeciesGlyph_134" metabolite="Metabolite_43">
          <BoundingBox>
            <Position x="3147.5" y="2577.5"/>
            <Dimensions width="25" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_141" name="SpeciesGlyph_135" metabolite="Metabolite_12">
          <BoundingBox>
            <Position x="3290" y="2530"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_142" name="SpeciesGlyph_136" metabolite="Metabolite_38">
          <BoundingBox>
            <Position x="3180" y="2520"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_143" name="SpeciesGlyph_137" metabolite="Metabolite_12">
          <BoundingBox>
            <Position x="3300" y="2520"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_144" name="SpeciesGlyph_138" metabolite="Metabolite_43">
          <BoundingBox>
            <Position x="3107.5" y="2567.5"/>
            <Dimensions width="25" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_145" name="SpeciesGlyph_139" metabolite="Metabolite_43">
          <BoundingBox>
            <Position x="3095.5" y="2597.5"/>
            <Dimensions width="25" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_146" name="SpeciesGlyph_140" metabolite="Metabolite_12">
          <BoundingBox>
            <Position x="3270" y="2510"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_147" name="SpeciesGlyph_141" metabolite="Metabolite_13">
          <BoundingBox>
            <Position x="2617.5" y="1297.5"/>
            <Dimensions width="25" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_148" name="SpeciesGlyph_142" metabolite="Metabolite_27">
          <BoundingBox>
            <Position x="1880" y="2100"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_149" name="SpeciesGlyph_143" metabolite="Metabolite_31">
          <BoundingBox>
            <Position x="1780" y="2090"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_150" name="SpeciesGlyph_144" metabolite="Metabolite_28">
          <BoundingBox>
            <Position x="1880" y="2240"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_151" name="SpeciesGlyph_145" metabolite="Metabolite_39">
          <BoundingBox>
            <Position x="1750" y="2240"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_152" name="SpeciesGlyph_146" metabolite="Metabolite_37">
          <BoundingBox>
            <Position x="1745" y="2375"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_153" name="SpeciesGlyph_147" metabolite="Metabolite_13">
          <BoundingBox>
            <Position x="1687.5" y="2347.5"/>
            <Dimensions width="25" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_154" name="SpeciesGlyph_148" metabolite="Metabolite_13">
          <BoundingBox>
            <Position x="1707.5" y="2377.5"/>
            <Dimensions width="25" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_155" name="SpeciesGlyph_149" metabolite="Metabolite_43">
          <BoundingBox>
            <Position x="2817" y="890"/>
            <Dimensions width="25" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_156" name="SpeciesGlyph_150" metabolite="Metabolite_40">
          <BoundingBox>
            <Position x="2812.5" y="759.5"/>
            <Dimensions width="33" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_157" name="SpeciesGlyph_151" metabolite="Metabolite_44">
          <BoundingBox>
            <Position x="2758.5" y="618.5"/>
            <Dimensions width="37" height="39"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_158" name="SpeciesGlyph_152" metabolite="Metabolite_40">
          <BoundingBox>
            <Position x="2761" y="747"/>
            <Dimensions width="33" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_159" name="SpeciesGlyph_153" metabolite="Metabolite_43">
          <BoundingBox>
            <Position x="2979.6666666666674" y="882.66666666666663"/>
            <Dimensions width="25" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_160" name="SpeciesGlyph_154" metabolite="Metabolite_41">
          <BoundingBox>
            <Position x="2956" y="932"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_161" name="SpeciesGlyph_155" metabolite="Metabolite_42">
          <BoundingBox>
            <Position x="3117" y="897"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_162" name="SpeciesGlyph_156" metabolite="">
          <BoundingBox>
            <Position x="3520" y="1873"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_163" name="SpeciesGlyph_157" metabolite="Metabolite_0">
          <BoundingBox>
            <Position x="2354.4285714285716" y="2756.5714285714284"/>
            <Dimensions width="33" height="36"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_164" name="SpeciesGlyph_158" metabolite="">
          <BoundingBox>
            <Position x="3537" y="1935"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
      </ListOfMetabGlyphs>
      <ListOfReactionGlyphs>
        <ReactionGlyph key="Layout_165" name="ReactionGlyph">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="3832.5288721039919" y="3033.6073975476052"/>
                <End x="3833.0941355234231" y="3048.5967430058513"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_166" name="SpeciesReferenceGlyph" metaboliteGlyph="Layout_6" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="3832.5288721039919" y="3033.6073975476052"/>
                    <End x="3831.7384955497259" y="3012.6486253951412"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="3831.7384955497259" y="3012.6486253951412"/>
                    <End x="3814.75" y="2995"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_167" name="SpeciesReferenceGlyph_1" metaboliteGlyph="Layout_7" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="3833.0941355234231" y="3048.5967430058513"/>
                    <End x="3833.8845120776887" y="3069.5555151583153"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="3833.8845120776887" y="3069.5555151583153"/>
                    <End x="3826" y="3158.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_168" name="ReactionGlyph_1" reaction="Reaction_0">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="3831.4234379781324" y="3047.1657398133616"/>
                <End x="3830.5653903032376" y="3032.1903014495733"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_169" name="SpeciesReferenceGlyph_2" metaboliteGlyph="Layout_9" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="3831.4234379781324" y="3047.1657398133616"/>
                    <End x="3832.3705183307407" y="3063.6950584759779"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="3832.3705183307407" y="3063.6950584759779"/>
                    <End x="3859" y="3156.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_170" name="SpeciesReferenceGlyph_3" metaboliteGlyph="Layout_8" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="3830.5653903032376" y="3032.1903014495733"/>
                    <End x="3829.6183099506288" y="3015.660982786957"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="3829.6183099506288" y="3015.660982786957"/>
                    <End x="3848" y="2993"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_171" name="ReactionGlyph_2" reaction="Reaction_1">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="3989.6746343550162" y="3050.2125318627832"/>
                <End x="3990.1027268795938" y="3035.2186418808469"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_172" name="SpeciesReferenceGlyph_4" metaboliteGlyph="Layout_21" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="3989.6746343550162" y="3050.2125318627832"/>
                    <End x="3989.0860961195031" y="3070.8260138715318"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="3989.0860961195031" y="3070.8260138715318"/>
                    <End x="3976.8333333333339" y="3157.1111111111113"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_173" name="SpeciesReferenceGlyph_5" metaboliteGlyph="Layout_20" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="3990.1027268795938" y="3035.2186418808469"/>
                    <End x="3990.6912651151074" y="3014.6051598720983"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="3990.6912651151074" y="3014.6051598720983"/>
                    <End x="3973.8333333333335" y="2994.6111111111113"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_174" name="ReactionGlyph_3" reaction="Reaction_2">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="3978.3834942129238" y="3054.5390153237136"/>
                <End x="3980.4475302340938" y="3039.6817021311031"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_175" name="SpeciesReferenceGlyph_6" metaboliteGlyph="Layout_11" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="3978.3834942129238" y="3054.5390153237136"/>
                    <End x="3975.9204334061847" y="3072.2685827551049"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="3975.9204334061847" y="3072.2685827551049"/>
                    <End x="3987" y="3144.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_176" name="SpeciesReferenceGlyph_7" metaboliteGlyph="Layout_10" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="3980.4475302340938" y="3039.6817021311031"/>
                    <End x="3982.910591040833" y="3021.9521346997117"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="3982.910591040833" y="3021.9521346997117"/>
                    <End x="4005" y="3003"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_177" name="ReactionGlyph_4" reaction="Reaction_3">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="4154.3863194565547" y="3039.8478591003268"/>
                <End x="4155.3685708776138" y="3054.8156639542731"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_178" name="SpeciesReferenceGlyph_8" metaboliteGlyph="Layout_22" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="4154.3863194565547" y="3039.8478591003268"/>
                    <End x="4153.0956902583866" y="3020.1809127739589"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="4153.0956902583866" y="3020.1809127739589"/>
                    <End x="4139.5833333333339" y="3001.6111111111113"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_179" name="SpeciesReferenceGlyph_9" metaboliteGlyph="Layout_23" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="4155.3685708776138" y="3054.8156639542731"/>
                    <End x="4156.6592000757819" y="3074.4826102806405"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="4156.6592000757819" y="3074.4826102806405"/>
                    <End x="4146.0833333333339" y="3148.1111111111113"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_180" name="ReactionGlyph_5" reaction="Reaction_4">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="4157.3188667968361" y="3048.0973621404846"/>
                <End x="4157.3615020922962" y="3033.0974227328879"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_181" name="SpeciesReferenceGlyph_10" metaboliteGlyph="Layout_15" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="4157.3188667968361" y="3048.0973621404846"/>
                    <End x="4157.2565808549798" y="3070.0107872426829"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="4157.2565808549798" y="3070.0107872426829"/>
                    <End x="4183.75" y="3156.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_182" name="SpeciesReferenceGlyph_11" metaboliteGlyph="Layout_14" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="4157.3615020922962" y="3033.0974227328879"/>
                    <End x="4157.4237880341525" y="3011.1839976306896"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="4157.4237880341525" y="3011.1839976306896"/>
                    <End x="4179.75" y="2986"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_183" name="ReactionGlyph_6" reaction="Reaction_5">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="4302.8990625289998" y="3053.0059594989475"/>
                <End x="4302.8360816492759" y="3038.0060917192372"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_184" name="SpeciesReferenceGlyph_12" metaboliteGlyph="Layout_25" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="4302.8990625289998" y="3053.0059594989475"/>
                    <End x="4303.0117590731461" y="3079.8463794617628"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="4303.0117590731461" y="3079.8463794617628"/>
                    <End x="4294.0833333333339" y="3159.1111111111113"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_185" name="SpeciesReferenceGlyph_13" metaboliteGlyph="Layout_24" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="4302.8360816492759" y="3038.0060917192372"/>
                    <End x="4302.7233851051296" y="3011.1656717564219"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="4302.7233851051296" y="3011.1656717564219"/>
                    <End x="4285.0833333333339" y="2984.6111111111113"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_186" name="ReactionGlyph_7" reaction="Reaction_6">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="4316.1443737400978" y="3038.3204293585086"/>
                <End x="4315.5142138965684" y="3053.3071867987155"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_187" name="SpeciesReferenceGlyph_14" metaboliteGlyph="Layout_12" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="4316.1443737400978" y="3038.3204293585086"/>
                    <End x="4317.1948606496662" y="3013.3372561692436"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="4317.1948606496662" y="3013.3372561692436"/>
                    <End x="4336.5" y="2989"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_188" name="SpeciesReferenceGlyph_15" metaboliteGlyph="Layout_13" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="4315.5142138965684" y="3053.3071867987155"/>
                    <End x="4314.463726987" y="3078.290359987981"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="4314.463726987" y="3078.290359987981"/>
                    <End x="4323" y="3155.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_189" name="ReactionGlyph_8">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="3660" y="1886.25"/>
                <End x="3660" y="1871.25"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_190" name="SpeciesReferenceGlyph_16" metaboliteGlyph="Layout_27" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="3660" y="1886.25"/>
                    <End x="3660" y="1905"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_191" name="SpeciesReferenceGlyph_17" metaboliteGlyph="Layout_26" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="3660" y="1871.25"/>
                    <End x="3660" y="1852.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_192" name="ReactionGlyph_9" reaction="Reaction_7">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="4337.5" y="1700"/>
                <End x="4352.5" y="1700"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_193" name="SpeciesReferenceGlyph_18" metaboliteGlyph="Layout_28" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="4337.5" y="1700"/>
                    <End x="4290" y="1700"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_194" name="SpeciesReferenceGlyph_19" metaboliteGlyph="Layout_29" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="4352.5" y="1700"/>
                    <End x="4400" y="1700"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_195" name="SpeciesReferenceGlyph_20" metaboliteGlyph="Layout_30" role="sideProduct">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="4407.5" y="1737.5"/>
                    <End x="4352.5" y="1700"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_196" name="SpeciesReferenceGlyph_21" metaboliteGlyph="Layout_53" role="sideProduct">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="4403" y="1664.5"/>
                    <End x="4352.5" y="1700"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_197" name="ReactionGlyph_10" reaction="Reaction_8">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="4327.5" y="1810"/>
                <End x="4342.5" y="1810"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_198" name="SpeciesReferenceGlyph_22" metaboliteGlyph="Layout_32" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="4327.5" y="1810"/>
                    <End x="4290" y="1810"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_199" name="SpeciesReferenceGlyph_23" metaboliteGlyph="Layout_31" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="4342.5" y="1810"/>
                    <End x="4380" y="1810"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_200" name="SpeciesReferenceGlyph_24" metaboliteGlyph="Layout_33" role="sideSubstrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="4290" y="1860"/>
                    <End x="4327.5" y="1810"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_201" name="SpeciesReferenceGlyph_25" metaboliteGlyph="Layout_38" role="sideSubstrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="4266.5" y="1769"/>
                    <End x="4327.5" y="1810"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_202" name="SpeciesReferenceGlyph_26" metaboliteGlyph="Layout_34" role="sideProduct">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="4380" y="1860"/>
                    <End x="4342.5" y="1810"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_203" name="ReactionGlyph_11" reaction="Reaction_9">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="4334.9999999999991" y="1930"/>
                <End x="4349.9999999999991" y="1930"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_204" name="SpeciesReferenceGlyph_27" metaboliteGlyph="Layout_35" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="4334.9999999999991" y="1930"/>
                    <End x="4290" y="1930"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_205" name="SpeciesReferenceGlyph_28" metaboliteGlyph="Layout_36" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="4349.9999999999991" y="1930"/>
                    <End x="4380" y="1930"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_206" name="SpeciesReferenceGlyph_29" metaboliteGlyph="Layout_37" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="4349.9999999999991" y="1930"/>
                    <End x="4380" y="1980"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_207" name="SpeciesReferenceGlyph_30" metaboliteGlyph="Layout_39" role="sideSubstrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="4290" y="1970"/>
                    <End x="4334.9999999999991" y="1930"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_208" name="ReactionGlyph_12" reaction="Reaction_10">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="4050.6429070244812" y="847.2641174566794"/>
                <End x="4050.6579220319736" y="862.26410994166247"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_209" name="SpeciesReferenceGlyph_31" metaboliteGlyph="Layout_43" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="4050.6429070244812" y="847.2641174566794"/>
                    <End x="4050.6158705092776" y="820.25463876825893"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="4050.6158705092776" y="820.25463876825893"/>
                    <End x="4020" y="770"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_210" name="SpeciesReferenceGlyph_32" metaboliteGlyph="Layout_41" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="4050.6579220319736" y="862.26410994166247"/>
                    <End x="4050.6849585471773" y="889.27358863008294"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="4050.6849585471773" y="889.27358863008294"/>
                    <End x="4030" y="910"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_211" name="ReactionGlyph_13" reaction="Reaction_11">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="4060" y="847.5"/>
                <End x="4060" y="862.5"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_212" name="SpeciesReferenceGlyph_33" metaboliteGlyph="Layout_42" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="4060" y="847.5"/>
                    <End x="4059.9999999999995" y="820"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="4059.9999999999995" y="820"/>
                    <End x="4080" y="766.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_213" name="SpeciesReferenceGlyph_34" metaboliteGlyph="Layout_44" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="4060" y="862.5"/>
                    <End x="4060" y="890.00000000000011"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="4060" y="890.00000000000011"/>
                    <End x="4090" y="912"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_214" name="ReactionGlyph_14" reaction="Reaction_12">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="4280.6480523122736" y="852.40425996140175"/>
                <End x="4280.6330373047822" y="837.40426747641868"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_215" name="SpeciesReferenceGlyph_35" metaboliteGlyph="Layout_49" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="4280.6480523122736" y="852.40425996140175"/>
                    <End x="4280.6750888274773" y="879.41373864982222"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="4280.6750888274773" y="879.41373864982222"/>
                    <End x="4260" y="910"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_216" name="SpeciesReferenceGlyph_36" metaboliteGlyph="Layout_45" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="4280.6330373047822" y="837.40426747641868"/>
                    <End x="4280.6060007895785" y="810.39478878799832"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="4280.6060007895785" y="810.39478878799832"/>
                    <End x="4250" y="770"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_217" name="ReactionGlyph_15" reaction="Reaction_13">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="4290" y="852.50000000000023"/>
                <End x="4290" y="837.50000000000023"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_218" name="SpeciesReferenceGlyph_37" metaboliteGlyph="Layout_48" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="4290" y="852.50000000000023"/>
                    <End x="4290" y="880.00000000000023"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="4290" y="880.00000000000023"/>
                    <End x="4320" y="912"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_219" name="SpeciesReferenceGlyph_38" metaboliteGlyph="Layout_47" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="4290" y="837.50000000000023"/>
                    <End x="4290" y="810.00000000000023"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="4290" y="810.00000000000023"/>
                    <End x="4310" y="766.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_220" name="ReactionGlyph_16" reaction="Reaction_14">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="4172.5" y="1080.0000000000009"/>
                <End x="4187.5" y="1080.0000000000005"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_221" name="SpeciesReferenceGlyph_39" metaboliteGlyph="Layout_50" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="4172.5" y="1080.0000000000009"/>
                    <End x="4140.0000000000009" y="1080.0000000000014"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="4140.0000000000009" y="1080.0000000000014"/>
                    <End x="4140.0000000000009" y="1060.0000000000014"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="4140.0000000000009" y="1060.0000000000014"/>
                    <End x="4120" y="1060"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_222" name="SpeciesReferenceGlyph_40" metaboliteGlyph="Layout_52" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="4187.5" y="1080.0000000000005"/>
                    <End x="4220" y="1080"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_223" name="SpeciesReferenceGlyph_41" metaboliteGlyph="Layout_51" role="sideSubstrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="4096.5" y="1110"/>
                    <End x="4172.5" y="1080.0000000000009"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_224" name="ReactionGlyph_17">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="3660" y="1788.75"/>
                <End x="3660" y="1803.75"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_225" name="SpeciesReferenceGlyph_42" metaboliteGlyph="Layout_55" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="3660" y="1788.75"/>
                    <End x="3660" y="1765"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_226" name="SpeciesReferenceGlyph_43" metaboliteGlyph="Layout_26" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="3660" y="1803.75"/>
                    <End x="3660" y="1827.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_227" name="ReactionGlyph_18">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="3737.5" y="1840"/>
                <End x="3722.5" y="1840"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_228" name="SpeciesReferenceGlyph_44" metaboliteGlyph="Layout_56" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="3737.5" y="1840"/>
                    <End x="3765" y="1840"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_229" name="SpeciesReferenceGlyph_45" metaboliteGlyph="Layout_26" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="3722.5" y="1840"/>
                    <End x="3695" y="1840"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_230" name="ReactionGlyph_19" reaction="Reaction_15">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="2470" y="1062.5"/>
                <End x="2470" y="1077.5"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_231" name="SpeciesReferenceGlyph_46" metaboliteGlyph="Layout_57" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2470" y="1062.5"/>
                    <End x="2470" y="1030"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_232" name="SpeciesReferenceGlyph_47" metaboliteGlyph="Layout_59" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2470" y="1077.5"/>
                    <End x="2470" y="1110"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_233" name="SpeciesReferenceGlyph_48" metaboliteGlyph="Layout_58" role="sideSubstrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2550" y="1030"/>
                    <End x="2470" y="1062.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_234" name="SpeciesReferenceGlyph_49" metaboliteGlyph="Layout_60" role="sideProduct">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2550" y="1110"/>
                    <End x="2470" y="1077.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_235" name="SpeciesReferenceGlyph_50" metaboliteGlyph="Layout_103" role="sideProduct">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2623.5" y="1101"/>
                    <End x="2470" y="1077.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_236" name="ReactionGlyph_20" reaction="Reaction_16">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="2470" y="1262.5"/>
                <End x="2470" y="1277.5"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_237" name="SpeciesReferenceGlyph_51" metaboliteGlyph="Layout_61" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2470" y="1262.5"/>
                    <End x="2470" y="1230"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_238" name="SpeciesReferenceGlyph_52" metaboliteGlyph="Layout_62" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2470" y="1277.5"/>
                    <End x="2470" y="1310"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_239" name="ReactionGlyph_21" reaction="Reaction_17">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="2470" y="1462.5"/>
                <End x="2470" y="1477.5"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_240" name="SpeciesReferenceGlyph_53" metaboliteGlyph="Layout_63" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2470" y="1462.5"/>
                    <End x="2470" y="1430"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_241" name="SpeciesReferenceGlyph_54" metaboliteGlyph="Layout_64" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2470" y="1477.5"/>
                    <End x="2470" y="1510"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_242" name="SpeciesReferenceGlyph_55" metaboliteGlyph="Layout_88" role="sideSubstrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2530" y="1430"/>
                    <End x="2470" y="1462.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_243" name="SpeciesReferenceGlyph_56" metaboliteGlyph="Layout_89" role="sideProduct">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2530" y="1510"/>
                    <End x="2470" y="1477.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_244" name="SpeciesReferenceGlyph_57" metaboliteGlyph="Layout_104" role="sideProduct">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2406.5" y="1512"/>
                    <End x="2470" y="1477.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_245" name="ReactionGlyph_22" reaction="Reaction_18">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="2470" y="1722.5"/>
                <End x="2470" y="1737.5"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_246" name="SpeciesReferenceGlyph_58" metaboliteGlyph="Layout_65" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2470" y="1722.5"/>
                    <End x="2470" y="1630"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_247" name="SpeciesReferenceGlyph_59" metaboliteGlyph="Layout_66" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2470" y="1737.5"/>
                    <End x="2470" y="1830"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_248" name="SpeciesReferenceGlyph_60" metaboliteGlyph="Layout_67" role="sideProduct">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2280" y="1730"/>
                    <End x="2470" y="1737.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_249" name="ReactionGlyph_23" reaction="Reaction_19">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="2305.3147871433416" y="1819.1434839291774"/>
                <End x="2314.6852128566584" y="1830.8565160708226"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_250" name="SpeciesReferenceGlyph_61" metaboliteGlyph="Layout_68" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2305.3147871433416" y="1819.1434839291774"/>
                    <End x="2290" y="1800"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_251" name="SpeciesReferenceGlyph_62" metaboliteGlyph="Layout_69" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2314.6852128566584" y="1830.8565160708226"/>
                    <End x="2330" y="1850"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_252" name="ReactionGlyph_24" reaction="Reaction_20">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="2470" y="1992.5"/>
                <End x="2470" y="2007.5"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_253" name="SpeciesReferenceGlyph_63" metaboliteGlyph="Layout_70" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2470" y="1992.5"/>
                    <End x="2470" y="1950"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_254" name="SpeciesReferenceGlyph_64" metaboliteGlyph="Layout_71" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2470" y="2007.5"/>
                    <End x="2470" y="2050"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_255" name="SpeciesReferenceGlyph_65" metaboliteGlyph="Layout_72" role="sideSubstrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2410" y="1950"/>
                    <End x="2470" y="1992.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_256" name="SpeciesReferenceGlyph_66" metaboliteGlyph="Layout_74" role="sideSubstrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2302.5" y="1966.25"/>
                    <End x="2470" y="1992.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_257" name="SpeciesReferenceGlyph_67" metaboliteGlyph="Layout_73" role="sideProduct">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2410" y="2050"/>
                    <End x="2470" y="2007.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_258" name="SpeciesReferenceGlyph_68" metaboliteGlyph="Layout_90" role="sideProduct">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2306.5" y="2041"/>
                    <End x="2470" y="2007.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_259" name="ReactionGlyph_25" reaction="Reaction_21">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="2470" y="2207.5"/>
                <End x="2470" y="2222.5"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_260" name="SpeciesReferenceGlyph_69" metaboliteGlyph="Layout_75" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2470" y="2207.5"/>
                    <End x="2470" y="2170"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_261" name="SpeciesReferenceGlyph_70" metaboliteGlyph="Layout_76" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2470" y="2222.5"/>
                    <End x="2470" y="2260"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_262" name="SpeciesReferenceGlyph_71" metaboliteGlyph="Layout_79" role="sideSubstrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2530" y="2170"/>
                    <End x="2470" y="2207.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_263" name="SpeciesReferenceGlyph_72" metaboliteGlyph="Layout_80" role="sideProduct">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2530" y="2260"/>
                    <End x="2470" y="2222.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_264" name="ReactionGlyph_26" reaction="Reaction_22">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="2470" y="2412.5"/>
                <End x="2470" y="2427.5"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_265" name="SpeciesReferenceGlyph_73" metaboliteGlyph="Layout_77" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2470" y="2412.5"/>
                    <End x="2470" y="2380"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_266" name="SpeciesReferenceGlyph_74" metaboliteGlyph="Layout_78" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2470" y="2427.5"/>
                    <End x="2470" y="2460"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_267" name="ReactionGlyph_27" reaction="Reaction_23">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="2470" y="2617.5"/>
                <End x="2470" y="2632.5"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_268" name="SpeciesReferenceGlyph_75" metaboliteGlyph="Layout_83" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2470" y="2617.5"/>
                    <End x="2470" y="2570"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_269" name="SpeciesReferenceGlyph_76" metaboliteGlyph="Layout_82" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2470" y="2632.5"/>
                    <End x="2470" y="2680"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_270" name="SpeciesReferenceGlyph_77" metaboliteGlyph="Layout_81" role="sideProduct">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2410" y="2680"/>
                    <End x="2470" y="2632.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_271" name="ReactionGlyph_28" reaction="Reaction_24">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="2470" y="2817.5"/>
                <End x="2470" y="2832.5"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_272" name="SpeciesReferenceGlyph_78" metaboliteGlyph="Layout_85" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2470" y="2817.5"/>
                    <End x="2470" y="2780"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_273" name="SpeciesReferenceGlyph_79" metaboliteGlyph="Layout_84" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2470" y="2832.5"/>
                    <End x="2470" y="2870"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_274" name="SpeciesReferenceGlyph_80" metaboliteGlyph="Layout_87" role="sideSubstrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2530" y="2780"/>
                    <End x="2470" y="2817.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_275" name="SpeciesReferenceGlyph_81" metaboliteGlyph="Layout_163" role="sideSubstrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2387.4285714285716" y="2792.5714285714284"/>
                    <End x="2470" y="2817.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_276" name="SpeciesReferenceGlyph_82" metaboliteGlyph="Layout_86" role="sideProduct">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2530" y="2870"/>
                    <End x="2470" y="2832.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_277" name="ReactionGlyph_29" reaction="Reaction_25">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="2300" y="1123.3333333333333"/>
                <End x="2300" y="1136.6666666666667"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_278" name="SpeciesReferenceGlyph_83" metaboliteGlyph="Layout_92" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2300" y="1123.3333333333333"/>
                    <End x="2300" y="1110"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_279" name="SpeciesReferenceGlyph_84" metaboliteGlyph="Layout_91" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2300" y="1136.6666666666667"/>
                    <End x="2300" y="1150"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_280" name="ReactionGlyph_30" reaction="Reaction_26">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="2247.5" y="980"/>
                <End x="2232.5" y="980"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_281" name="SpeciesReferenceGlyph_85" metaboliteGlyph="Layout_93" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2247.5" y="980"/>
                    <End x="2300" y="980"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_282" name="SpeciesReferenceGlyph_86" metaboliteGlyph="Layout_94" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2232.5" y="980"/>
                    <End x="2180" y="980"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_283" name="SpeciesReferenceGlyph_87" metaboliteGlyph="Layout_110" role="sideSubstrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2300" y="930"/>
                    <End x="2247.5" y="980"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_284" name="SpeciesReferenceGlyph_88" metaboliteGlyph="Layout_111" role="sideProduct">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2172.5" y="902.5"/>
                    <End x="2232.5" y="980"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_285" name="SpeciesReferenceGlyph_89" metaboliteGlyph="Layout_100" role="sideProduct">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2152.5" y="942.5"/>
                    <End x="2232.5" y="980"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_286" name="SpeciesReferenceGlyph_90" metaboliteGlyph="Layout_120" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2220" y="1030"/>
                    <End x="2247.5" y="985"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_287" name="ReactionGlyph_31" reaction="Reaction_27">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1982.5" y="980"/>
                <End x="1967.5" y="980"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_288" name="SpeciesReferenceGlyph_91" metaboliteGlyph="Layout_96" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1982.5" y="980"/>
                    <End x="2000" y="980"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_289" name="SpeciesReferenceGlyph_92" metaboliteGlyph="Layout_97" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1967.5" y="980"/>
                    <End x="1950" y="980"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_290" name="SpeciesReferenceGlyph_93" metaboliteGlyph="Layout_112" role="sideProduct">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1950" y="930"/>
                    <End x="1967.5" y="980"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_291" name="SpeciesReferenceGlyph_94" metaboliteGlyph="Layout_121" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1990" y="910"/>
                    <End x="1982.5" y="975"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_292" name="ReactionGlyph_32" reaction="Reaction_28">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="2027.5" y="1170"/>
                <End x="2042.5" y="1170"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_293" name="SpeciesReferenceGlyph_95" metaboliteGlyph="Layout_98" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2027.5" y="1170"/>
                    <End x="1930" y="1170"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_294" name="SpeciesReferenceGlyph_96" metaboliteGlyph="Layout_95" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2042.5" y="1170"/>
                    <End x="2140" y="1170"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_295" name="SpeciesReferenceGlyph_97" metaboliteGlyph="Layout_99" role="sideSubstrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1932.5" y="1213.75"/>
                    <End x="2027.5" y="1170"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_296" name="SpeciesReferenceGlyph_98" metaboliteGlyph="Layout_119" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2030" y="1270"/>
                    <End x="2042.5" y="1175"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_297" name="ReactionGlyph_33" reaction="Reaction_29">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="2012.5" y="2740"/>
                <End x="2027.5" y="2740"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_298" name="SpeciesReferenceGlyph_99" metaboliteGlyph="Layout_106" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2012.5" y="2740"/>
                    <End x="1900" y="2740"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_299" name="SpeciesReferenceGlyph_100" metaboliteGlyph="Layout_108" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2027.5" y="2740"/>
                    <End x="2140" y="2740"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_300" name="SpeciesReferenceGlyph_101" metaboliteGlyph="Layout_107" role="sideSubstrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1900" y="2810"/>
                    <End x="2012.5" y="2740"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_301" name="SpeciesReferenceGlyph_102" metaboliteGlyph="Layout_105" role="sideSubstrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1896.5" y="2698"/>
                    <End x="2012.5" y="2740"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_302" name="SpeciesReferenceGlyph_103" metaboliteGlyph="Layout_109" role="sideProduct">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2140" y="2800"/>
                    <End x="2027.5" y="2740"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_303" name="ReactionGlyph_34" reaction="Reaction_30">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="2636.6666666666665" y="1240"/>
                <End x="2643.3333333333335" y="1250"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_304" name="SpeciesReferenceGlyph_104" metaboliteGlyph="Layout_113" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2636.6666666666665" y="1240"/>
                    <End x="2630" y="1230"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_305" name="SpeciesReferenceGlyph_105" metaboliteGlyph="Layout_114" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2643.3333333333335" y="1250"/>
                    <End x="2650" y="1260"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_306" name="SpeciesReferenceGlyph_106" metaboliteGlyph="Layout_147" role="sideProduct">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2630" y="1297.5"/>
                    <End x="2643.3333333333335" y="1250"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_307" name="ReactionGlyph_35" reaction="Reaction_31">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1982.5" y="1100"/>
                <End x="1967.5" y="1100"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_308" name="SpeciesReferenceGlyph_107" metaboliteGlyph="Layout_115" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1982.5" y="1100"/>
                    <End x="2000" y="1100"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_309" name="SpeciesReferenceGlyph_108" metaboliteGlyph="Layout_116" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1967.5" y="1100"/>
                    <End x="1950" y="1100"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_310" name="SpeciesReferenceGlyph_109" metaboliteGlyph="Layout_117" role="sideProduct">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1950" y="1050"/>
                    <End x="1967.5" y="1100"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_311" name="SpeciesReferenceGlyph_110" metaboliteGlyph="Layout_122" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2000" y="1050"/>
                    <End x="1982.5" y="1095"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_312" name="ReactionGlyph_36" reaction="Reaction_32">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="2150.3033008588991" y="1819.6966991411009"/>
                <End x="2139.6966991411009" y="1830.3033008588991"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_313" name="SpeciesReferenceGlyph_111" metaboliteGlyph="Layout_123" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2150.3033008588991" y="1819.6966991411009"/>
                    <End x="2170" y="1800"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_314" name="SpeciesReferenceGlyph_112" metaboliteGlyph="Layout_124" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2139.6966991411009" y="1830.3033008588991"/>
                    <End x="2120" y="1850"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_315" name="SpeciesReferenceGlyph_113" metaboliteGlyph="Layout_126" role="sideSubstrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2050" y="1800"/>
                    <End x="2150.3033008588991" y="1819.6966991411009"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_316" name="SpeciesReferenceGlyph_114" metaboliteGlyph="Layout_125" role="sideProduct">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2050" y="1850"/>
                    <End x="2139.6966991411009" y="1830.3033008588991"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_317" name="ReactionGlyph_37" reaction="Reaction_33">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="2102.4475942898566" y="1920.9748336061355"/>
                <End x="2095.0524057101434" y="1934.0251663938645"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_318" name="SpeciesReferenceGlyph_115" metaboliteGlyph="Layout_124" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2102.4475942898566" y="1920.9748336061355"/>
                    <End x="2120" y="1890"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_319" name="SpeciesReferenceGlyph_116" metaboliteGlyph="Layout_127" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2095.0524057101434" y="1934.0251663938645"/>
                    <End x="2077.5" y="1965"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_320" name="SpeciesReferenceGlyph_117" metaboliteGlyph="Layout_128" role="sideProduct">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2032.5" y="1967.5"/>
                    <End x="2095.0524057101434" y="1934.0251663938645"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_321" name="ReactionGlyph_38" reaction="Reaction_34">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="3325.374532127079" y="2662.5093574584162"/>
                <End x="3324.625467872921" y="2677.4906425415838"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_322" name="SpeciesReferenceGlyph_118" metaboliteGlyph="Layout_141" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="3325.374532127079" y="2662.5093574584162"/>
                    <End x="3330" y="2570"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_323" name="SpeciesReferenceGlyph_119" metaboliteGlyph="Layout_131" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="3324.625467872921" y="2677.4906425415838"/>
                    <End x="3320" y="2770"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_324" name="SpeciesReferenceGlyph_120" metaboliteGlyph="Layout_142" role="sideSubstrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="3200" y="2560"/>
                    <End x="3325.374532127079" y="2662.5093574584162"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_325" name="SpeciesReferenceGlyph_121" metaboliteGlyph="Layout_140" role="sideSubstrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="3172.5" y="2602.5"/>
                    <End x="3325.374532127079" y="2662.5093574584162"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_326" name="SpeciesReferenceGlyph_122" metaboliteGlyph="Layout_145" role="sideSubstrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="3120.5" y="2616.25"/>
                    <End x="3325.374532127079" y="2662.5093574584162"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_327" name="SpeciesReferenceGlyph_123" metaboliteGlyph="Layout_144" role="sideSubstrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="3132.5" y="2592.5"/>
                    <End x="3325.374532127079" y="2662.5093574584162"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_328" name="SpeciesReferenceGlyph_124" metaboliteGlyph="Layout_134" role="sideSubstrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="3387.5" y="2602.5"/>
                    <End x="3325.374532127079" y="2662.5093574584162"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_329" name="SpeciesReferenceGlyph_125" metaboliteGlyph="Layout_133" role="sideSubstrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="3480" y="2630"/>
                    <End x="3325.374532127079" y="2662.5093574584162"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_330" name="SpeciesReferenceGlyph_126" metaboliteGlyph="Layout_135" role="sideProduct">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="3231.25" y="2749.375"/>
                    <End x="3324.625467872921" y="2677.4906425415838"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_331" name="SpeciesReferenceGlyph_127" metaboliteGlyph="Layout_136" role="sideProduct">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="3211.25" y="2800"/>
                    <End x="3324.625467872921" y="2677.4906425415838"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_332" name="SpeciesReferenceGlyph_128" metaboliteGlyph="Layout_139" role="sideProduct">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="3171.25" y="2740"/>
                    <End x="3324.625467872921" y="2677.4906425415838"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_333" name="SpeciesReferenceGlyph_129" metaboliteGlyph="Layout_129" role="sideProduct">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="3470" y="2770"/>
                    <End x="3324.625467872921" y="2677.4906425415838"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_334" name="ReactionGlyph_39" reaction="Reaction_35">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1920" y="2182.5"/>
                <End x="1920" y="2197.5"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_335" name="SpeciesReferenceGlyph_130" metaboliteGlyph="Layout_148" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1920" y="2182.5"/>
                    <End x="1920" y="2140"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_336" name="SpeciesReferenceGlyph_131" metaboliteGlyph="Layout_150" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1920" y="2197.5"/>
                    <End x="1920" y="2240"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_337" name="SpeciesReferenceGlyph_132" metaboliteGlyph="Layout_149" role="sideSubstrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1840" y="2130"/>
                    <End x="1920" y="2182.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_338" name="SpeciesReferenceGlyph_133" metaboliteGlyph="Layout_151" role="sideProduct">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1810" y="2240"/>
                    <End x="1920" y="2197.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_339" name="ReactionGlyph_40" reaction="Reaction_36">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1768.9473001156618" y="2320.0025956048535"/>
                <End x="1768.5526998843382" y="2334.9974043951465"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_340" name="SpeciesReferenceGlyph_134" metaboliteGlyph="Layout_151" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1768.9473001156618" y="2320.0025956048535"/>
                    <End x="1770" y="2280"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_341" name="SpeciesReferenceGlyph_135" metaboliteGlyph="Layout_152" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1768.5526998843382" y="2334.9974043951465"/>
                    <End x="1767.5" y="2375"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_342" name="SpeciesReferenceGlyph_136" metaboliteGlyph="Layout_153" role="sideProduct">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1712.5" y="2360"/>
                    <End x="1768.5526998843382" y="2334.9974043951465"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_343" name="SpeciesReferenceGlyph_137" metaboliteGlyph="Layout_154" role="sideProduct">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1732.5" y="2377.5"/>
                    <End x="1768.5526998843382" y="2334.9974043951465"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_344" name="ReactionGlyph_41" reaction="Reaction_37">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="2829.2085641683025" y="837.25011446275005"/>
                <End x="2829.2914358316975" y="852.24988553724995"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_345" name="SpeciesReferenceGlyph_138" metaboliteGlyph="Layout_156" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2829.2085641683025" y="837.25011446275005"/>
                    <End x="2829" y="799.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_346" name="SpeciesReferenceGlyph_139" metaboliteGlyph="Layout_155" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2829.2914358316975" y="852.24988553724995"/>
                    <End x="2829.5" y="890"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_347" name="ReactionGlyph_42" reaction="Reaction_38">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="2777.208101212485" y="694.75011703480618"/>
                <End x="2777.291898787515" y="709.74988296519382"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_348" name="SpeciesReferenceGlyph_140" metaboliteGlyph="Layout_157" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2777.208101212485" y="694.75011703480618"/>
                    <End x="2777" y="657.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_349" name="SpeciesReferenceGlyph_141" metaboliteGlyph="Layout_158" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="2777.291898787515" y="709.74988296519382"/>
                    <End x="2777.5" y="747"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_350" name="ReactionGlyph_43" reaction="Reaction_39">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="3069.6152356079056" y="937.47489819411487"/>
                <End x="3083.3847643920944" y="931.52510180588513"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_351" name="SpeciesReferenceGlyph_142" metaboliteGlyph="Layout_160" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="3069.6152356079056" y="937.47489819411487"/>
                    <End x="3036" y="952"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_352" name="SpeciesReferenceGlyph_143" metaboliteGlyph="Layout_161" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="3083.3847643920944" y="931.52510180588513"/>
                    <End x="3117" y="917"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_353" name="SpeciesReferenceGlyph_144" metaboliteGlyph="Layout_159" role="sideSubstrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="3004.6666666666674" y="907.66666666666663"/>
                    <End x="3069.6152356079056" y="937.47489819411487"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_354" name="ReactionGlyph_44">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="3591.6865631658629" y="1899.8854920485571"/>
                <End x="3600.3134368341371" y="1887.6145079514429"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_355" name="SpeciesReferenceGlyph_145" metaboliteGlyph="Layout_164" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="3591.6865631658629" y="1899.8854920485571"/>
                    <End x="3567" y="1935"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_356" name="SpeciesReferenceGlyph_146" metaboliteGlyph="Layout_26" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="3600.3134368341371" y="1887.6145079514429"/>
                    <End x="3625" y="1852.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
      </ListOfReactionGlyphs>
      <ListOfTextGlyphs>
        <TextGlyph key="Layout_357" name="TextGlyph" graphicalObject="Layout_3" text="cell">
          <BoundingBox>
            <Position x="1125.25" y="861.75"/>
            <Dimensions width="2409" height="1332"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_358" name="TextGlyph_1" graphicalObject="Layout_4" text="extracellular">
          <BoundingBox>
            <Position x="1873.5" y="727.5"/>
            <Dimensions width="75.5" height="-618.5"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_359" name="TextGlyph_2" graphicalObject="Layout_5" text="vessel">
          <BoundingBox>
            <Position x="2806" y="653.5"/>
            <Dimensions width="-888" height="-493.5"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_360" name="TextGlyph_3" graphicalObject="Layout_6" text="H +  i ">
          <BoundingBox>
            <Position x="3790" y="2959"/>
            <Dimensions width="33" height="36"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_361" name="TextGlyph_4" graphicalObject="Layout_38" text="H +  i ">
          <BoundingBox>
            <Position x="4233.5" y="1742"/>
            <Dimensions width="33" height="36"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_362" name="TextGlyph_5" graphicalObject="Layout_44" text="H +  i ">
          <BoundingBox>
            <Position x="4073.5" y="912"/>
            <Dimensions width="33" height="36"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_363" name="TextGlyph_6" graphicalObject="Layout_48" text="H +  i ">
          <BoundingBox>
            <Position x="4303.5" y="912"/>
            <Dimensions width="33" height="36"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_364" name="TextGlyph_7" graphicalObject="Layout_51" text="H +  i ">
          <BoundingBox>
            <Position x="4063.5" y="1092"/>
            <Dimensions width="33" height="36"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_365" name="TextGlyph_8" graphicalObject="Layout_53" text="H +  i ">
          <BoundingBox>
            <Position x="4403" y="1628.5"/>
            <Dimensions width="33" height="36"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_366" name="TextGlyph_9" graphicalObject="Layout_90" text="H +  i ">
          <BoundingBox>
            <Position x="2273.5" y="2032"/>
            <Dimensions width="33" height="36"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_367" name="TextGlyph_10" graphicalObject="Layout_101" text="H +  i ">
          <BoundingBox>
            <Position x="1823.5" y="922"/>
            <Dimensions width="33" height="36"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_368" name="TextGlyph_11" graphicalObject="Layout_102" text="H +  i ">
          <BoundingBox>
            <Position x="2313.5" y="872"/>
            <Dimensions width="33" height="36"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_369" name="TextGlyph_12" graphicalObject="Layout_103" text="H +  i ">
          <BoundingBox>
            <Position x="2623.5" y="1092"/>
            <Dimensions width="33" height="36"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_370" name="TextGlyph_13" graphicalObject="Layout_104" text="H +  i ">
          <BoundingBox>
            <Position x="2373.5" y="1512"/>
            <Dimensions width="33" height="36"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_371" name="TextGlyph_14" graphicalObject="Layout_105" text="H +  i ">
          <BoundingBox>
            <Position x="1863.5" y="2662"/>
            <Dimensions width="33" height="36"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_372" name="TextGlyph_15" graphicalObject="Layout_118" text="H +  i ">
          <BoundingBox>
            <Position x="1823.5" y="1042"/>
            <Dimensions width="33" height="36"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_373" name="TextGlyph_16" graphicalObject="Layout_163" text="H +  i ">
          <BoundingBox>
            <Position x="2354.4285714285716" y="2756.5714285714284"/>
            <Dimensions width="33" height="36"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_374" name="TextGlyph_17" graphicalObject="Layout_7" text="H +  o ">
          <BoundingBox>
            <Position x="3787" y="3158.5"/>
            <Dimensions width="39" height="33"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_375" name="TextGlyph_18" graphicalObject="Layout_42" text="H +  o ">
          <BoundingBox>
            <Position x="4060.5" y="733.5"/>
            <Dimensions width="39" height="33"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_376" name="TextGlyph_19" graphicalObject="Layout_47" text="H +  o ">
          <BoundingBox>
            <Position x="4290.5" y="733.5"/>
            <Dimensions width="39" height="33"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_377" name="TextGlyph_20" graphicalObject="Layout_12" text="OH -  i ">
          <BoundingBox>
            <Position x="4323" y="2931"/>
            <Dimensions width="54" height="58"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_378" name="TextGlyph_21" graphicalObject="Layout_13" text="OH -  o ">
          <BoundingBox>
            <Position x="4323" y="3155.5"/>
            <Dimensions width="54" height="49"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_379" name="TextGlyph_22" graphicalObject="Layout_16" text="NHE">
          <BoundingBox>
            <Position x="3783.5" y="3017.5"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_380" name="TextGlyph_23" graphicalObject="Layout_17" text="NHS">
          <BoundingBox>
            <Position x="3935.5" y="3016.5"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_381" name="TextGlyph_24" graphicalObject="Layout_18" text="CHE">
          <BoundingBox>
            <Position x="4260.5" y="3018.5"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_382" name="TextGlyph_25" graphicalObject="Layout_19" text="AE">
          <BoundingBox>
            <Position x="4104.5" y="3016.5"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_383" name="TextGlyph_26" graphicalObject="Layout_26" text="pH i ">
          <BoundingBox>
            <Position x="3625" y="1827.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_384" name="TextGlyph_27" graphicalObject="Layout_8" text="Na +  i ">
          <BoundingBox>
            <Position x="3848" y="2956"/>
            <Dimensions width="51" height="37"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_385" name="TextGlyph_28" graphicalObject="Layout_20" text="Na +  i ">
          <BoundingBox>
            <Position x="3922.8333333333335" y="2957.6111111111113"/>
            <Dimensions width="51" height="37"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_386" name="TextGlyph_29" graphicalObject="Layout_9" text="Na +  o ">
          <BoundingBox>
            <Position x="3849" y="3156.5"/>
            <Dimensions width="40" height="36"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_387" name="TextGlyph_30" graphicalObject="Layout_21" text="Na +  o ">
          <BoundingBox>
            <Position x="3936.8333333333339" y="3157.1111111111113"/>
            <Dimensions width="40" height="36"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_388" name="TextGlyph_31" graphicalObject="Layout_10" text="HCO 3  -  i ">
          <BoundingBox>
            <Position x="4005" y="2939"/>
            <Dimensions width="53" height="64"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_389" name="TextGlyph_32" graphicalObject="Layout_22" text="HCO 3  -  i ">
          <BoundingBox>
            <Position x="4099.8333333333339" y="2937.6111111111113"/>
            <Dimensions width="53" height="64"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_390" name="TextGlyph_33" graphicalObject="Layout_11" text="HCO 3  -  o ">
          <BoundingBox>
            <Position x="3987" y="3144.5"/>
            <Dimensions width="95" height="56"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_391" name="TextGlyph_34" graphicalObject="Layout_23" text="HCO 3  -  o ">
          <BoundingBox>
            <Position x="4074.8333333333339" y="3148.1111111111113"/>
            <Dimensions width="95" height="56"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_392" name="TextGlyph_35" graphicalObject="Layout_14" text="Cl -  i ">
          <BoundingBox>
            <Position x="4168" y="2940"/>
            <Dimensions width="47" height="46"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_393" name="TextGlyph_36" graphicalObject="Layout_24" text="Cl -  i ">
          <BoundingBox>
            <Position x="4249.8333333333339" y="2938.6111111111113"/>
            <Dimensions width="47" height="46"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_394" name="TextGlyph_37" graphicalObject="Layout_15" text="Cl -  o ">
          <BoundingBox>
            <Position x="4172" y="3156.5"/>
            <Dimensions width="47" height="43"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_395" name="TextGlyph_38" graphicalObject="Layout_25" text="Cl -  o ">
          <BoundingBox>
            <Position x="4258.8333333333339" y="3159.1111111111113"/>
            <Dimensions width="47" height="43"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_396" name="TextGlyph_39" graphicalObject="Layout_28" text="ATP">
          <BoundingBox>
            <Position x="4210" y="1680"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_397" name="TextGlyph_40" graphicalObject="Layout_31" text="ATP">
          <BoundingBox>
            <Position x="4380" y="1790"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_398" name="TextGlyph_41" graphicalObject="Layout_36" text="ATP">
          <BoundingBox>
            <Position x="4380" y="1910"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_399" name="TextGlyph_42" graphicalObject="Layout_58" text="ATP">
          <BoundingBox>
            <Position x="2530" y="990"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_400" name="TextGlyph_43" graphicalObject="Layout_80" text="ATP">
          <BoundingBox>
            <Position x="2530" y="2260"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_401" name="TextGlyph_44" graphicalObject="Layout_86" text="ATP">
          <BoundingBox>
            <Position x="2530" y="2870"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_402" name="TextGlyph_45" graphicalObject="Layout_88" text="ATP">
          <BoundingBox>
            <Position x="2530" y="1390"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_403" name="TextGlyph_46" graphicalObject="Layout_130" text="ATP">
          <BoundingBox>
            <Position x="3290" y="2790"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_404" name="TextGlyph_47" graphicalObject="Layout_131" text="ATP">
          <BoundingBox>
            <Position x="3280" y="2770"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_405" name="TextGlyph_48" graphicalObject="Layout_132" text="ATP">
          <BoundingBox>
            <Position x="3300" y="2780"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_406" name="TextGlyph_49" graphicalObject="Layout_29" text="ADP">
          <BoundingBox>
            <Position x="4400" y="1680"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_407" name="TextGlyph_50" graphicalObject="Layout_32" text="ADP">
          <BoundingBox>
            <Position x="4210" y="1790"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_408" name="TextGlyph_51" graphicalObject="Layout_35" text="ADP">
          <BoundingBox>
            <Position x="4210" y="1910"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_409" name="TextGlyph_52" graphicalObject="Layout_39" text="ADP">
          <BoundingBox>
            <Position x="4210" y="1960"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_410" name="TextGlyph_53" graphicalObject="Layout_60" text="ADP">
          <BoundingBox>
            <Position x="2530" y="1110"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_411" name="TextGlyph_54" graphicalObject="Layout_79" text="ADP">
          <BoundingBox>
            <Position x="2530" y="2130"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_412" name="TextGlyph_55" graphicalObject="Layout_87" text="ADP">
          <BoundingBox>
            <Position x="2530" y="2740"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_413" name="TextGlyph_56" graphicalObject="Layout_89" text="ADP">
          <BoundingBox>
            <Position x="2530" y="1510"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_414" name="TextGlyph_57" graphicalObject="Layout_141" text="ADP">
          <BoundingBox>
            <Position x="3290" y="2530"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_415" name="TextGlyph_58" graphicalObject="Layout_143" text="ADP">
          <BoundingBox>
            <Position x="3300" y="2520"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_416" name="TextGlyph_59" graphicalObject="Layout_146" text="ADP">
          <BoundingBox>
            <Position x="3270" y="2510"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_417" name="TextGlyph_60" graphicalObject="Layout_30" text="P i ">
          <BoundingBox>
            <Position x="4407.5" y="1737.5"/>
            <Dimensions width="25" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_418" name="TextGlyph_61" graphicalObject="Layout_74" text="P i ">
          <BoundingBox>
            <Position x="2277.5" y="1947.5"/>
            <Dimensions width="25" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_419" name="TextGlyph_62" graphicalObject="Layout_99" text="P i ">
          <BoundingBox>
            <Position x="1907.5" y="1207.5"/>
            <Dimensions width="25" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_420" name="TextGlyph_63" graphicalObject="Layout_100" text="P i ">
          <BoundingBox>
            <Position x="2127.5" y="917.5"/>
            <Dimensions width="25" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_421" name="TextGlyph_64" graphicalObject="Layout_111" text="P i ">
          <BoundingBox>
            <Position x="2147.5" y="877.5"/>
            <Dimensions width="25" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_422" name="TextGlyph_65" graphicalObject="Layout_128" text="P i ">
          <BoundingBox>
            <Position x="2007.5" y="1967.5"/>
            <Dimensions width="25" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_423" name="TextGlyph_66" graphicalObject="Layout_134" text="P i ">
          <BoundingBox>
            <Position x="3387.5" y="2577.5"/>
            <Dimensions width="25" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_424" name="TextGlyph_67" graphicalObject="Layout_137" text="P i ">
          <BoundingBox>
            <Position x="3397.5" y="2567.5"/>
            <Dimensions width="25" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_425" name="TextGlyph_68" graphicalObject="Layout_138" text="P i ">
          <BoundingBox>
            <Position x="3387.5" y="2567.5"/>
            <Dimensions width="25" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_426" name="TextGlyph_69" graphicalObject="Layout_147" text="P i ">
          <BoundingBox>
            <Position x="2617.5" y="1297.5"/>
            <Dimensions width="25" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_427" name="TextGlyph_70" graphicalObject="Layout_153" text="P i ">
          <BoundingBox>
            <Position x="1687.5" y="2347.5"/>
            <Dimensions width="25" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_428" name="TextGlyph_71" graphicalObject="Layout_154" text="P i ">
          <BoundingBox>
            <Position x="1707.5" y="2377.5"/>
            <Dimensions width="25" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_429" name="TextGlyph_72" graphicalObject="Layout_33" text="CrP">
          <BoundingBox>
            <Position x="4210" y="1840"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_430" name="TextGlyph_73" graphicalObject="Layout_34" text="Cr">
          <BoundingBox>
            <Position x="4380" y="1840"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_431" name="TextGlyph_74" graphicalObject="Layout_37" text="AMP">
          <BoundingBox>
            <Position x="4380" y="1960"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_432" name="TextGlyph_75" graphicalObject="Layout_119" text="AMP">
          <BoundingBox>
            <Position x="1990" y="1270"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_433" name="TextGlyph_76" graphicalObject="Layout_120" text="AMP">
          <BoundingBox>
            <Position x="2180" y="1030"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_434" name="TextGlyph_77" graphicalObject="Layout_121" text="AMP">
          <BoundingBox>
            <Position x="1950" y="870"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_435" name="TextGlyph_78" graphicalObject="Layout_122" text="AMP">
          <BoundingBox>
            <Position x="1960" y="1010"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_436" name="TextGlyph_79" graphicalObject="Layout_97" text="Glycogen">
          <BoundingBox>
            <Position x="1870" y="960"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_437" name="TextGlyph_80" graphicalObject="Layout_98" text="Glycogen">
          <BoundingBox>
            <Position x="1850" y="1150"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_438" name="TextGlyph_81" graphicalObject="Layout_116" text="Glycogen">
          <BoundingBox>
            <Position x="1870" y="1080"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_439" name="TextGlyph_82" graphicalObject="Layout_40" text="LactateXport">
          <BoundingBox>
            <Position x="3955" y="830"/>
            <Dimensions width="130" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_440" name="TextGlyph_83" graphicalObject="Layout_46" text="LactateXport">
          <BoundingBox>
            <Position x="4185" y="830"/>
            <Dimensions width="130" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_441" name="TextGlyph_84" graphicalObject="Layout_41" text="L -  i ">
          <BoundingBox>
            <Position x="3950" y="910"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_442" name="TextGlyph_85" graphicalObject="Layout_49" text="L -  i ">
          <BoundingBox>
            <Position x="4180" y="910"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_443" name="TextGlyph_86" graphicalObject="Layout_50" text="L -  i ">
          <BoundingBox>
            <Position x="4040" y="1040"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_444" name="TextGlyph_87" graphicalObject="Layout_108" text="L -  i ">
          <BoundingBox>
            <Position x="2140" y="2720"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_445" name="TextGlyph_88" graphicalObject="Layout_52" text="Lactic Acid">
          <BoundingBox>
            <Position x="4220" y="1060"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_446" name="TextGlyph_89" graphicalObject="Layout_59" text="G6P">
          <BoundingBox>
            <Position x="2430" y="1110"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_447" name="TextGlyph_90" graphicalObject="Layout_61" text="G6P">
          <BoundingBox>
            <Position x="2430" y="1190"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_448" name="TextGlyph_91" graphicalObject="Layout_91" text="G6P">
          <BoundingBox>
            <Position x="2260" y="1150"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_449" name="TextGlyph_92" graphicalObject="Layout_113" text="G6P">
          <BoundingBox>
            <Position x="2550" y="1190"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_450" name="TextGlyph_93" graphicalObject="Layout_62" text="F6P">
          <BoundingBox>
            <Position x="2430" y="1310"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_451" name="TextGlyph_94" graphicalObject="Layout_63" text="F6P">
          <BoundingBox>
            <Position x="2430" y="1390"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_452" name="TextGlyph_95" graphicalObject="Layout_66" text="GAP">
          <BoundingBox>
            <Position x="2430" y="1830"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_453" name="TextGlyph_96" graphicalObject="Layout_69" text="GAP">
          <BoundingBox>
            <Position x="2330" y="1830"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_454" name="TextGlyph_97" graphicalObject="Layout_70" text="GAP">
          <BoundingBox>
            <Position x="2430" y="1910"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_455" name="TextGlyph_98" graphicalObject="Layout_82" text="PEP">
          <BoundingBox>
            <Position x="2430" y="2680"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_456" name="TextGlyph_99" graphicalObject="Layout_85" text="PEP">
          <BoundingBox>
            <Position x="2430" y="2740"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_457" name="TextGlyph_100" graphicalObject="Layout_135" text="CO 2 ">
          <BoundingBox>
            <Position x="3188.75" y="2738.75"/>
            <Dimensions width="42.5" height="42.5"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_458" name="TextGlyph_101" graphicalObject="Layout_136" text="CO 2 ">
          <BoundingBox>
            <Position x="3168.75" y="2778.75"/>
            <Dimensions width="42.5" height="42.5"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_459" name="TextGlyph_102" graphicalObject="Layout_139" text="CO 2 ">
          <BoundingBox>
            <Position x="3128.75" y="2718.75"/>
            <Dimensions width="42.5" height="42.5"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_460" name="TextGlyph_103" graphicalObject="Layout_64" text="F16BP">
          <BoundingBox>
            <Position x="2430" y="1510"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_461" name="TextGlyph_104" graphicalObject="Layout_65" text="F16BP">
          <BoundingBox>
            <Position x="2430" y="1590"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_462" name="TextGlyph_105" graphicalObject="Layout_67" text="DHAP">
          <BoundingBox>
            <Position x="2200" y="1700"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_463" name="TextGlyph_106" graphicalObject="Layout_68" text="DHAP">
          <BoundingBox>
            <Position x="2230" y="1760"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_464" name="TextGlyph_107" graphicalObject="Layout_123" text="DHAP">
          <BoundingBox>
            <Position x="2130" y="1760"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_465" name="TextGlyph_108" graphicalObject="Layout_71" text="13BPG">
          <BoundingBox>
            <Position x="2430" y="2050"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_466" name="TextGlyph_109" graphicalObject="Layout_75" text="13BPG">
          <BoundingBox>
            <Position x="2430" y="2130"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_467" name="TextGlyph_110" graphicalObject="Layout_148" text="13BPG">
          <BoundingBox>
            <Position x="1880" y="2100"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_468" name="TextGlyph_111" graphicalObject="Layout_76" text="3PG">
          <BoundingBox>
            <Position x="2430" y="2260"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_469" name="TextGlyph_112" graphicalObject="Layout_77" text="3PG">
          <BoundingBox>
            <Position x="2430" y="2340"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_470" name="TextGlyph_113" graphicalObject="Layout_150" text="3PG">
          <BoundingBox>
            <Position x="1880" y="2240"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_471" name="TextGlyph_114" graphicalObject="Layout_78" text="2PG">
          <BoundingBox>
            <Position x="2430" y="2460"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_472" name="TextGlyph_115" graphicalObject="Layout_83" text="2PG">
          <BoundingBox>
            <Position x="2430" y="2530"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_473" name="TextGlyph_116" graphicalObject="Layout_81" text="H 2 O">
          <BoundingBox>
            <Position x="2330" y="2680"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_474" name="TextGlyph_117" graphicalObject="Layout_92" text="G1P">
          <BoundingBox>
            <Position x="2260" y="1070"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_475" name="TextGlyph_118" graphicalObject="Layout_93" text="G1P">
          <BoundingBox>
            <Position x="2300" y="960"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_476" name="TextGlyph_119" graphicalObject="Layout_95" text="G1P">
          <BoundingBox>
            <Position x="2140" y="1150"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_477" name="TextGlyph_120" graphicalObject="Layout_149" text="G1P">
          <BoundingBox>
            <Position x="1780" y="2090"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_478" name="TextGlyph_121" graphicalObject="Layout_94" text="UDPG">
          <BoundingBox>
            <Position x="2100" y="960"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_479" name="TextGlyph_122" graphicalObject="Layout_96" text="UDPG">
          <BoundingBox>
            <Position x="2000" y="960"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_480" name="TextGlyph_123" graphicalObject="Layout_115" text="UDPG">
          <BoundingBox>
            <Position x="2000" y="1080"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_481" name="TextGlyph_124" graphicalObject="Layout_110" text="UTP">
          <BoundingBox>
            <Position x="2300" y="910"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_482" name="TextGlyph_125" graphicalObject="Layout_112" text="UDP">
          <BoundingBox>
            <Position x="1870" y="910"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_483" name="TextGlyph_126" graphicalObject="Layout_117" text="UDP">
          <BoundingBox>
            <Position x="1870" y="1030"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_484" name="TextGlyph_127" graphicalObject="Layout_114" text="6PGN">
          <BoundingBox>
            <Position x="2650" y="1260"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_485" name="TextGlyph_128" graphicalObject="Layout_124" text="Glycerol-3-P">
          <BoundingBox>
            <Position x="2080" y="1850"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_486" name="TextGlyph_129" graphicalObject="Layout_84" text="PYR">
          <BoundingBox>
            <Position x="2430" y="2870"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_487" name="TextGlyph_130" graphicalObject="Layout_106" text="PYR">
          <BoundingBox>
            <Position x="1820" y="2720"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_488" name="TextGlyph_131" graphicalObject="Layout_142" text="PYR">
          <BoundingBox>
            <Position x="3180" y="2520"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_489" name="TextGlyph_132" graphicalObject="Layout_151" text="G16BP">
          <BoundingBox>
            <Position x="1750" y="2240"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_490" name="TextGlyph_133" graphicalObject="Layout_156" text="O 2,e_endsub">
          <BoundingBox>
            <Position x="2812.5" y="759.5"/>
            <Dimensions width="33" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_491" name="TextGlyph_134" graphicalObject="Layout_158" text="O 2,e_endsub">
          <BoundingBox>
            <Position x="2761" y="747"/>
            <Dimensions width="33" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_492" name="TextGlyph_135" graphicalObject="Layout_160" text="Mb">
          <BoundingBox>
            <Position x="2956" y="932"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_493" name="TextGlyph_136" graphicalObject="Layout_161" text="MbO 2 ">
          <BoundingBox>
            <Position x="3117" y="897"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_494" name="TextGlyph_137" graphicalObject="Layout_140" text="O 2_endsub">
          <BoundingBox>
            <Position x="3147.5" y="2577.5"/>
            <Dimensions width="25" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_495" name="TextGlyph_138" graphicalObject="Layout_144" text="O 2_endsub">
          <BoundingBox>
            <Position x="3107.5" y="2567.5"/>
            <Dimensions width="25" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_496" name="TextGlyph_139" graphicalObject="Layout_145" text="O 2_endsub">
          <BoundingBox>
            <Position x="3095.5" y="2597.5"/>
            <Dimensions width="25" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_497" name="TextGlyph_140" graphicalObject="Layout_155" text="O 2_endsub">
          <BoundingBox>
            <Position x="2817" y="890"/>
            <Dimensions width="25" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_498" name="TextGlyph_141" graphicalObject="Layout_159" text="O 2_endsub">
          <BoundingBox>
            <Position x="2979.6666666666674" y="882.66666666666663"/>
            <Dimensions width="25" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_499" name="TextGlyph_142" graphicalObject="Layout_157" text="O 2,v_endsub">
          <BoundingBox>
            <Position x="2758.5" y="618.5"/>
            <Dimensions width="37" height="39"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_500" name="TextGlyph_143" graphicalObject="Layout_72" text="NAD">
          <BoundingBox>
            <Position x="2330" y="1910"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_501" name="TextGlyph_144" graphicalObject="Layout_109" text="NAD">
          <BoundingBox>
            <Position x="2140" y="2790"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_502" name="TextGlyph_145" graphicalObject="Layout_125" text="NAD">
          <BoundingBox>
            <Position x="1990" y="1850"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_503" name="TextGlyph_146" graphicalObject="Layout_129" text="NAD">
          <BoundingBox>
            <Position x="3470" y="2760"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_504" name="TextGlyph_147" graphicalObject="Layout_73" text="NADH">
          <BoundingBox>
            <Position x="2330" y="2050"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_505" name="TextGlyph_148" graphicalObject="Layout_107" text="NADH">
          <BoundingBox>
            <Position x="1820" y="2790"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_506" name="TextGlyph_149" graphicalObject="Layout_126" text="NADH">
          <BoundingBox>
            <Position x="1990" y="1760"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_507" name="TextGlyph_150" graphicalObject="Layout_133" text="NADH">
          <BoundingBox>
            <Position x="3480" y="2600"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_508" name="TextGlyph_151" graphicalObject="Layout_43" text="L -  o ">
          <BoundingBox>
            <Position x="3940" y="730"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_509" name="TextGlyph_152" graphicalObject="Layout_45" text="L -  o ">
          <BoundingBox>
            <Position x="4170" y="730"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_510" name="TextGlyph_153" graphicalObject="Layout_57" text="Glucose">
          <BoundingBox>
            <Position x="2430" y="990"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
      </ListOfTextGlyphs>
      <ListOfRenderInformation>
        <RenderInformation key="LocalRenderInformation_0" backgroundColor="#FFFFFFFF">
          <ListOfColorDefinitions>
            <ColorDefinition id="black" value="#000000"/>
            <ColorDefinition id="ColorDefinition" value="#cccc00"/>
            <ColorDefinition id="ColorDefinition_1" value="#cccc0023"/>
            <ColorDefinition id="ColorDefinition_2" value="#9999ff"/>
            <ColorDefinition id="ColorDefinition_3" value="#ccffff"/>
            <ColorDefinition id="ColorDefinition_4" value="#ccff66"/>
            <ColorDefinition id="ColorDefinition_5" value="#ffcccc"/>
            <ColorDefinition id="ColorDefinition_6" value="#ccffcc"/>
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
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
              </Group>
            </Style>
            <Style key="LocalStyle_1" roleList="modifier">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" endHead="modifier_arrow">
              </Group>
            </Style>
            <Style key="LocalStyle_2" roleList="inhibitor">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" endHead="inhibitor_arrow">
              </Group>
            </Style>
            <Style key="LocalStyle_3" roleList="activator">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" endHead="activator_arrow">
              </Group>
            </Style>
            <Style key="LocalStyle_4" keyList="Layout_286 Layout_291 Layout_296 Layout_311">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" endHead="catalysis_arrow">
              </Group>
            </Style>
            <Style key="LocalStyle_5">
              <Group stroke="black" stroke-width="1" stroke-dasharray="5, 5" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" endHead="catalysis_arrow">
              </Group>
            </Style>
            <Style key="LocalStyle_6" roleList="product sideproduct">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" endHead="product_arrow">
              </Group>
            </Style>
            <Style key="LocalStyle_7" roleList="sidesubstrate substrate">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
              </Group>
            </Style>
            <Style key="LocalStyle_8" keyList="Layout_3">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="12" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="ColorDefinition_1" stroke-width="12" x="0" y="0" width="3534.25" height="2193.75" rx="219.375" ry="219.375"/>
                <Rectangle stroke="ColorDefinition" stroke-width="2" x="-6" y="-6" width="3546.25" height="2205.75" rx="220.575" ry="220.575"/>
                <Rectangle stroke="ColorDefinition" stroke-width="1" x="6" y="6" width="3522.25" height="2181.75" rx="218.175" ry="218.175"/>
              </Group>
            </Style>
            <Style key="LocalStyle_9" keyList="Layout_4">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="12" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="ColorDefinition_1" stroke-width="12" x="0" y="0" width="1949" height="109" rx="10.9" ry="10.9"/>
                <Rectangle stroke="ColorDefinition" stroke-width="2" x="-6" y="-6" width="1961" height="121" rx="12.1" ry="12.1"/>
                <Rectangle stroke="ColorDefinition" stroke-width="1" x="6" y="6" width="1937" height="97" rx="9.7" ry="9.7"/>
              </Group>
            </Style>
            <Style key="LocalStyle_10" keyList="Layout_5">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-size="12" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="ColorDefinition_1" stroke-width="12" x="0" y="0" width="1918" height="160" rx="16" ry="16"/>
                <Rectangle stroke="ColorDefinition" stroke-width="2" x="-6" y="-6" width="1930" height="172" rx="17.2" ry="17.2"/>
                <Rectangle stroke="ColorDefinition" stroke-width="1" x="6" y="6" width="1906" height="148" rx="14.8" ry="14.8"/>
              </Group>
            </Style>
            <Style key="LocalStyle_11" keyList="Layout_357">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="start" vtext-anchor="top">
              </Group>
            </Style>
            <Style key="LocalStyle_12" keyList="Layout_358">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="start" vtext-anchor="top">
              </Group>
            </Style>
            <Style key="LocalStyle_13" keyList="Layout_359">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="start" vtext-anchor="top">
              </Group>
            </Style>
            <Style key="LocalStyle_14" keyList="Layout_360">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_15" keyList="Layout_361">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_16" keyList="Layout_362">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_17" keyList="Layout_363">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_18" keyList="Layout_364">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_19" keyList="Layout_365">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_20" keyList="Layout_366">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_21" keyList="Layout_367">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_22" keyList="Layout_368">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_23" keyList="Layout_369">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_24" keyList="Layout_370">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_25" keyList="Layout_371">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_26" keyList="Layout_372">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_27" keyList="Layout_373">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_28" keyList="Layout_374">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_29" keyList="Layout_375">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_30" keyList="Layout_376">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_31" keyList="Layout_377">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_32" keyList="Layout_378">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_33" keyList="Layout_379">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_34" keyList="Layout_380">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_35" keyList="Layout_381">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_36" keyList="Layout_382">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_37" keyList="Layout_383">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_38" keyList="Layout_384">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_39" keyList="Layout_385">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_40" keyList="Layout_386">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_41" keyList="Layout_387">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_42" keyList="Layout_388">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_43" keyList="Layout_389">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_44" keyList="Layout_390">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_45" keyList="Layout_391">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_46" keyList="Layout_392">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_47" keyList="Layout_393">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_48" keyList="Layout_394">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_49" keyList="Layout_395">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_50" keyList="Layout_396">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_51" keyList="Layout_397">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_52" keyList="Layout_398">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_53" keyList="Layout_399">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_54" keyList="Layout_400">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_55" keyList="Layout_401">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_56" keyList="Layout_402">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_57" keyList="Layout_403">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_58" keyList="Layout_404">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_59" keyList="Layout_405">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_60" keyList="Layout_406">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_61" keyList="Layout_407">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_62" keyList="Layout_408">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_63" keyList="Layout_409">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_64" keyList="Layout_410">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_65" keyList="Layout_411">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_66" keyList="Layout_412">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_67" keyList="Layout_413">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_68" keyList="Layout_414">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_69" keyList="Layout_415">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_70" keyList="Layout_416">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_71" keyList="Layout_417">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_72" keyList="Layout_418">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_73" keyList="Layout_419">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_74" keyList="Layout_420">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_75" keyList="Layout_421">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_76" keyList="Layout_422">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_77" keyList="Layout_423">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_78" keyList="Layout_424">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_79" keyList="Layout_425">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_80" keyList="Layout_426">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_81" keyList="Layout_427">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_82" keyList="Layout_428">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_83" keyList="Layout_429">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_84" keyList="Layout_430">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_85" keyList="Layout_431">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_86" keyList="Layout_432">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_87" keyList="Layout_433">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_88" keyList="Layout_434">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_89" keyList="Layout_435">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_90" keyList="Layout_436">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_91" keyList="Layout_437">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_92" keyList="Layout_438">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_93" keyList="Layout_439">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_94" keyList="Layout_440">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_95" keyList="Layout_441">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_96" keyList="Layout_442">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_97" keyList="Layout_443">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_98" keyList="Layout_444">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_99" keyList="Layout_445">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_100" keyList="Layout_446">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_101" keyList="Layout_447">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_102" keyList="Layout_448">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_103" keyList="Layout_449">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_104" keyList="Layout_450">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_105" keyList="Layout_451">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_106" keyList="Layout_452">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_107" keyList="Layout_453">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_108" keyList="Layout_454">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_109" keyList="Layout_455">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_110" keyList="Layout_456">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_111" keyList="Layout_457">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_112" keyList="Layout_458">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_113" keyList="Layout_459">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_114" keyList="Layout_460">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_115" keyList="Layout_461">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_116" keyList="Layout_462">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_117" keyList="Layout_463">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_118" keyList="Layout_464">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_119" keyList="Layout_465">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_120" keyList="Layout_466">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_121" keyList="Layout_467">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_122" keyList="Layout_468">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_123" keyList="Layout_469">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_124" keyList="Layout_470">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_125" keyList="Layout_471">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_126" keyList="Layout_472">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_127" keyList="Layout_473">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_128" keyList="Layout_474">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_129" keyList="Layout_475">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_130" keyList="Layout_476">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_131" keyList="Layout_477">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_132" keyList="Layout_478">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_133" keyList="Layout_479">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_134" keyList="Layout_480">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_135" keyList="Layout_481">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_136" keyList="Layout_482">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_137" keyList="Layout_483">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_138" keyList="Layout_484">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_139" keyList="Layout_485">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_140" keyList="Layout_486">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_141" keyList="Layout_487">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_142" keyList="Layout_488">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_143" keyList="Layout_489">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_144" keyList="Layout_490">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_145" keyList="Layout_491">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_146" keyList="Layout_492">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_147" keyList="Layout_493">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_148" keyList="Layout_494">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_149" keyList="Layout_495">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_150" keyList="Layout_496">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_151" keyList="Layout_497">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_152" keyList="Layout_498">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_153" keyList="Layout_499">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_154" keyList="Layout_500">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_155" keyList="Layout_501">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_156" keyList="Layout_502">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_157" keyList="Layout_503">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_158" keyList="Layout_504">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_159" keyList="Layout_505">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_160" keyList="Layout_506">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_161" keyList="Layout_507">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_162" keyList="Layout_508">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_163" keyList="Layout_509">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_164" keyList="Layout_510">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_165" keyList="Layout_6">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="16.5" cy="18" rx="16.5" ry="16.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_166" keyList="Layout_7">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="19.5" cy="16.5" rx="16.5" ry="16.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_167" keyList="Layout_8">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="25.5" cy="18.5" rx="18.5" ry="18.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_168" keyList="Layout_9">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="20" cy="18" rx="18" ry="18"/>
              </Group>
            </Style>
            <Style key="LocalStyle_169" keyList="Layout_10">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="26.5" cy="32" rx="26.5" ry="26.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_170" keyList="Layout_11">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="47.5" cy="28" rx="28" ry="28"/>
              </Group>
            </Style>
            <Style key="LocalStyle_171" keyList="Layout_12">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="27" cy="29" rx="27" ry="27"/>
              </Group>
            </Style>
            <Style key="LocalStyle_172" keyList="Layout_13">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="27" cy="24.5" rx="24.5" ry="24.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_173" keyList="Layout_14">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="23.5" cy="23" rx="23" ry="23"/>
              </Group>
            </Style>
            <Style key="LocalStyle_174" keyList="Layout_15">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="23.5" cy="21.5" rx="21.5" ry="21.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_175" keyList="Layout_16">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_3" x="0" y="0" width="60" height="40" rx="6" ry="6"/>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_3" x="60" y="0" width="20" height="40" rx="6" ry="6"/>
              </Group>
            </Style>
            <Style key="LocalStyle_176" keyList="Layout_17">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_3" x="0" y="0" width="60" height="40" rx="6" ry="6"/>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_3" x="60" y="0" width="20" height="40" rx="6" ry="6"/>
              </Group>
            </Style>
            <Style key="LocalStyle_177" keyList="Layout_18">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_3" x="0" y="0" width="60" height="40" rx="6" ry="6"/>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_3" x="60" y="0" width="20" height="40" rx="6" ry="6"/>
              </Group>
            </Style>
            <Style key="LocalStyle_178" keyList="Layout_19">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_3" x="0" y="0" width="60" height="40" rx="6" ry="6"/>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_3" x="60" y="0" width="20" height="40" rx="6" ry="6"/>
              </Group>
            </Style>
            <Style key="LocalStyle_179" keyList="Layout_20">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="25.5" cy="18.5" rx="18.5" ry="18.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_180" keyList="Layout_21">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="20" cy="18" rx="18" ry="18"/>
              </Group>
            </Style>
            <Style key="LocalStyle_181" keyList="Layout_22">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="26.5" cy="32" rx="26.5" ry="26.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_182" keyList="Layout_23">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="47.5" cy="28" rx="28" ry="28"/>
              </Group>
            </Style>
            <Style key="LocalStyle_183" keyList="Layout_24">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="23.5" cy="23" rx="23" ry="23"/>
              </Group>
            </Style>
            <Style key="LocalStyle_184" keyList="Layout_25">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="23.5" cy="21.5" rx="21.5" ry="21.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_185" keyList="Layout_26">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_4" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_186" keyList="Layout_27">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_5" cx="15" cy="15" rx="10.5" ry="10.5"/>
                <Curve stroke="#000000FF" stroke-width="2">
                  <ListOfElements>
                    <Element x="0" y="30"/>
                    <Element x="30" y="0"/>
                  </ListOfElements>
                </Curve>
              </Group>
            </Style>
            <Style key="LocalStyle_187" keyList="Layout_28">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_188" keyList="Layout_29">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_189" keyList="Layout_30">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="12.5" cy="12.5" rx="12.5" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_190" keyList="Layout_31">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_191" keyList="Layout_32">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_192" keyList="Layout_33">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_193" keyList="Layout_34">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_194" keyList="Layout_35">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_195" keyList="Layout_36">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_196" keyList="Layout_37">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_197" keyList="Layout_38">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="16.5" cy="18" rx="16.5" ry="16.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_198" keyList="Layout_39">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_199" keyList="Layout_40">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_3" x="0" y="0" width="97.5" height="40" rx="6" ry="6"/>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_3" x="97.5" y="0" width="32.5" height="40" rx="6" ry="6"/>
              </Group>
            </Style>
            <Style key="LocalStyle_200" keyList="Layout_41">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_201" keyList="Layout_42">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="19.5" cy="16.5" rx="16.5" ry="16.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_202" keyList="Layout_43">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_203" keyList="Layout_44">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="16.5" cy="18" rx="16.5" ry="16.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_204" keyList="Layout_45">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_205" keyList="Layout_46">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_3" x="0" y="0" width="97.5" height="40" rx="6" ry="6"/>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_3" x="97.5" y="0" width="32.5" height="40" rx="6" ry="6"/>
              </Group>
            </Style>
            <Style key="LocalStyle_206" keyList="Layout_47">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="19.5" cy="16.5" rx="16.5" ry="16.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_207" keyList="Layout_48">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="16.5" cy="18" rx="16.5" ry="16.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_208" keyList="Layout_49">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_209" keyList="Layout_50">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_210" keyList="Layout_51">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="16.5" cy="18" rx="16.5" ry="16.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_211" keyList="Layout_52">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_212" keyList="Layout_53">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="16.5" cy="18" rx="16.5" ry="16.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_213" keyList="Layout_54">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_5" cx="15" cy="15" rx="10.5" ry="10.5"/>
                <Curve stroke="#000000FF" stroke-width="2">
                  <ListOfElements>
                    <Element x="0" y="30"/>
                    <Element x="30" y="0"/>
                  </ListOfElements>
                </Curve>
              </Group>
            </Style>
            <Style key="LocalStyle_214" keyList="Layout_55">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_5" cx="15" cy="15" rx="10.5" ry="10.5"/>
                <Curve stroke="#000000FF" stroke-width="2">
                  <ListOfElements>
                    <Element x="0" y="30"/>
                    <Element x="30" y="0"/>
                  </ListOfElements>
                </Curve>
              </Group>
            </Style>
            <Style key="LocalStyle_215" keyList="Layout_56">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_5" cx="15" cy="15" rx="10.5" ry="10.5"/>
                <Curve stroke="#000000FF" stroke-width="2">
                  <ListOfElements>
                    <Element x="0" y="30"/>
                    <Element x="30" y="0"/>
                  </ListOfElements>
                </Curve>
              </Group>
            </Style>
            <Style key="LocalStyle_216" keyList="Layout_57">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_217" keyList="Layout_58">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_218" keyList="Layout_59">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_219" keyList="Layout_60">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_220" keyList="Layout_61">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_221" keyList="Layout_69">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_222" keyList="Layout_70">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_223" keyList="Layout_71">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_224" keyList="Layout_72">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_225" keyList="Layout_73">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_226" keyList="Layout_74">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="12.5" cy="12.5" rx="12.5" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_227" keyList="Layout_75">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_228" keyList="Layout_76">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_229" keyList="Layout_77">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_230" keyList="Layout_78">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_231" keyList="Layout_79">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_232" keyList="Layout_80">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_233" keyList="Layout_81">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_234" keyList="Layout_82">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_235" keyList="Layout_83">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_236" keyList="Layout_84">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_237" keyList="Layout_85">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_238" keyList="Layout_86">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_239" keyList="Layout_87">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_240" keyList="Layout_88">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_241" keyList="Layout_89">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_242" keyList="Layout_90">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="16.5" cy="18" rx="16.5" ry="16.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_243" keyList="Layout_91">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_244" keyList="Layout_92">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_245" keyList="Layout_93">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_246" keyList="Layout_94">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_247" keyList="Layout_95">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_248" keyList="Layout_96">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_249" keyList="Layout_97">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_250" keyList="Layout_98">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_251" keyList="Layout_99">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="12.5" cy="12.5" rx="12.5" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_252" keyList="Layout_100">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="12.5" cy="12.5" rx="12.5" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_253" keyList="Layout_101">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="16.5" cy="18" rx="16.5" ry="16.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_254" keyList="Layout_102">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="16.5" cy="18" rx="16.5" ry="16.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_255" keyList="Layout_103">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="16.5" cy="18" rx="16.5" ry="16.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_256" keyList="Layout_104">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="16.5" cy="18" rx="16.5" ry="16.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_257" keyList="Layout_105">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="16.5" cy="18" rx="16.5" ry="16.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_258" keyList="Layout_106">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_259" keyList="Layout_107">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_260" keyList="Layout_108">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_261" keyList="Layout_109">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_262" keyList="Layout_110">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_263" keyList="Layout_111">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="12.5" cy="12.5" rx="12.5" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_264" keyList="Layout_112">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_265" keyList="Layout_113">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_266" keyList="Layout_114">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_267" keyList="Layout_115">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_268" keyList="Layout_116">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_269" keyList="Layout_117">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_270" keyList="Layout_118">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="16.5" cy="18" rx="16.5" ry="16.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_271" keyList="Layout_119">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_272" keyList="Layout_120">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_273" keyList="Layout_121">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_274" keyList="Layout_122">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_275" keyList="Layout_123">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_276" keyList="Layout_124">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_277" keyList="Layout_125">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_278" keyList="Layout_126">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_279" keyList="Layout_127">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_5" cx="15" cy="15" rx="10.5" ry="10.5"/>
                <Curve stroke="#000000FF" stroke-width="2">
                  <ListOfElements>
                    <Element x="0" y="30"/>
                    <Element x="30" y="0"/>
                  </ListOfElements>
                </Curve>
              </Group>
            </Style>
            <Style key="LocalStyle_280" keyList="Layout_128">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="12.5" cy="12.5" rx="12.5" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_281" keyList="Layout_129">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_282" keyList="Layout_130">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_283" keyList="Layout_131">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_284" keyList="Layout_132">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_285" keyList="Layout_133">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_286" keyList="Layout_134">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="12.5" cy="12.5" rx="12.5" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_287" keyList="Layout_135">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="21.25" cy="21.25" rx="21.25" ry="21.25"/>
              </Group>
            </Style>
            <Style key="LocalStyle_288" keyList="Layout_136">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="21.25" cy="21.25" rx="21.25" ry="21.25"/>
              </Group>
            </Style>
            <Style key="LocalStyle_289" keyList="Layout_137">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="12.5" cy="12.5" rx="12.5" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_290" keyList="Layout_138">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="12.5" cy="12.5" rx="12.5" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_291" keyList="Layout_139">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="21.25" cy="21.25" rx="21.25" ry="21.25"/>
              </Group>
            </Style>
            <Style key="LocalStyle_292" keyList="Layout_140">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="12.5" cy="12.5" rx="12.5" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_293" keyList="Layout_141">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_294" keyList="Layout_142">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_295" keyList="Layout_143">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_296" keyList="Layout_144">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="12.5" cy="12.5" rx="12.5" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_297" keyList="Layout_145">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="12.5" cy="12.5" rx="12.5" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_298" keyList="Layout_146">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_299" keyList="Layout_147">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="12.5" cy="12.5" rx="12.5" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_300" keyList="Layout_148">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_301" keyList="Layout_149">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_302" keyList="Layout_150">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_303" keyList="Layout_151">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_304" keyList="Layout_152">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_5" cx="15" cy="15" rx="10.5" ry="10.5"/>
                <Curve stroke="#000000FF" stroke-width="2">
                  <ListOfElements>
                    <Element x="0" y="30"/>
                    <Element x="30" y="0"/>
                  </ListOfElements>
                </Curve>
              </Group>
            </Style>
            <Style key="LocalStyle_305" keyList="Layout_153">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="12.5" cy="12.5" rx="12.5" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_306" keyList="Layout_154">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="12.5" cy="12.5" rx="12.5" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_307" keyList="Layout_155">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="12.5" cy="12.5" rx="12.5" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_308" keyList="Layout_156">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="16.5" cy="20" rx="16.5" ry="16.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_309" keyList="Layout_157">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="18.5" cy="19.5" rx="18.5" ry="18.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_310" keyList="Layout_158">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="16.5" cy="20" rx="16.5" ry="16.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_311" keyList="Layout_159">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="12.5" cy="12.5" rx="12.5" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_312" keyList="Layout_160">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_313" keyList="Layout_161">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_314" keyList="Layout_162">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_5" cx="15" cy="15" rx="10.5" ry="10.5"/>
                <Curve stroke="#000000FF" stroke-width="2">
                  <ListOfElements>
                    <Element x="0" y="30"/>
                    <Element x="30" y="0"/>
                  </ListOfElements>
                </Curve>
              </Group>
            </Style>
            <Style key="LocalStyle_315" keyList="Layout_163">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="16.5" cy="18" rx="16.5" ry="16.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_316" keyList="Layout_164">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_5" cx="15" cy="15" rx="10.5" ry="10.5"/>
                <Curve stroke="#000000FF" stroke-width="2">
                  <ListOfElements>
                    <Element x="0" y="30"/>
                    <Element x="30" y="0"/>
                  </ListOfElements>
                </Curve>
              </Group>
            </Style>
            <Style key="LocalStyle_317" keyList="Layout_62">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_318" keyList="Layout_63">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_319" keyList="Layout_64">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_320" keyList="Layout_65">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_321" keyList="Layout_66">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_322" keyList="Layout_67">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_323" keyList="Layout_68">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
          </ListOfStyles>
        </RenderInformation>
      </ListOfRenderInformation>
    </Layout>
  </ListOfLayouts>
  <SBMLReference file="McDougal2017.xml">
    <SBMLMap SBMLid="Constant_flux__irreversible" COPASIkey="Function_6"/>
    <SBMLMap SBMLid="Function_for_ATPase__ATP_Consumption" COPASIkey="Function_40"/>
    <SBMLMap SBMLid="Function_for_Adenylate_Kinase" COPASIkey="Function_53"/>
    <SBMLMap SBMLid="Function_for_Enolase" COPASIkey="Function_69"/>
    <SBMLMap SBMLid="Function_for_Fructose_bisphosphate_Aldolase" COPASIkey="Function_62"/>
    <SBMLMap SBMLid="Function_for_G6P_Dehydrogenase" COPASIkey="Function_57"/>
    <SBMLMap SBMLid="Function_for_Glyceraldehyde_3_Phosphate_Dehydrogenase" COPASIkey="Function_54"/>
    <SBMLMap SBMLid="Function_for_Glycogen_Phosphorylase" COPASIkey="Function_64"/>
    <SBMLMap SBMLid="Function_for_Glycogen_Synthase_D_form" COPASIkey="Function_63"/>
    <SBMLMap SBMLid="Function_for_Glycogen_Synthase_I_form" COPASIkey="Function_58"/>
    <SBMLMap SBMLid="Function_for_Hexokinase" COPASIkey="Function_56"/>
    <SBMLMap SBMLid="Function_for_Lactate_Dehydrogenase" COPASIkey="Function_65"/>
    <SBMLMap SBMLid="Function_for_Lactate_Flux__in" COPASIkey="Function_60"/>
    <SBMLMap SBMLid="Function_for_Lactate_Flux__out" COPASIkey="Function_61"/>
    <SBMLMap SBMLid="Function_for_Mitochondrial_Oxidation_of_Pyruvate" COPASIkey="Function_46"/>
    <SBMLMap SBMLid="Function_for_Phosphfructokinase" COPASIkey="Function_52"/>
    <SBMLMap SBMLid="Function_for_Phosphoglucomutase" COPASIkey="Function_55"/>
    <SBMLMap SBMLid="Function_for_Phosphoglucose_Isomerase__forward" COPASIkey="Function_66"/>
    <SBMLMap SBMLid="Function_for_Phosphoglycerate_Kinase" COPASIkey="Function_68"/>
    <SBMLMap SBMLid="Function_for_Phosphoglycerate_Mutase" COPASIkey="Function_67"/>
    <SBMLMap SBMLid="Function_for_Pyruvate_Kinase" COPASIkey="Function_70"/>
    <SBMLMap SBMLid="Function_for_Triosephosphate_Isomerase" COPASIkey="Function_42"/>
    <SBMLMap SBMLid="Function_for_re22" COPASIkey="Function_41"/>
    <SBMLMap SBMLid="Function_for_re48" COPASIkey="Function_43"/>
    <SBMLMap SBMLid="Function_for_re54" COPASIkey="Function_44"/>
    <SBMLMap SBMLid="Function_for_re55" COPASIkey="Function_45"/>
    <SBMLMap SBMLid="Function_for_re58" COPASIkey="Function_47"/>
    <SBMLMap SBMLid="Function_for_re59" COPASIkey="Function_48"/>
    <SBMLMap SBMLid="Function_for_re60" COPASIkey="Function_49"/>
    <SBMLMap SBMLid="Function_for_re61" COPASIkey="Function_50"/>
    <SBMLMap SBMLid="Function_for_re62" COPASIkey="Function_51"/>
    <SBMLMap SBMLid="HCO3_i" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="HCO3_o" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="H_active" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="J_AE" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="J_CHE" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="J_NHE" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="J_NHS" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="K_AK" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="K_CK" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="K_Lac" COPASIkey="ModelValue_86"/>
    <SBMLMap SBMLid="K_up" COPASIkey="ModelValue_88"/>
    <SBMLMap SBMLid="Kia_NADH" COPASIkey="ModelValue_91"/>
    <SBMLMap SBMLid="Km_ADP" COPASIkey="ModelValue_58"/>
    <SBMLMap SBMLid="Km_ADP_pgk" COPASIkey="ModelValue_71"/>
    <SBMLMap SBMLid="Km_ADP_pk" COPASIkey="ModelValue_81"/>
    <SBMLMap SBMLid="Km_AMP_2" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="Km_ATP_hk" COPASIkey="ModelValue_46"/>
    <SBMLMap SBMLid="Km_ATP_pfk" COPASIkey="ModelValue_60"/>
    <SBMLMap SBMLid="Km_ATP_pgk" COPASIkey="ModelValue_72"/>
    <SBMLMap SBMLid="Km_DHAP" COPASIkey="ModelValue_92"/>
    <SBMLMap SBMLid="Km_G1P" COPASIkey="ModelValue_94"/>
    <SBMLMap SBMLid="Km_GBP" COPASIkey="ModelValue_95"/>
    <SBMLMap SBMLid="Km_Lac_flux_in" COPASIkey="ModelValue_54"/>
    <SBMLMap SBMLid="Km_Lac_flux_out" COPASIkey="ModelValue_56"/>
    <SBMLMap SBMLid="Km_NAD" COPASIkey="ModelValue_35"/>
    <SBMLMap SBMLid="Km_NADH" COPASIkey="ModelValue_51"/>
    <SBMLMap SBMLid="Km_NADH_re54" COPASIkey="ModelValue_93"/>
    <SBMLMap SBMLid="Km_O2" COPASIkey="ModelValue_59"/>
    <SBMLMap SBMLid="Kmf_GBPS" COPASIkey="ModelValue_96"/>
    <SBMLMap SBMLid="Kmf_eno" COPASIkey="ModelValue_29"/>
    <SBMLMap SBMLid="Kmf_fbp" COPASIkey="ModelValue_33"/>
    <SBMLMap SBMLid="Kmf_gapdh" COPASIkey="ModelValue_36"/>
    <SBMLMap SBMLid="Kmf_gp" COPASIkey="ModelValue_38"/>
    <SBMLMap SBMLid="Kmf_gs_D_form" COPASIkey="ModelValue_44"/>
    <SBMLMap SBMLid="Kmf_gs_I_form" COPASIkey="ModelValue_42"/>
    <SBMLMap SBMLid="Kmf_hk" COPASIkey="ModelValue_47"/>
    <SBMLMap SBMLid="Kmf_ldh" COPASIkey="ModelValue_52"/>
    <SBMLMap SBMLid="Kmf_pfk" COPASIkey="ModelValue_61"/>
    <SBMLMap SBMLid="Kmf_pgi" COPASIkey="ModelValue_67"/>
    <SBMLMap SBMLid="Kmf_pgk" COPASIkey="ModelValue_73"/>
    <SBMLMap SBMLid="Kmf_pglym" COPASIkey="ModelValue_77"/>
    <SBMLMap SBMLid="Kmf_pgm" COPASIkey="ModelValue_63"/>
    <SBMLMap SBMLid="Kmf_pk" COPASIkey="ModelValue_82"/>
    <SBMLMap SBMLid="Kmf_tpi" COPASIkey="ModelValue_104"/>
    <SBMLMap SBMLid="Kmr_GBPS" COPASIkey="ModelValue_97"/>
    <SBMLMap SBMLid="Kmr_eno" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="Kmr_gp" COPASIkey="ModelValue_39"/>
    <SBMLMap SBMLid="Kmr_hk" COPASIkey="ModelValue_48"/>
    <SBMLMap SBMLid="Kmr_pgi" COPASIkey="ModelValue_68"/>
    <SBMLMap SBMLid="Kmr_pgk" COPASIkey="ModelValue_74"/>
    <SBMLMap SBMLid="Kmr_pglym" COPASIkey="ModelValue_78"/>
    <SBMLMap SBMLid="Kmr_pgm" COPASIkey="ModelValue_64"/>
    <SBMLMap SBMLid="Kmr_pk" COPASIkey="ModelValue_83"/>
    <SBMLMap SBMLid="PS_ec" COPASIkey="ModelValue_100"/>
    <SBMLMap SBMLid="PS_ve" COPASIkey="ModelValue_101"/>
    <SBMLMap SBMLid="VR_cellcyto" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="Vf_GBPS" COPASIkey="ModelValue_98"/>
    <SBMLMap SBMLid="Vf_eno" COPASIkey="ModelValue_31"/>
    <SBMLMap SBMLid="Vf_fbp" COPASIkey="ModelValue_34"/>
    <SBMLMap SBMLid="Vf_gapdh" COPASIkey="ModelValue_37"/>
    <SBMLMap SBMLid="Vf_gp" COPASIkey="ModelValue_40"/>
    <SBMLMap SBMLid="Vf_gs_D_form" COPASIkey="ModelValue_45"/>
    <SBMLMap SBMLid="Vf_gs_I_form" COPASIkey="ModelValue_43"/>
    <SBMLMap SBMLid="Vf_hk" COPASIkey="ModelValue_49"/>
    <SBMLMap SBMLid="Vf_ldh" COPASIkey="ModelValue_53"/>
    <SBMLMap SBMLid="Vf_pfk" COPASIkey="ModelValue_62"/>
    <SBMLMap SBMLid="Vf_pgi" COPASIkey="ModelValue_69"/>
    <SBMLMap SBMLid="Vf_pgk" COPASIkey="ModelValue_75"/>
    <SBMLMap SBMLid="Vf_pglym" COPASIkey="ModelValue_79"/>
    <SBMLMap SBMLid="Vf_pgm" COPASIkey="ModelValue_65"/>
    <SBMLMap SBMLid="Vf_pk" COPASIkey="ModelValue_84"/>
    <SBMLMap SBMLid="Vf_tpi" COPASIkey="ModelValue_105"/>
    <SBMLMap SBMLid="Vmax_Lac_flux_in" COPASIkey="ModelValue_55"/>
    <SBMLMap SBMLid="Vmax_Lac_flux_out" COPASIkey="ModelValue_57"/>
    <SBMLMap SBMLid="Vr_GBPS" COPASIkey="ModelValue_99"/>
    <SBMLMap SBMLid="Vr_eno" COPASIkey="ModelValue_32"/>
    <SBMLMap SBMLid="Vr_gp" COPASIkey="ModelValue_41"/>
    <SBMLMap SBMLid="Vr_hk" COPASIkey="ModelValue_50"/>
    <SBMLMap SBMLid="Vr_pgi" COPASIkey="ModelValue_70"/>
    <SBMLMap SBMLid="Vr_pgk" COPASIkey="ModelValue_76"/>
    <SBMLMap SBMLid="Vr_pglym" COPASIkey="ModelValue_80"/>
    <SBMLMap SBMLid="Vr_pgm" COPASIkey="ModelValue_66"/>
    <SBMLMap SBMLid="Vr_pk" COPASIkey="ModelValue_85"/>
    <SBMLMap SBMLid="X_AK" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="X_CK" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="X_Lac" COPASIkey="ModelValue_87"/>
    <SBMLMap SBMLid="X_atpase" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="X_up" COPASIkey="ModelValue_89"/>
    <SBMLMap SBMLid="beta_CO2" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="beta_i" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="c1" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="c2" COPASIkey="Compartment_1"/>
    <SBMLMap SBMLid="c3" COPASIkey="Compartment_2"/>
    <SBMLMap SBMLid="f_up_eq" COPASIkey="ModelValue_90"/>
    <SBMLMap SBMLid="h" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="k_a" COPASIkey="ModelValue_102"/>
    <SBMLMap SBMLid="k_d" COPASIkey="ModelValue_103"/>
    <SBMLMap SBMLid="level" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="lowO2" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="pH_o" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="rateOf_re15" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="rateOf_re20" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="rateOf_re37" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="rateOf_re46" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="rateOf_re54" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="rateOf_re58" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="re11" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="re12" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="re13" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="re15" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="re16" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="re2" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="re20" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="re21" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="re22" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="re3" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="re36" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="re37" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="re39" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="re4" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="re40" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="re41" COPASIkey="Reaction_19"/>
    <SBMLMap SBMLid="re42" COPASIkey="Reaction_20"/>
    <SBMLMap SBMLid="re43" COPASIkey="Reaction_21"/>
    <SBMLMap SBMLid="re44" COPASIkey="Reaction_22"/>
    <SBMLMap SBMLid="re45" COPASIkey="Reaction_23"/>
    <SBMLMap SBMLid="re46" COPASIkey="Reaction_24"/>
    <SBMLMap SBMLid="re47" COPASIkey="Reaction_25"/>
    <SBMLMap SBMLid="re48" COPASIkey="Reaction_26"/>
    <SBMLMap SBMLid="re49" COPASIkey="Reaction_27"/>
    <SBMLMap SBMLid="re5" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="re50" COPASIkey="Reaction_28"/>
    <SBMLMap SBMLid="re51" COPASIkey="Reaction_29"/>
    <SBMLMap SBMLid="re52" COPASIkey="Reaction_30"/>
    <SBMLMap SBMLid="re53" COPASIkey="Reaction_31"/>
    <SBMLMap SBMLid="re54" COPASIkey="Reaction_32"/>
    <SBMLMap SBMLid="re55" COPASIkey="Reaction_33"/>
    <SBMLMap SBMLid="re56" COPASIkey="Reaction_34"/>
    <SBMLMap SBMLid="re58" COPASIkey="Reaction_35"/>
    <SBMLMap SBMLid="re59" COPASIkey="Reaction_36"/>
    <SBMLMap SBMLid="re6" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="re60" COPASIkey="Reaction_37"/>
    <SBMLMap SBMLid="re61" COPASIkey="Reaction_38"/>
    <SBMLMap SBMLid="re62" COPASIkey="Reaction_39"/>
    <SBMLMap SBMLid="re7" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="re8" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="s1" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="s2" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="s22" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="s24" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="s25" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="s26" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="s27" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="s28" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="s29" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="s30" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="s31" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="s32" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="s33" COPASIkey="Metabolite_14"/>
    <SBMLMap SBMLid="s34" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="s35" COPASIkey="Metabolite_16"/>
    <SBMLMap SBMLid="s36" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="s38" COPASIkey="Metabolite_18"/>
    <SBMLMap SBMLid="s39" COPASIkey="Metabolite_47"/>
    <SBMLMap SBMLid="s52" COPASIkey="Metabolite_19"/>
    <SBMLMap SBMLid="s56" COPASIkey="Metabolite_48"/>
    <SBMLMap SBMLid="s57" COPASIkey="Metabolite_20"/>
    <SBMLMap SBMLid="s58" COPASIkey="Metabolite_21"/>
    <SBMLMap SBMLid="s59" COPASIkey="Metabolite_22"/>
    <SBMLMap SBMLid="s60" COPASIkey="Metabolite_23"/>
    <SBMLMap SBMLid="s61" COPASIkey="Metabolite_38"/>
    <SBMLMap SBMLid="s62" COPASIkey="Metabolite_45"/>
    <SBMLMap SBMLid="s63" COPASIkey="Metabolite_46"/>
    <SBMLMap SBMLid="s64" COPASIkey="Metabolite_24"/>
    <SBMLMap SBMLid="s65" COPASIkey="Metabolite_43"/>
    <SBMLMap SBMLid="s66" COPASIkey="Metabolite_25"/>
    <SBMLMap SBMLid="s67" COPASIkey="Metabolite_26"/>
    <SBMLMap SBMLid="s68" COPASIkey="Metabolite_27"/>
    <SBMLMap SBMLid="s69" COPASIkey="Metabolite_28"/>
    <SBMLMap SBMLid="s7" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="s70" COPASIkey="Metabolite_29"/>
    <SBMLMap SBMLid="s71" COPASIkey="Metabolite_30"/>
    <SBMLMap SBMLid="s72" COPASIkey="Metabolite_31"/>
    <SBMLMap SBMLid="s73" COPASIkey="Metabolite_32"/>
    <SBMLMap SBMLid="s74" COPASIkey="Metabolite_33"/>
    <SBMLMap SBMLid="s75" COPASIkey="Metabolite_34"/>
    <SBMLMap SBMLid="s76" COPASIkey="Metabolite_35"/>
    <SBMLMap SBMLid="s77" COPASIkey="Metabolite_36"/>
    <SBMLMap SBMLid="s78" COPASIkey="Metabolite_37"/>
    <SBMLMap SBMLid="s79" COPASIkey="Metabolite_39"/>
    <SBMLMap SBMLid="s8" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="s81" COPASIkey="Metabolite_44"/>
    <SBMLMap SBMLid="s82" COPASIkey="Metabolite_40"/>
    <SBMLMap SBMLid="s83" COPASIkey="Metabolite_41"/>
    <SBMLMap SBMLid="s84" COPASIkey="Metabolite_42"/>
    <SBMLMap SBMLid="switch_GSGP" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="switch_LDH" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="switch_kashi" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="v_PGI_ss" COPASIkey="ModelValue_106"/>
  </SBMLReference>
  <ListOfUnitDefinitions>
    <UnitDefinition key="Unit_1" name="meter" symbol="m">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_0">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-23T18:23:16Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        m
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_5" name="second" symbol="s">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_4">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-23T18:23:16Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        s
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_13" name="Avogadro" symbol="Avogadro">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_12">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-23T18:23:16Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_15" name="dimensionless" symbol="1">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_14">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-23T18:23:16Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        1
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_17" name="item" symbol="#">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_16">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-23T18:23:16Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        #
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_35" name="liter" symbol="l">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_34">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-23T18:23:16Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        0.001*m^3
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_41" name="mole" symbol="mol">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_40">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-08-23T18:23:16Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro*#
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
