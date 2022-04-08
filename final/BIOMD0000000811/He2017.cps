<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.24 (Build 197) (http://www.copasi.org) at 2019-09-12 10:44:03 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="24" versionDevel="197" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_6" name="Constant flux (irreversible)" type="PreDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-12T09:24:42Z</dcterms:W3CDTF>
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
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-10T15:21:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
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
    <Function key="Function_40" name="Function_for_Tumor_Interaction_NK" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-10T14:49:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        b_c*N*C
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_264" name="b_c" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_263" name="N" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_262" name="C" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Function_for_Tumor_Removal_CD8" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-10T15:15:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (d_c*E*C)/((1+r_1*R)*(1+r_2*(gamma_2_tau_3)*C))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_265" name="d_c" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_250" name="E" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_261" name="C" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_266" name="r_1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_267" name="R" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_268" name="r_2" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_269" name="gamma_2_tau_3" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="Function_for_PSC_Growth" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-10T15:28:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k_p+(f_p*C)/(mu_p+C))*P*(1-a_p*P)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_276" name="k_p" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_275" name="f_p" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_274" name="C" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_273" name="mu_p" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_272" name="P" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_271" name="a_p" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="Function_for_CD8_Inactivation" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-10T15:56:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        c_e*E*C
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_281" name="c_e" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_280" name="E" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_279" name="C" order="2" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="Function_for_CD8_Recruitment_NK" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-10T16:01:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        r_e*N*C
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_270" name="r_e" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_277" name="N" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_278" name="C" order="2" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="Function_for_CD8_Proliferation_Stimulation_IL-2" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-10T16:20:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        (p_e*H*E)/(g_e*tau_1_alpha_1+H)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_284" name="p_e" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_283" name="H" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_282" name="E" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_285" name="g_e" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_286" name="tau_1_alpha_1" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="Function_for_CD8_Proliferation_Stimulation_IFNG" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-10T16:41:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        f_e*E*(beta_1_tau_2*E+beta_2_tau_2*N+beta_3_tau_2*H)/(h_e+beta_1_tau_2*E+beta_2_tau_2*N+beta_3_tau_2*H)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_291" name="f_e" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_290" name="E" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_289" name="beta_1_tau_2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_288" name="beta_2_tau_2" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_287" name="N" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_292" name="beta_3_tau_2" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_293" name="H" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_294" name="h_e" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="Function_for_CD8_Death_Treg" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-10T16:47:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        delta_e*R*E
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_302" name="delta_e" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_301" name="R" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_300" name="E" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="Function_for_NK_Inactivation" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_54">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-12T09:25:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        c_n*N*C
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_352" name="c_n" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_353" name="N" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_365" name="C" order="2" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="Function_for_NK_Proliferation_Stimulation_IL-2" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_55">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-12T09:28:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        (
p_n*H*N
)/(
g_n*tau_1_alpha_1+H
)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_361" name="p_n" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_357" name="N" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_351" name="g_n" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_359" name="H" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_371" name="tau_1_alpha_1" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="Function_for_NK_Proliferation_Stimulation_IFNG" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_57">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-12T09:34:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        f_n*N*(beta_1_tau_2*E+beta_2_tau_2*N+beta_3_tau_2*H)/(h_n+beta_1_tau_2*E+beta_2_tau_2*N+beta_3_tau_2*H)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_370" name="f_n" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_380" name="N" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_373" name="beta_1_tau_2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_376" name="E" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_377" name="beta_2_tau_2" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_389" name="beta_3_tau_2" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_391" name="H" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_393" name="h_n" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_63" name="Function_for_Thelp_Proliferation_Stimulation_IL-2" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_63">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-12T09:51:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        (p_h*H*H)/(g_h*tau_1_alpha_1+H)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_412" name="p_h" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_366" name="H" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_372" name="g_h" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_382" name="tau_1_alpha_1" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_65" name="Function_for_Thelp_Proliferation_Stimulation_IFNG" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_65">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-12T09:55:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        f_h*H*(beta_1_tau_2*E+beta_2_tau_2*N+beta_3_tau_2*H)/(h_h+beta_1_tau_2*E+beta_2_tau_2*N+beta_3_tau_2*H)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_411" name="f_h" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_405" name="H" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_378" name="beta_1_tau_2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_414" name="E" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_410" name="beta_2_tau_2" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_421" name="N" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_423" name="beta_3_tau_2" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_425" name="h_h" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_67" name="Function_for_Thelp_Death_Treg" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_67">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-12T10:01:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        delta_h*R*H
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_394" name="delta_h" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_403" name="R" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_386" name="H" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_71" name="Function_for_Treg_Origination_Thelp" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_71">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-12T10:13:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        b_r*H
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_459" name="b_r" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_443" name="H" order="1" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_73" name="Function_for_Treg_Origination_CD8" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_73">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-12T10:14:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        a_r*E
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_402" name="a_r" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_401" name="E" order="1" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_75" name="Function_for_Treg_Proliferation_Stimulation_IL-2" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_75">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-12T10:19:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        (p_r*H*R)/(g_r*tau_1_alpha_1+H)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_439" name="p_r" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_417" name="H" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_453" name="R" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_452" name="g_r" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_426" name="tau_1_alpha_1" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_77" name="Function_for_Treg_Lysis_NK" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_77">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-12T10:20:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        r*N*R
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_451" name="r" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_464" name="N" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_434" name="R" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_78" name="Function_for_Tumor_Growth" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_78">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-12T10:34:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        (k_c+mu_c*P)*C*(1-a_c*C)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_419" name="k_c" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_458" name="mu_c" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_456" name="P" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_463" name="C" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_422" name="a_c" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="He2017 - A mathematical model of pancreatic cancer with two kinds of treatments" simulationType="time" timeUnit="d" volumeUnit="ml" areaUnit="m²" lengthUnit="m" quantityUnit="#" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:mamo:MAMO_0000046"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C3305"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C36294"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C71757"/>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1142/S021833901750005X"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-10T12:50:31Z</dcterms:W3CDTF>
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
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      This is a mathematical model of pancreatic cancer which includes descriptions of regulatory T cell activity and inhibition therapy. Descriptions of cytokine induced killer immunotherapy are also included.
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="compartment" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-12T11:42:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94498"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="C_PCC" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-10T15:15:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:bto:BTO:0000584"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="P_PSC" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-12T11:07:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:cl:CL:0002410"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="E_CD8" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-12T11:05:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C12542"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="N_Killer" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-12T10:39:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:cl:CL:0000623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="H_T_Helper" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-12T10:39:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:bto:BTO:0002417"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="R_T_Regulatory" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-12T10:39:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:bto:BTO:0004520"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="k_c" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-12T10:35:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="mu_c" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-10T13:27:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.1*&lt;CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[a_c],Reference=InitialValue>*&lt;CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[a_p],Reference=InitialValue>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="a_c" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-10T13:29:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="b_c" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_4" name="d_c" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_5" name="r_1" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_6" name="r_2" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_7" name="k_p" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-10T13:29:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.1*&lt;CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[k_c],Reference=InitialValue>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="a_p" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_9" name="f_p" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_10" name="mu_p" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_11" name="lambda_p" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_12" name="a_e" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_13" name="b_e" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_14" name="c_e" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_15" name="r_e" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_16" name="p_e" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_17" name="g_e" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_18" name="f_e" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_19" name="h_e" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_20" name="delta_e" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_21" name="a_n" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_22" name="b_n" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_23" name="c_n" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_24" name="p_n" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_25" name="g_n" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_26" name="f_n" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_27" name="h_n" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_28" name="delta_n" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_29" name="a_h" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_30" name="b_h" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_31" name="p_h" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_32" name="g_h" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-10T13:24:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_33" name="f_h" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_34" name="h_h" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_35" name="delta_h" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_36" name="a" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_37" name="delta_r" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_38" name="a_r" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_39" name="b_r" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_40" name="p_r" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_41" name="g_r" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_42" name="r" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_43" name="tau_1_alpha_1" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_44" name="beta_1_tau_2" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_45" name="beta_2_tau_2" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_46" name="beta_3_tau_2" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_47" name="gamma_2_tau_3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-12T09:29:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_48" name="k_R" simulationType="fixed" addNoise="false">
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="Tumor_Growth" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-10T13:39:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C36294"/>
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
          <Constant key="Parameter_7341" name="k_c" value="0.0195"/>
          <Constant key="Parameter_7348" name="mu_c" value="1.82141e-21"/>
          <Constant key="Parameter_7391" name="a_c" value="1.02e-11"/>
        </ListOfConstants>
        <KineticLaw function="Function_78" unitType="Default" scalingCompartment="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_419">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_458">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_456">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_463">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_422">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="Tumor_Interaction_NK" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-10T14:48:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0002420"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5022" name="b_c" value="1.5e-11"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="Tumor_Removal_CD8" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-10T15:15:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0002419"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5021" name="d_c" value="7.87e-05"/>
          <Constant key="Parameter_5020" name="r_1" value="0.345"/>
          <Constant key="Parameter_5019" name="r_2" value="0.286"/>
          <Constant key="Parameter_5018" name="gamma_2_tau_3" value="4.4691e-13"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="ModelValue_47"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="PSC_Growth" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-10T15:27:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C18081"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5017" name="k_p" value="0.00195"/>
          <Constant key="Parameter_5016" name="f_p" value="0.125"/>
          <Constant key="Parameter_5015" name="mu_p" value="5.6e+07"/>
          <Constant key="Parameter_5014" name="a_p" value="1.7857e-09"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="PSC_Death" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-10T15:33:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0008219"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5013" name="k1" value="0.015"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="CD8_Growth_Constant" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-10T15:35:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C18081"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5012" name="v" value="13000"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="CD8_Death_Natural" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-10T15:44:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0008219"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5011" name="k1" value="0.02"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="CD8_Inactivation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-10T15:56:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0008219"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5010" name="c_e" value="3.42e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="CD8_Recruitment_NK" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-10T16:01:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0072683"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5009" name="r_e" value="5e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="CD8_Proliferation_Stimulation_IL-2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-10T16:07:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C18081"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5008" name="p_e" value="0.125"/>
          <Constant key="Parameter_5007" name="g_e" value="0.3"/>
          <Constant key="Parameter_5006" name="tau_1_alpha_1" value="2.2483e+11"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="ModelValue_43"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="CD8_Proliferation_Stimulation_IFNG" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-10T16:37:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C18081"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5005" name="f_e" value="0.125"/>
          <Constant key="Parameter_5004" name="beta_1_tau_2" value="4.4691e-13"/>
          <Constant key="Parameter_5003" name="beta_2_tau_2" value="4.4691e-13"/>
          <Constant key="Parameter_5002" name="beta_3_tau_2" value="4.4691e-13"/>
          <Constant key="Parameter_5001" name="h_e" value="0.3"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="ModelValue_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="ModelValue_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="ModelValue_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="CD8_Death_Treg" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-10T16:47:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0001906"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5000" name="delta_e" value="1e-10"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default" scalingCompartment="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="NK_Growth_Constant" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-12T09:24:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5038" name="v" value="130000"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="NK_Death" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-12T09:24:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0008219"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5073" name="k1" value="0.015"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="NK_Inactivation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-12T09:25:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0008219"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5076" name="c_n" value="1e-13"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_352">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_353">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_365">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="NK_Proliferation_Stimulation_IL-2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-12T09:28:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C18081"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5070" name="p_n" value="0.125"/>
          <Constant key="Parameter_5072" name="g_n" value="0.3"/>
          <Constant key="Parameter_5071" name="tau_1_alpha_1" value="2.2483e+11"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_357">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_351">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_359">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_371">
              <SourceParameter reference="ModelValue_43"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="NK_Proliferation_Stimulation_IFNG" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-12T09:34:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C18081"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5074" name="f_n" value="0.125"/>
          <Constant key="Parameter_5077" name="beta_1_tau_2" value="4.4691e-13"/>
          <Constant key="Parameter_5068" name="beta_2_tau_2" value="4.4691e-13"/>
          <Constant key="Parameter_5066" name="beta_3_tau_2" value="4.4691e-13"/>
          <Constant key="Parameter_5065" name="h_n" value="0.3"/>
        </ListOfConstants>
        <KineticLaw function="Function_57" unitType="Default" scalingCompartment="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_370">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_380">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_373">
              <SourceParameter reference="ModelValue_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_377">
              <SourceParameter reference="ModelValue_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_389">
              <SourceParameter reference="ModelValue_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_391">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_393">
              <SourceParameter reference="ModelValue_27"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="NK_Death_Treg" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-12T09:39:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0001906"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4765" name="k1" value="1e-10"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="Thelp_Growth_Constant" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-12T09:49:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C18081"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4742" name="v" value="360000"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="Thelp_Death_Natural" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-12T09:50:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0008219"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5048" name="k1" value="0.0012"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="Thelp_Proliferation_Stimulation_IL-2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-12T09:51:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C18081"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5045" name="p_h" value="0.125"/>
          <Constant key="Parameter_5062" name="g_h" value="0.3"/>
          <Constant key="Parameter_5052" name="tau_1_alpha_1" value="2.2483e+11"/>
        </ListOfConstants>
        <KineticLaw function="Function_63" unitType="Default" scalingCompartment="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_412">
              <SourceParameter reference="ModelValue_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_366">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_372">
              <SourceParameter reference="ModelValue_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_382">
              <SourceParameter reference="ModelValue_43"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="Thelp_Proliferation_Stimulation_IFNG" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-12T09:53:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C18081"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5044" name="f_h" value="0.125"/>
          <Constant key="Parameter_5057" name="beta_1_tau_2" value="4.4691e-13"/>
          <Constant key="Parameter_5063" name="beta_2_tau_2" value="4.4691e-13"/>
          <Constant key="Parameter_5059" name="beta_3_tau_2" value="4.4691e-13"/>
          <Constant key="Parameter_5058" name="h_h" value="0.3"/>
        </ListOfConstants>
        <KineticLaw function="Function_65" unitType="Default" scalingCompartment="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_411">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_405">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_378">
              <SourceParameter reference="ModelValue_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_414">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_410">
              <SourceParameter reference="ModelValue_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_421">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_423">
              <SourceParameter reference="ModelValue_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_425">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="Thelp_Death_Treg" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-12T09:58:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0001906"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5046" name="delta_h" value="1e-10"/>
        </ListOfConstants>
        <KineticLaw function="Function_67" unitType="Default" scalingCompartment="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_394">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_403">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_386">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="Treg_Growth_Constant" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-12T10:04:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C18081"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4781" name="v" value="560000"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="Treg_Death_Natural" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-12T10:06:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0008219"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4780" name="k1" value="0.023"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="Treg_Origination_Thelp" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-12T10:10:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0030217"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5043" name="b_r" value="0.0004"/>
        </ListOfConstants>
        <KineticLaw function="Function_71" unitType="Default" scalingCompartment="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_459">
              <SourceParameter reference="ModelValue_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_443">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_26" name="Treg_Origination_CD8" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-12T10:14:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0030217"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4737" name="a_r" value="0.0002"/>
        </ListOfConstants>
        <KineticLaw function="Function_73" unitType="Default" scalingCompartment="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_402">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_401">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_27" name="Treg_Proliferation_Stimulation_IL-2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-12T10:19:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C18081"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4768" name="p_r" value="0.125"/>
          <Constant key="Parameter_4769" name="g_r" value="0.3"/>
          <Constant key="Parameter_4758" name="tau_1_alpha_1" value="2.2483e+11"/>
        </ListOfConstants>
        <KineticLaw function="Function_75" unitType="Default" scalingCompartment="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_439">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_417">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_453">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_452">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_426">
              <SourceParameter reference="ModelValue_43"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_28" name="Treg_Lysis_NK" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-12T10:20:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0001906"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5069" name="r" value="1e-11"/>
        </ListOfConstants>
        <KineticLaw function="Function_77" unitType="Default" scalingCompartment="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_451">
              <SourceParameter reference="ModelValue_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_464">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_434">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Compartments[compartment],Vector=Metabolites[C_PCC]" value="1000000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Compartments[compartment],Vector=Metabolites[P_PSC]" value="5600000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Compartments[compartment],Vector=Metabolites[E_CD8]" value="873600000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Compartments[compartment],Vector=Metabolites[N_Killer]" value="481600000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Compartments[compartment],Vector=Metabolites[H_T_Helper]" value="2116800000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Compartments[compartment],Vector=Metabolites[R_T_Regulatory]" value="158760000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[k_c]" value="0.0195" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[mu_c]" value="1.8214139999999998e-21" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[a_c]" value="1.0199999999999999e-11" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[b_c]" value="1.5e-11" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[d_c]" value="7.8700000000000002e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[r_1]" value="0.34499999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[r_2]" value="0.28599999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[k_p]" value="0.0019500000000000001" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[a_p]" value="1.7856999999999999e-09" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[f_p]" value="0.125" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[mu_p]" value="56000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[lambda_p]" value="0.014999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[a_e]" value="13000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[b_e]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[c_e]" value="3.42e-12" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[r_e]" value="4.9999999999999997e-12" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[p_e]" value="0.125" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[g_e]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[f_e]" value="0.125" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[h_e]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[delta_e]" value="1e-10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[a_n]" value="130000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[b_n]" value="0.014999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[c_n]" value="1e-13" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[p_n]" value="0.125" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[g_n]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[f_n]" value="0.125" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[h_n]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[delta_n]" value="1e-10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[a_h]" value="360000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[b_h]" value="0.0011999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[p_h]" value="0.125" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[g_h]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[f_h]" value="0.125" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[h_h]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[delta_h]" value="1e-10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[a]" value="560000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[delta_r]" value="0.023" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[a_r]" value="0.00020000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[b_r]" value="0.00040000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[p_r]" value="0.125" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[g_r]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[r]" value="9.9999999999999994e-12" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[tau_1_alpha_1]" value="224830000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[beta_1_tau_2]" value="4.4691000000000001e-13" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[beta_2_tau_2]" value="4.4691000000000001e-13" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[beta_3_tau_2]" value="4.4691000000000001e-13" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[gamma_2_tau_3]" value="4.4691000000000001e-13" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[k_R]" value="1.5e-11" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[Tumor_Growth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[Tumor_Growth],ParameterGroup=Parameters,Parameter=k_c" value="0.0195" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[k_c],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[Tumor_Growth],ParameterGroup=Parameters,Parameter=mu_c" value="1.8214139999999998e-21" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[mu_c],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[Tumor_Growth],ParameterGroup=Parameters,Parameter=a_c" value="1.0199999999999999e-11" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[a_c],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[Tumor_Interaction_NK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[Tumor_Interaction_NK],ParameterGroup=Parameters,Parameter=b_c" value="1.5e-11" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[b_c],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[Tumor_Removal_CD8]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[Tumor_Removal_CD8],ParameterGroup=Parameters,Parameter=d_c" value="7.8700000000000002e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[d_c],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[Tumor_Removal_CD8],ParameterGroup=Parameters,Parameter=r_1" value="0.34499999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[r_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[Tumor_Removal_CD8],ParameterGroup=Parameters,Parameter=r_2" value="0.28599999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[r_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[Tumor_Removal_CD8],ParameterGroup=Parameters,Parameter=gamma_2_tau_3" value="4.4691000000000001e-13" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[gamma_2_tau_3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[PSC_Growth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[PSC_Growth],ParameterGroup=Parameters,Parameter=k_p" value="0.0019500000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[k_p],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[PSC_Growth],ParameterGroup=Parameters,Parameter=f_p" value="0.125" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[f_p],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[PSC_Growth],ParameterGroup=Parameters,Parameter=mu_p" value="56000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[mu_p],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[PSC_Growth],ParameterGroup=Parameters,Parameter=a_p" value="1.7856999999999999e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[a_p],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[PSC_Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[PSC_Death],ParameterGroup=Parameters,Parameter=k1" value="0.014999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[lambda_p],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[CD8_Growth_Constant]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[CD8_Growth_Constant],ParameterGroup=Parameters,Parameter=v" value="13000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[a_e],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[CD8_Death_Natural]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[CD8_Death_Natural],ParameterGroup=Parameters,Parameter=k1" value="0.02" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[b_e],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[CD8_Inactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[CD8_Inactivation],ParameterGroup=Parameters,Parameter=c_e" value="3.42e-12" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[c_e],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[CD8_Recruitment_NK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[CD8_Recruitment_NK],ParameterGroup=Parameters,Parameter=r_e" value="4.9999999999999997e-12" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[r_e],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[CD8_Proliferation_Stimulation_IL-2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[CD8_Proliferation_Stimulation_IL-2],ParameterGroup=Parameters,Parameter=p_e" value="0.125" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[p_e],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[CD8_Proliferation_Stimulation_IL-2],ParameterGroup=Parameters,Parameter=g_e" value="0.29999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[g_e],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[CD8_Proliferation_Stimulation_IL-2],ParameterGroup=Parameters,Parameter=tau_1_alpha_1" value="224830000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[tau_1_alpha_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[CD8_Proliferation_Stimulation_IFNG]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[CD8_Proliferation_Stimulation_IFNG],ParameterGroup=Parameters,Parameter=f_e" value="0.125" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[f_e],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[CD8_Proliferation_Stimulation_IFNG],ParameterGroup=Parameters,Parameter=beta_1_tau_2" value="4.4691000000000001e-13" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[beta_1_tau_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[CD8_Proliferation_Stimulation_IFNG],ParameterGroup=Parameters,Parameter=beta_2_tau_2" value="4.4691000000000001e-13" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[beta_2_tau_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[CD8_Proliferation_Stimulation_IFNG],ParameterGroup=Parameters,Parameter=beta_3_tau_2" value="4.4691000000000001e-13" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[beta_3_tau_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[CD8_Proliferation_Stimulation_IFNG],ParameterGroup=Parameters,Parameter=h_e" value="0.29999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[h_e],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[CD8_Death_Treg]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[CD8_Death_Treg],ParameterGroup=Parameters,Parameter=delta_e" value="1e-10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[delta_e],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[NK_Growth_Constant]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[NK_Growth_Constant],ParameterGroup=Parameters,Parameter=v" value="130000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[a_n],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[NK_Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[NK_Death],ParameterGroup=Parameters,Parameter=k1" value="0.014999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[b_n],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[NK_Inactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[NK_Inactivation],ParameterGroup=Parameters,Parameter=c_n" value="1e-13" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[c_n],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[NK_Proliferation_Stimulation_IL-2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[NK_Proliferation_Stimulation_IL-2],ParameterGroup=Parameters,Parameter=p_n" value="0.125" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[p_n],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[NK_Proliferation_Stimulation_IL-2],ParameterGroup=Parameters,Parameter=g_n" value="0.29999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[g_n],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[NK_Proliferation_Stimulation_IL-2],ParameterGroup=Parameters,Parameter=tau_1_alpha_1" value="224830000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[tau_1_alpha_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[NK_Proliferation_Stimulation_IFNG]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[NK_Proliferation_Stimulation_IFNG],ParameterGroup=Parameters,Parameter=f_n" value="0.125" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[f_n],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[NK_Proliferation_Stimulation_IFNG],ParameterGroup=Parameters,Parameter=beta_1_tau_2" value="4.4691000000000001e-13" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[beta_1_tau_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[NK_Proliferation_Stimulation_IFNG],ParameterGroup=Parameters,Parameter=beta_2_tau_2" value="4.4691000000000001e-13" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[beta_2_tau_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[NK_Proliferation_Stimulation_IFNG],ParameterGroup=Parameters,Parameter=beta_3_tau_2" value="4.4691000000000001e-13" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[beta_3_tau_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[NK_Proliferation_Stimulation_IFNG],ParameterGroup=Parameters,Parameter=h_n" value="0.29999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[h_n],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[NK_Death_Treg]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[NK_Death_Treg],ParameterGroup=Parameters,Parameter=k1" value="1e-10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[delta_n],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[Thelp_Growth_Constant]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[Thelp_Growth_Constant],ParameterGroup=Parameters,Parameter=v" value="360000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[a_h],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[Thelp_Death_Natural]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[Thelp_Death_Natural],ParameterGroup=Parameters,Parameter=k1" value="0.0011999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[b_h],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[Thelp_Proliferation_Stimulation_IL-2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[Thelp_Proliferation_Stimulation_IL-2],ParameterGroup=Parameters,Parameter=p_h" value="0.125" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[p_h],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[Thelp_Proliferation_Stimulation_IL-2],ParameterGroup=Parameters,Parameter=g_h" value="0.29999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[g_h],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[Thelp_Proliferation_Stimulation_IL-2],ParameterGroup=Parameters,Parameter=tau_1_alpha_1" value="224830000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[tau_1_alpha_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[Thelp_Proliferation_Stimulation_IFNG]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[Thelp_Proliferation_Stimulation_IFNG],ParameterGroup=Parameters,Parameter=f_h" value="0.125" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[f_h],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[Thelp_Proliferation_Stimulation_IFNG],ParameterGroup=Parameters,Parameter=beta_1_tau_2" value="4.4691000000000001e-13" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[beta_1_tau_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[Thelp_Proliferation_Stimulation_IFNG],ParameterGroup=Parameters,Parameter=beta_2_tau_2" value="4.4691000000000001e-13" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[beta_2_tau_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[Thelp_Proliferation_Stimulation_IFNG],ParameterGroup=Parameters,Parameter=beta_3_tau_2" value="4.4691000000000001e-13" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[beta_3_tau_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[Thelp_Proliferation_Stimulation_IFNG],ParameterGroup=Parameters,Parameter=h_h" value="0.29999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[h_h],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[Thelp_Death_Treg]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[Thelp_Death_Treg],ParameterGroup=Parameters,Parameter=delta_h" value="1e-10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[delta_h],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[Treg_Growth_Constant]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[Treg_Growth_Constant],ParameterGroup=Parameters,Parameter=v" value="560000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[Treg_Death_Natural]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[Treg_Death_Natural],ParameterGroup=Parameters,Parameter=k1" value="0.023" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[delta_r],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[Treg_Origination_Thelp]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[Treg_Origination_Thelp],ParameterGroup=Parameters,Parameter=b_r" value="0.00040000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[b_r],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[Treg_Origination_CD8]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[Treg_Origination_CD8],ParameterGroup=Parameters,Parameter=a_r" value="0.00020000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[a_r],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[Treg_Proliferation_Stimulation_IL-2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[Treg_Proliferation_Stimulation_IL-2],ParameterGroup=Parameters,Parameter=p_r" value="0.125" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[p_r],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[Treg_Proliferation_Stimulation_IL-2],ParameterGroup=Parameters,Parameter=g_r" value="0.29999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[g_r],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[Treg_Proliferation_Stimulation_IL-2],ParameterGroup=Parameters,Parameter=tau_1_alpha_1" value="224830000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[tau_1_alpha_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[Treg_Lysis_NK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Reactions[Treg_Lysis_NK],ParameterGroup=Parameters,Parameter=r" value="9.9999999999999994e-12" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Values[r],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="ModelValue_7"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
      <StateTemplateVariable objectReference="ModelValue_3"/>
      <StateTemplateVariable objectReference="ModelValue_4"/>
      <StateTemplateVariable objectReference="ModelValue_5"/>
      <StateTemplateVariable objectReference="ModelValue_6"/>
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
    </StateTemplate>
    <InitialState type="initialState">
      0 873600000 481600000 158760000 2116800000 1000000000 5600000 1.8214139999999998e-21 0.0019500000000000001 1 0.0195 1.0199999999999999e-11 1.5e-11 7.8700000000000002e-05 0.34499999999999997 0.28599999999999998 1.7856999999999999e-09 0.125 56000000 0.014999999999999999 13000 0.02 3.42e-12 4.9999999999999997e-12 0.125 0.29999999999999999 0.125 0.29999999999999999 1e-10 130000 0.014999999999999999 1e-13 0.125 0.29999999999999999 0.125 0.29999999999999999 1e-10 360000 0.0011999999999999999 0.125 0.29999999999999999 0.125 0.29999999999999999 1e-10 560000 0.023 0.00020000000000000001 0.00040000000000000002 0.125 0.29999999999999999 9.9999999999999994e-12 224830000000 4.4691000000000001e-13 4.4691000000000001e-13 4.4691000000000001e-13 4.4691000000000001e-13 1.5e-11 
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
        <Parameter name="StepNumber" type="unsignedInteger" value="1000"/>
        <Parameter name="StepSize" type="float" value="0.59999999999999998"/>
        <Parameter name="Duration" type="float" value="600"/>
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
    <PlotSpecification name="He2017_Figure_1" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="1"/>
      <ListOfPlotItems>
        <PlotItem name="[C_PCC]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Compartments[compartment],Vector=Metabolites[C_PCC],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[E_CD8]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Compartments[compartment],Vector=Metabolites[E_CD8],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[H_T_Helper]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Compartments[compartment],Vector=Metabolites[H_T_Helper],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[N_Killer]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Compartments[compartment],Vector=Metabolites[N_Killer],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[P_PSC]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Compartments[compartment],Vector=Metabolites[P_PSC],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[R_T_Regulatory]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=He2017 - A mathematical model of pancreatic cancer with two kinds of treatments,Vector=Compartments[compartment],Vector=Metabolites[R_T_Regulatory],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="He2017.xml">
    <SBMLMap SBMLid="CD8_Death_Natural" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="CD8_Death_Treg" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="CD8_Growth_Constant" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="CD8_Inactivation" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="CD8_Proliferation_Stimulation_IFNG" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="CD8_Proliferation_Stimulation_IL_2" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="CD8_Recruitment_NK" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="C_PCC" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="Constant_flux__irreversible" COPASIkey="Function_6"/>
    <SBMLMap SBMLid="E_CD8" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="Function_for_CD8_Death_Treg" COPASIkey="Function_47"/>
    <SBMLMap SBMLid="Function_for_CD8_Inactivation" COPASIkey="Function_43"/>
    <SBMLMap SBMLid="Function_for_CD8_Proliferation_Stimulation_IFNG" COPASIkey="Function_46"/>
    <SBMLMap SBMLid="Function_for_CD8_Proliferation_Stimulation_IL_2" COPASIkey="Function_45"/>
    <SBMLMap SBMLid="Function_for_CD8_Recruitment_NK" COPASIkey="Function_44"/>
    <SBMLMap SBMLid="Function_for_NK_Inactivation" COPASIkey="Function_54"/>
    <SBMLMap SBMLid="Function_for_NK_Proliferation_Stimulation_IFNG" COPASIkey="Function_57"/>
    <SBMLMap SBMLid="Function_for_NK_Proliferation_Stimulation_IL_2" COPASIkey="Function_55"/>
    <SBMLMap SBMLid="Function_for_PSC_Growth" COPASIkey="Function_42"/>
    <SBMLMap SBMLid="Function_for_Thelp_Death_Treg" COPASIkey="Function_67"/>
    <SBMLMap SBMLid="Function_for_Thelp_Proliferation_Stimulation_IFNG" COPASIkey="Function_65"/>
    <SBMLMap SBMLid="Function_for_Thelp_Proliferation_Stimulation_IL_2" COPASIkey="Function_63"/>
    <SBMLMap SBMLid="Function_for_Treg_Lysis_NK" COPASIkey="Function_77"/>
    <SBMLMap SBMLid="Function_for_Treg_Origination_CD8" COPASIkey="Function_73"/>
    <SBMLMap SBMLid="Function_for_Treg_Origination_Thelp" COPASIkey="Function_71"/>
    <SBMLMap SBMLid="Function_for_Treg_Proliferation_Stimulation_IL_2" COPASIkey="Function_75"/>
    <SBMLMap SBMLid="Function_for_Tumor_Growth" COPASIkey="Function_78"/>
    <SBMLMap SBMLid="Function_for_Tumor_Interaction_NK" COPASIkey="Function_40"/>
    <SBMLMap SBMLid="Function_for_Tumor_Removal_CD8" COPASIkey="Function_41"/>
    <SBMLMap SBMLid="H_T_Helper" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="NK_Death" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="NK_Death_Treg" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="NK_Growth_Constant" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="NK_Inactivation" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="NK_Proliferation_Stimulation_IFNG" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="NK_Proliferation_Stimulation_IL_2" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="N_Killer" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="PSC_Death" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="PSC_Growth" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="P_PSC" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="R_T_Regulatory" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="Thelp_Death_Natural" COPASIkey="Reaction_19"/>
    <SBMLMap SBMLid="Thelp_Death_Treg" COPASIkey="Reaction_22"/>
    <SBMLMap SBMLid="Thelp_Growth_Constant" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="Thelp_Proliferation_Stimulation_IFNG" COPASIkey="Reaction_21"/>
    <SBMLMap SBMLid="Thelp_Proliferation_Stimulation_IL_2" COPASIkey="Reaction_20"/>
    <SBMLMap SBMLid="Treg_Death_Natural" COPASIkey="Reaction_24"/>
    <SBMLMap SBMLid="Treg_Growth_Constant" COPASIkey="Reaction_23"/>
    <SBMLMap SBMLid="Treg_Lysis_NK" COPASIkey="Reaction_28"/>
    <SBMLMap SBMLid="Treg_Origination_CD8" COPASIkey="Reaction_26"/>
    <SBMLMap SBMLid="Treg_Origination_Thelp" COPASIkey="Reaction_25"/>
    <SBMLMap SBMLid="Treg_Proliferation_Stimulation_IL_2" COPASIkey="Reaction_27"/>
    <SBMLMap SBMLid="Tumor_Growth" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="Tumor_Interaction_NK" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="Tumor_Removal_CD8" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="a" COPASIkey="ModelValue_36"/>
    <SBMLMap SBMLid="a_c" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="a_e" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="a_h" COPASIkey="ModelValue_29"/>
    <SBMLMap SBMLid="a_n" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="a_p" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="a_r" COPASIkey="ModelValue_38"/>
    <SBMLMap SBMLid="b_c" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="b_e" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="b_h" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="b_n" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="b_r" COPASIkey="ModelValue_39"/>
    <SBMLMap SBMLid="beta_1_tau_2" COPASIkey="ModelValue_44"/>
    <SBMLMap SBMLid="beta_2_tau_2" COPASIkey="ModelValue_45"/>
    <SBMLMap SBMLid="beta_3_tau_2" COPASIkey="ModelValue_46"/>
    <SBMLMap SBMLid="c_e" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="c_n" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="compartment" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="d_c" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="delta_e" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="delta_h" COPASIkey="ModelValue_35"/>
    <SBMLMap SBMLid="delta_n" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="delta_r" COPASIkey="ModelValue_37"/>
    <SBMLMap SBMLid="f_e" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="f_h" COPASIkey="ModelValue_33"/>
    <SBMLMap SBMLid="f_n" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="f_p" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="g_e" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="g_h" COPASIkey="ModelValue_32"/>
    <SBMLMap SBMLid="g_n" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="g_r" COPASIkey="ModelValue_41"/>
    <SBMLMap SBMLid="gamma_2_tau_3" COPASIkey="ModelValue_47"/>
    <SBMLMap SBMLid="h_e" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="h_h" COPASIkey="ModelValue_34"/>
    <SBMLMap SBMLid="h_n" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="k_R" COPASIkey="ModelValue_48"/>
    <SBMLMap SBMLid="k_c" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="k_p" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="lambda_p" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="mu_c" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="mu_p" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="p_e" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="p_h" COPASIkey="ModelValue_31"/>
    <SBMLMap SBMLid="p_n" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="p_r" COPASIkey="ModelValue_40"/>
    <SBMLMap SBMLid="r" COPASIkey="ModelValue_42"/>
    <SBMLMap SBMLid="r_1" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="r_2" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="r_e" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="tau_1_alpha_1" COPASIkey="ModelValue_43"/>
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
    <UnitDefinition key="Unit_34" name="day" symbol="d">
      <Expression>
        86400*s
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
