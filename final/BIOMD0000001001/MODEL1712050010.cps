<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.29 (Build 228) (http://www.copasi.org) at 2021-02-24T16:01:30Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="29" versionDevel="228" copasiSourcesModified="0">
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
    <Function key="Function_40" name="Function for reaction32_3" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:28:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        index_kb_homotrimer*kb_trimmer*pS2_pS2_pS2_c
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_264" name="index_kb_homotrimer" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_263" name="kb_trimmer" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_262" name="pS2_pS2_pS2_c" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Function for reaction8" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-11-05T19:10:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Active_Rec*index_kb_R1*kf_R1_activation
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_265" name="Active_Rec" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_250" name="index_kb_R1" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_261" name="kf_R1_activation" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="Function for reaction45_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        S2_total_C4*(S2_import_to_nuc_C4*kdeg_S2+S2_export_from_nuc_C4*kdeg_S2+kdeg_S2^2)/(2*S2_import_to_nuc_C4+S2_export_from_nuc_C4+kdeg_S2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_268" name="S2_export_from_nuc_C4" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_267" name="S2_import_to_nuc_C4" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_266" name="S2_total_C4" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_269" name="kdeg_S2" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="Function for reaction16" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:28:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Inactive_Rec*index_induced_ligand_deg*kin_deg_Ligand
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_273" name="Inactive_Rec" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_272" name="index_induced_ligand_deg" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_271" name="kin_deg_Ligand" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="Function for reaction21_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        TGFb_R2_endo*index_k_out_2_relative_speed_C4*k_in_R2_C4
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_275" name="TGFb_R2_endo" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_274" name="index_k_out_2_relative_speed_C4" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_270" name="k_in_R2_C4" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="Function for reaction35_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        cyt*S2_c*S2_import_to_nuc_C4
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_278" name="S2_c" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_277" name="S2_import_to_nuc_C4" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_276" name="cyt" order="2" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="Function for reaction38_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        nuc*S4_n*S4_export_from_nuc_C4
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_281" name="S4_export_from_nuc_C4" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_280" name="S4_n" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_279" name="nuc" order="2" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="Function for reaction20_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        TGFb_R1_endo*index_k_out_1_relative_speed_C4*k_in_R1_C4
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_284" name="TGFb_R1_endo" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_283" name="index_k_out_1_relative_speed_C4" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_282" name="k_in_R1_C4" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="Function for reaction15" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-11-09T11:39:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Inactive_Rec*index_seq_kb*kf_Seq_S7_Rec
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_287" name="Inactive_Rec" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_286" name="index_seq_kb" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_285" name="kf_Seq_S7_Rec" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="Function for reaction1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-11-05T19:10:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        TGFb*TGFb_R2_surface*kf_R2_activation/k_medium
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_290" name="TGFb" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_289" name="TGFb_R2_surface" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_288" name="k_medium" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_291" name="kf_R2_activation" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="Function for reaction6" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_50">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-11-05T19:10:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Active_R2*index_kb_R2*kf_R2_activation/k_medium
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_295" name="Active_R2" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_294" name="index_kb_R2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_293" name="k_medium" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_292" name="kf_R2_activation" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="Function for reaction26" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:28:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Active_Rec_endo*S2_c*k_phosphorylation
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_299" name="Active_Rec_endo" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_298" name="S2_c" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_297" name="k_phosphorylation" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="Function for reaction52_3" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_52">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:28:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        nuc*Smad7mRNA1*export_cytoplasm
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_301" name="Smad7mRNA1" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_300" name="export_cytoplasm" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_296" name="nuc" order="2" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="Function for reaction34_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_53">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:28:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        index_kb_homotrimer*kb_trimmer*pS2_pS2_pS2_n
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_304" name="index_kb_homotrimer" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_303" name="kb_trimmer" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_302" name="pS2_pS2_pS2_n" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="Function for reaction2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_54">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-11-09T11:40:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        TGFb*TGFb_R2_surface*kf_R2_activation
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_307" name="TGFb" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_306" name="TGFb_R2_surface" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_305" name="kf_R2_activation" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="Function for reaction36_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_55">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        nuc*S2_n*S2_export_from_nuc_C4
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_310" name="S2_export_from_nuc_C4" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_309" name="S2_n" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_308" name="nuc" order="2" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="Function for reaction53" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_56">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Smad7mRNA*k_S7_protein_C4
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_313" name="Smad7mRNA" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_312" name="k_S7_protein_C4" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="Function for reaction40_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_57">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        nuc*S2_export_from_nuc_C4*pS2_n
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_314" name="S2_export_from_nuc_C4" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_311" name="nuc" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_315" name="pS2_n" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_58" name="Function for reaction37_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_58">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        cyt*S4_c*S4_import_to_nuc_C4
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_318" name="S4_c" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_317" name="S4_import_to_nuc_C4" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_316" name="cyt" order="2" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_59" name="Function for reaction46_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_59">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        S4_total_C4*(S4_import_to_nuc_C4*kdeg_S4+S4_export_from_nuc_C4*kdeg_S4+kdeg_S4^2)/(2*S4_import_to_nuc_C4+S4_export_from_nuc_C4+kdeg_S4)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_321" name="S4_export_from_nuc_C4" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_320" name="S4_import_to_nuc_C4" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_319" name="S4_total_C4" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_322" name="kdeg_S4" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_60" name="Function for reaction44_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_60">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        index_trimer_dephos*k_Dephos_C4*pS2_pS2_S4_n
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_326" name="index_trimer_dephos" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_325" name="k_Dephos_C4" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_324" name="pS2_pS2_S4_n" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_61" name="Function for reaction22_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_61">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Active_Rec*index_active_Rec_internalize_C4*k_in_R1_C4
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_328" name="Active_Rec" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_327" name="index_active_Rec_internalize_C4" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_323" name="k_in_R1_C4" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_62" name="Function for reaction33_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_62">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        index_kf_homotrimer*kf_trimmer*pS2_n^3
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_331" name="index_kf_homotrimer" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_330" name="kf_trimmer" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_329" name="pS2_n" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_63" name="Function for reaction31_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_63">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        index_kf_homotrimer*kf_trimmer*pS2_c^3
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_334" name="index_kf_homotrimer" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_333" name="kf_trimmer" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_332" name="pS2_c" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_64" name="Function for reaction48" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_64">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        R2_total_C4*k_in_R2_C4*kdeg_R2^2/(k_in_R2_C4*kdeg_R2+kdeg_R2^2+index_k_out_2_relative_speed_C4*k_in_R2_C4*kdeg_R2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_337" name="R2_total_C4" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_336" name="index_k_out_2_relative_speed_C4" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_335" name="k_in_R2_C4" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_338" name="kdeg_R2" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_65" name="Function for reaction47_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_65">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        R1_total_C4*k_in_R1_C4*kdeg_R1^2/(k_in_R1_C4*kdeg_R1+kdeg_R1^2+index_k_out_1_relative_speed_C4*k_in_R1_C4*kdeg_R1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_342" name="R1_total_C4" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_341" name="index_k_out_1_relative_speed_C4" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_340" name="k_in_R1_C4" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_339" name="kdeg_R1" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_66" name="Function for reaction51_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_66">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        DRB*S7KD*(mRNA_prod_C4+k_induced_S7_production_C4*pS2_pS2_S4_n^hill_fact1/(K_mran^hill_fact1+pS2_pS2_S4_n^hill_fact1))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_346" name="DRB" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_345" name="K_mran" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_344" name="S7KD" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_343" name="hill_fact1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_347" name="k_induced_S7_production_C4" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_348" name="mRNA_prod_C4" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_349" name="pS2_pS2_S4_n" order="6" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_67" name="Function for reaction4" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_67">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:28:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Active_R2*index_kb_R2*kf_R2_activation
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_356" name="Active_R2" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_355" name="index_kb_R2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_354" name="kf_R2_activation" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_68" name="Function for reaction17" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_68">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:28:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Inactive_Rec*index_induced_R2_deg*kdeg_R2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_351" name="Inactive_Rec" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_352" name="index_induced_R2_deg" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_353" name="kdeg_R2" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_69" name="Function for reaction5" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_69">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-11-05T19:10:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Active_R2*index_kb_R2*kf_R2_activation
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_358" name="Active_R2" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_357" name="index_kb_R2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_350" name="kf_R2_activation" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_70" name="Function for reaction41_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_70">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:28:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        cyt*Trimer_import_to_nuc*pS2_pS2_S4_c
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_361" name="Trimer_import_to_nuc" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_360" name="cyt" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_359" name="pS2_pS2_S4_c" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_71" name="Function for reaction42" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_71">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:28:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        cyt*Trimer_import_to_nuc*pS2_pS2_pS2_c
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_364" name="Trimer_import_to_nuc" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_363" name="cyt" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_362" name="pS2_pS2_pS2_c" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_72" name="Function for reaction39_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_72">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        cyt*S2_import_to_nuc_C4*pS2_c
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_367" name="S2_import_to_nuc_C4" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_366" name="cyt" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_365" name="pS2_c" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_73" name="Function for reaction3" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_73">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:28:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        TGFb*TGFb_R2_surface*kf_R2_activation
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_370" name="TGFb" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_369" name="TGFb_R2_surface" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_368" name="kf_R2_activation" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="Strasen2018 – TGFβ SMAD Signalling Class 4" simulationType="time" timeUnit="min" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="#" type="stochastic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:biomodels.db:MODEL1712050010"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0007179"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0038105"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:mamo:MAMO_0000046"/>
    <bqbiol:hasTaxon rdf:resource="urn:miriam:taxonomy:9606"/>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:29371237"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-09-07T17:00:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>tiwarik@babraham.ac.uk</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Tiwari</vCard:Family>
            <vCard:Given>Krishna</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>Babraham Institute</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
    <CopasiMT:occursIn rdf:resource="urn:miriam:bto:BTO:0001211"/>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="cyt" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C13226" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_1" name="nuc" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_1">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C13197" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="TGFb_TGFR1_surface" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0070021" />
        <rdf:li rdf:resource="http://identifiers.org/ncit/C13376" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P01137" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P36897" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[R1_total_C4],Reference=InitialValue>*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_R1],Reference=InitialValue>*(&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_R1],Reference=InitialValue>+&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[index_k_out_1_relative_speed_C4],Reference=InitialValue>*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[k_in_R1_C4],Reference=InitialValue>)/(&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[k_in_R1_C4],Reference=InitialValue>*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_R1],Reference=InitialValue>+&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_R1],Reference=InitialValue>^2+&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[index_k_out_1_relative_speed_C4],Reference=InitialValue>*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[k_in_R1_C4],Reference=InitialValue>*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_R1],Reference=InitialValue>)
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="TGFb_TGFR2_surface" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0070021" />
        <rdf:li rdf:resource="http://identifiers.org/ncit/C13376" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P01137" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37173" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[R2_total_C4],Reference=InitialValue>*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_R2],Reference=InitialValue>*(&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_R2],Reference=InitialValue>+&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[index_k_out_2_relative_speed_C4],Reference=InitialValue>*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[k_in_R2_C4],Reference=InitialValue>)/(&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[k_in_R2_C4],Reference=InitialValue>*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_R2],Reference=InitialValue>+&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_R2],Reference=InitialValue>^2+&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[index_k_out_2_relative_speed_C4],Reference=InitialValue>*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[k_in_R2_C4],Reference=InitialValue>*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_R2],Reference=InitialValue>)
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="TGFb_TGFR1_endo" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016197" />
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0070021" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P01137" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P36897" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[R1_total_C4],Reference=InitialValue>*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[k_in_R1_C4],Reference=InitialValue>*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_R1],Reference=InitialValue>/(&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[k_in_R1_C4],Reference=InitialValue>*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_R1],Reference=InitialValue>+&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_R1],Reference=InitialValue>^2+&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[index_k_out_1_relative_speed_C4],Reference=InitialValue>*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[k_in_R1_C4],Reference=InitialValue>*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_R1],Reference=InitialValue>)
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="TGFb_TGFR2_endo" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016197" />
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0070021" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P01137" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37173" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[R2_total_C4],Reference=InitialValue>*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[k_in_R2_C4],Reference=InitialValue>*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_R2],Reference=InitialValue>/(&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[k_in_R2_C4],Reference=InitialValue>*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_R2],Reference=InitialValue>+&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_R2],Reference=InitialValue>^2+&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[index_k_out_2_relative_speed_C4],Reference=InitialValue>*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[k_in_R2_C4],Reference=InitialValue>*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_R2],Reference=InitialValue>)
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="TGFb" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P01137" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="TGFb_In" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016197" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P01137" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="Active_TGFR2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C45329" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37173" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="Active_TGFb-TGFR1-TGFR2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C45329" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P01137" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P36897" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37173" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="Active_TGFb-TGFR1-TGFR2_endo" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_8">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016197" />
        <rdf:li rdf:resource="http://identifiers.org/ncit/C45329" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P01137" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P36897" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37173" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="Inactive_TGFb-TGFR1-TGFR2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C154407" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P01137" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P36897" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37173" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="pSMAD2_c" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_10">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C13226" />
        <rdf:li rdf:resource="http://identifiers.org/pr/PR:000037070" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q15796" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="SMAD2_c" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C13226" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q15796" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[S2_total_C4],Reference=InitialValue>*(&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[S2_export_from_nuc_C4],Reference=InitialValue>+&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_S2],Reference=InitialValue>)/(2*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[S2_import_to_nuc_C4],Reference=InitialValue>+&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[S2_export_from_nuc_C4],Reference=InitialValue>+&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_S2],Reference=InitialValue>)
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="SMAD4_c" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_12">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C13226" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q13485" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[S4_total_C4],Reference=InitialValue>*(&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[S4_export_from_nuc_C4],Reference=InitialValue>+&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_S4],Reference=InitialValue>)/(2*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[S4_import_to_nuc_C4],Reference=InitialValue>+&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[S4_export_from_nuc_C4],Reference=InitialValue>+&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_S4],Reference=InitialValue>)
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="pS2_pS2_S4_c" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C13226" />
        <rdf:li rdf:resource="http://identifiers.org/pr/PR:000037070" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q13485" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q15796" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="pS2_pS2_pS2_c" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_14">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0070206" />
        <rdf:li rdf:resource="http://identifiers.org/ncit/C13226" />
        <rdf:li rdf:resource="http://identifiers.org/pr/PR:000037070" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q15796" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="SMAD7_mRNA" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_15">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/bao/274" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O15105" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[export_cytoplasm],Reference=InitialValue>*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[mRNA_prod_C4],Reference=InitialValue>/(2*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kmRNAdeg_S7],Reference=InitialValue>*(&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[export_cytoplasm],Reference=InitialValue>+&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kmRNA1deg_S7],Reference=InitialValue>))
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_16" name="SMAD7_mRNA1" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_16">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O15105" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[mRNA_prod_C4],Reference=InitialValue>/(&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[export_cytoplasm],Reference=InitialValue>+&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kmRNA1deg_S7],Reference=InitialValue>)
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="SMAD7" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_17">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/bao/274" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O15105" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[export_cytoplasm],Reference=InitialValue>*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[k_S7_protein_C4],Reference=InitialValue>*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[mRNA_prod_C4],Reference=InitialValue>/(2*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_S7],Reference=InitialValue>*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kmRNAdeg_S7],Reference=InitialValue>*(&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[export_cytoplasm],Reference=InitialValue>+&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kmRNA1deg_S7],Reference=InitialValue>))
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_18" name="pSMAD2_n" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_18">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C13197" />
        <rdf:li rdf:resource="http://identifiers.org/pr/PR:000037070" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q15796" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="pS2_pS2_S4_n" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_19">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C13197" />
        <rdf:li rdf:resource="http://identifiers.org/pr/PR:000037070" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q13485" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q15796" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_20" name="pS2_pS2_pS2_n" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_20">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C13197" />
        <rdf:li rdf:resource="http://identifiers.org/pr/PR:000037070" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q15796" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_21" name="SMAD2_n" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_21">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C13197" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q15796" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          2*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[S2_total_C4],Reference=InitialValue>*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[S2_import_to_nuc_C4],Reference=InitialValue>/(2*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[S2_import_to_nuc_C4],Reference=InitialValue>+&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[S2_export_from_nuc_C4],Reference=InitialValue>+&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_S2],Reference=InitialValue>)
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_22" name="SMAD4_n" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_22">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C13197" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q13485" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          2*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[S4_total_C4],Reference=InitialValue>*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[S4_import_to_nuc_C4],Reference=InitialValue>/(2*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[S4_import_to_nuc_C4],Reference=InitialValue>+&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[S4_export_from_nuc_C4],Reference=InitialValue>+&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_S4],Reference=InitialValue>)
        </InitialExpression>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="DRB" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-09-07T17:03:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="K_mran" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="R1_total_C4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="R2_total_C4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="S2_export_from_nuc_C4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="S2_import_to_nuc_C4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="S2_total_C4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="S4_export_from_nuc_C4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="S4_import_to_nuc_C4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="S4_total_C4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="S7KD" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-09-07T17:03:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="Trimer_import_to_nuc" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="export_cytoplasm" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="hill_fact1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="index_active_Rec_internalize_C4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="index_induced_R2_deg" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="index_induced_ligand_deg" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="index_k_out_1_relative_speed_C4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_18" name="index_k_out_2_relative_speed_C4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_19" name="index_kb_R1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_20" name="index_kb_R2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_21" name="index_kb_homotrimer" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_22" name="index_kf_homotrimer" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_23" name="index_seq_kb" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_24" name="index_trimer_dephos" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_25" name="k_Dephos_C4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-10-17T17:55:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_26" name="k_S7_protein_C4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_27" name="k_disso_Active_Rec" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_28" name="k_in_R1_C4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_29" name="k_in_R2_C4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_30" name="k_induced_S7_production_C4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_31" name="k_medium" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_32" name="k_phosphorylation" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_33" name="kb_trimmer" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_34" name="kdeg_R1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_34">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_35" name="kdeg_R2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_36" name="kdeg_S2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_36">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_37" name="kdeg_S4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_38" name="kdeg_S7" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_38">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_39" name="kf_R1_activation" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_40" name="kf_R2_activation" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-09-07T17:02:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_41" name="kf_Seq_S7_Rec" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_42" name="kf_trimmer" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_43" name="kin_deg_Ligand" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_44" name="kmRNA1deg_S7" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_45" name="kmRNAdeg_S7" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_46" name="kout_deg_Ligand_100pM" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_47" name="mRNA_prod_C4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-10T14:29:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_48" name="NUC/CYT SMAD2" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-09-07T17:00:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (2*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[nuc],Vector=Metabolites[pS2_pS2_S4_n],Reference=Concentration>+&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[nuc],Vector=Metabolites[pSMAD2_n],Reference=Concentration>+&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[nuc],Vector=Metabolites[SMAD2_n],Reference=Concentration>+3*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[nuc],Vector=Metabolites[pS2_pS2_pS2_n],Reference=Concentration>)/(2*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt],Vector=Metabolites[pS2_pS2_S4_c],Reference=Concentration>+&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt],Vector=Metabolites[pSMAD2_c],Reference=Concentration>+&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt],Vector=Metabolites[SMAD2_c],Reference=Concentration>+3*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt],Vector=Metabolites[pS2_pS2_pS2_c],Reference=Concentration>)
        </Expression>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="reaction1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C20139" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5390" name="k_medium" value="2e+06"/>
          <Constant key="Parameter_5389" name="kf_R2_activation" value="4.95559"/>
        </ListOfConstants>
        <KineticLaw function="Function_49" unitType="Default" scalingCompartment="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="ModelValue_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="reaction2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0001881" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5388" name="kf_R2_activation" value="4.95559"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="reaction3" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C40702" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5387" name="kf_R2_activation" value="4.95559"/>
        </ListOfConstants>
        <KineticLaw function="Function_73" unitType="Default" scalingCompartment="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_370">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_369">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_368">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="reaction4" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0032801" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5386" name="index_kb_R2" value="8.70499"/>
          <Constant key="Parameter_5385" name="kf_R2_activation" value="4.95559"/>
        </ListOfConstants>
        <KineticLaw function="Function_67" unitType="Default" scalingCompartment="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_356">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_355">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_354">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="reaction5" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0034394" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5384" name="index_kb_R2" value="8.70499"/>
          <Constant key="Parameter_5383" name="kf_R2_activation" value="4.95559"/>
        </ListOfConstants>
        <KineticLaw function="Function_69" unitType="Default" scalingCompartment="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_358">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_357">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_350">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="reaction6" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000393" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5382" name="index_kb_R2" value="8.70499"/>
          <Constant key="Parameter_5381" name="k_medium" value="2e+06"/>
          <Constant key="Parameter_5380" name="kf_R2_activation" value="4.95559"/>
        </ListOfConstants>
        <KineticLaw function="Function_50" unitType="Default" scalingCompartment="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="ModelValue_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="reaction7" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000297" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5379" name="k1" value="4.98549"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_0"/>
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="reaction8" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000180" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5378" name="index_kb_R1" value="1.6129"/>
          <Constant key="Parameter_5377" name="kf_R1_activation" value="4.98549"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="ModelValue_39"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="reaction9" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0001881" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5376" name="k1" value="0.00100039"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="reaction10" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0001881" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5375" name="k1" value="0.0586584"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="reaction11" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0001881" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5374" name="k1" value="0.720182"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="reaction12" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5373" name="k1" value="0.0586584"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="reaction13" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5372" name="k1" value="0.00100039"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="reaction14" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000665" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5371" name="k1" value="0.882455"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_7"/>
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="reaction15" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0001881" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5370" name="index_seq_kb" value="0.000865132"/>
          <Constant key="Parameter_5369" name="kf_Seq_S7_Rec" value="0.882455"/>
        </ListOfConstants>
        <KineticLaw function="Function_48" unitType="Default" scalingCompartment="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="reaction16" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_15">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0001881" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5368" name="index_induced_ligand_deg" value="2.72107"/>
          <Constant key="Parameter_5367" name="kin_deg_Ligand" value="0.720182"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_43"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="reaction17" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_16">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0001881" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5366" name="index_induced_R2_deg" value="1.00038"/>
          <Constant key="Parameter_5365" name="kdeg_R2" value="0.00100039"/>
        </ListOfConstants>
        <KineticLaw function="Function_68" unitType="Default" scalingCompartment="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_351">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_352">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_353">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="reaction18" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_17">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0048227" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5364" name="k1" value="0.40074"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="reaction19" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_18">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0048227" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5363" name="k1" value="1.15271"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="reaction20" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_19">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:1990126" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5687" name="index_k_out_1_relative_speed_C4" value="0.284103"/>
          <Constant key="Parameter_5688" name="k_in_R1_C4" value="0.40074"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default" scalingCompartment="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="reaction21" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_20">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:1990126" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5686" name="index_k_out_2_relative_speed_C4" value="0.13081"/>
          <Constant key="Parameter_5689" name="k_in_R2_C4" value="1.15271"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="reaction22" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_21">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0048227" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
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
          <Constant key="Parameter_5716" name="index_active_Rec_internalize_C4" value="0.922504"/>
          <Constant key="Parameter_5717" name="k_in_R1_C4" value="0.40074"/>
        </ListOfConstants>
        <KineticLaw function="Function_61" unitType="Default" scalingCompartment="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_323">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="reaction23" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_22">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0001881" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5715" name="k1" value="0.0010394"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="reaction24" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_23">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5718" name="k1" value="0.720182"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="reaction25" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_24">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5700" name="k1" value="0.000361896"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="reaction26" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_25">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000216" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5701" name="k_phosphorylation" value="0.070156"/>
        </ListOfConstants>
        <KineticLaw function="Function_51" unitType="Default" scalingCompartment="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="ModelValue_32"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_26" name="reaction27" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_26">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0070208" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="2"/>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5699" name="k1" value="4.81425"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_10"/>
              <SourceParameter reference="Metabolite_10"/>
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_27" name="reaction28" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_27">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000180" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="2"/>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5702" name="k1" value="1.60773"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_28" name="reaction29" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_28">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0070208" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_18" stoichiometry="2"/>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5362" name="k1" value="4.81425"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[nuc]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_18"/>
              <SourceParameter reference="Metabolite_18"/>
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_29" name="reaction30" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_29">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000180" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_18" stoichiometry="2"/>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5361" name="k1" value="1.60773"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[nuc]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_30" name="reaction31" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_30">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0070207" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="3"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5360" name="index_kf_homotrimer" value="4.48579"/>
          <Constant key="Parameter_5359" name="kf_trimmer" value="4.81425"/>
        </ListOfConstants>
        <KineticLaw function="Function_63" unitType="Default" scalingCompartment="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="ModelValue_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_332">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_31" name="reaction32" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_31">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0070207" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="3"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5358" name="index_kb_homotrimer" value="0.0163922"/>
          <Constant key="Parameter_5357" name="kb_trimmer" value="1.60773"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_32" name="reaction33" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_32">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000180" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_18" stoichiometry="3"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5356" name="index_kf_homotrimer" value="4.48579"/>
          <Constant key="Parameter_5355" name="kf_trimmer" value="4.81425"/>
        </ListOfConstants>
        <KineticLaw function="Function_62" unitType="Default" scalingCompartment="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[nuc]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="ModelValue_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_33" name="reaction34" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_33">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000180" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_18" stoichiometry="3"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5354" name="index_kb_homotrimer" value="0.0163922"/>
          <Constant key="Parameter_5353" name="kb_trimmer" value="1.60773"/>
        </ListOfConstants>
        <KineticLaw function="Function_53" unitType="Default" scalingCompartment="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[nuc]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_34" name="reaction35" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_34">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006606" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5352" name="S2_import_to_nuc_C4" value="0.52225"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_35" name="reaction36" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_35">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006611" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5351" name="S2_export_from_nuc_C4" value="3.10181"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_309">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_36" name="reaction37" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_36">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006606" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5350" name="S4_import_to_nuc_C4" value="0.0251256"/>
        </ListOfConstants>
        <KineticLaw function="Function_58" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_37" name="reaction38" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_37">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006611" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5349" name="S4_export_from_nuc_C4" value="0.233731"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_38" name="reaction39" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_38">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006606" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5348" name="S2_import_to_nuc_C4" value="0.52225"/>
        </ListOfConstants>
        <KineticLaw function="Function_72" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_367">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_366">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_365">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_39" name="reaction40" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_39">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006611" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5347" name="S2_export_from_nuc_C4" value="3.10181"/>
        </ListOfConstants>
        <KineticLaw function="Function_57" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_40" name="reaction41" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_40">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006606" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5655" name="Trimer_import_to_nuc" value="0.144035"/>
        </ListOfConstants>
        <KineticLaw function="Function_70" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_359">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_41" name="reaction42" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_41">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006606" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5656" name="Trimer_import_to_nuc" value="0.144035"/>
        </ListOfConstants>
        <KineticLaw function="Function_71" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_364">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_363">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_362">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_42" name="reaction43" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_42">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000330" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5654" name="k1" value="0.0704492"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[nuc]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_43" name="reaction44" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_43">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000180" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5657" name="index_trimer_dephos" value="2.61014"/>
          <Constant key="Parameter_5346" name="k_Dephos_C4" value="0.0704492"/>
        </ListOfConstants>
        <KineticLaw function="Function_60" unitType="Default" scalingCompartment="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[nuc]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_325">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_324">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_44" name="reaction45" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_44">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000393" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5345" name="S2_export_from_nuc_C4" value="3.10181"/>
          <Constant key="Parameter_5344" name="S2_import_to_nuc_C4" value="0.52225"/>
          <Constant key="Parameter_5343" name="S2_total_C4" value="1315.13"/>
          <Constant key="Parameter_5342" name="kdeg_S2" value="0.000514084"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_45" name="reaction46" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_45">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000393" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5341" name="S4_export_from_nuc_C4" value="0.233731"/>
          <Constant key="Parameter_5340" name="S4_import_to_nuc_C4" value="0.0251256"/>
          <Constant key="Parameter_5339" name="S4_total_C4" value="389.538"/>
          <Constant key="Parameter_5338" name="kdeg_S4" value="0.00480203"/>
        </ListOfConstants>
        <KineticLaw function="Function_59" unitType="Default" scalingCompartment="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_320">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_319">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_46" name="reaction47" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_46">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000393" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5337" name="R1_total_C4" value="24.5066"/>
          <Constant key="Parameter_5336" name="index_k_out_1_relative_speed_C4" value="0.284103"/>
          <Constant key="Parameter_5335" name="k_in_R1_C4" value="0.40074"/>
          <Constant key="Parameter_5334" name="kdeg_R1" value="0.0586584"/>
        </ListOfConstants>
        <KineticLaw function="Function_65" unitType="Default" scalingCompartment="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_342">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_341">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_340">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_47" name="reaction48" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_47">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000393" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5333" name="R2_total_C4" value="24.4815"/>
          <Constant key="Parameter_5332" name="index_k_out_2_relative_speed_C4" value="0.13081"/>
          <Constant key="Parameter_5331" name="k_in_R2_C4" value="1.15271"/>
          <Constant key="Parameter_5330" name="kdeg_R2" value="0.00100039"/>
        </ListOfConstants>
        <KineticLaw function="Function_64" unitType="Default" scalingCompartment="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_338">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_48" name="reaction51" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_48">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0009299" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5329" name="DRB" value="1"/>
          <Constant key="Parameter_5328" name="K_mran" value="223.586"/>
          <Constant key="Parameter_5327" name="S7KD" value="1"/>
          <Constant key="Parameter_5326" name="hill_fact1" value="3.9863"/>
          <Constant key="Parameter_5320" name="k_induced_S7_production_C4" value="9.74384"/>
          <Constant key="Parameter_5319" name="mRNA_prod_C4" value="0.00695852"/>
        </ListOfConstants>
        <KineticLaw function="Function_66" unitType="Default" scalingCompartment="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[nuc]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_346">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_345">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_344">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_343">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_347">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_348">
              <SourceParameter reference="ModelValue_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_349">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_49" name="reaction52" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_49">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006397" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5318" name="export_cytoplasm" value="0.0304373"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_50" name="reaction53" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_50">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0009299" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5317" name="k_S7_protein_C4" value="0.191334"/>
        </ListOfConstants>
        <KineticLaw function="Function_56" unitType="Default" scalingCompartment="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_313">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_312">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_51" name="reaction54" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_51">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5316" name="k1" value="0.000514084"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_52" name="reaction55" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_52">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5315" name="k1" value="0.000514084"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[nuc]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_53" name="reaction56" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_53">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5314" name="k1" value="0.000514084"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[nuc]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_54" name="reaction57" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_54">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5313" name="k1" value="0.000514084"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_55" name="reaction58" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_55">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5312" name="k1" value="0.00480203"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_56" name="reaction59" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_56">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5311" name="k1" value="0.00480203"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[nuc]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_57" name="reaction60" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_57">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000180" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5310" name="k1" value="0.000514084"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_58" name="reaction61" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_58">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000180" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="2"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5309" name="k1" value="0.00480203"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_59" name="reaction62" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_59">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000180" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="2"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5308" name="k1" value="0.000514084"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_60" name="reaction63" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_60">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000180" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5307" name="k1" value="0.000514084"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[nuc]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_61" name="reaction64" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_61">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000180" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_18" stoichiometry="2"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5306" name="k1" value="0.00480203"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[nuc]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_62" name="reaction65" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_62">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000180" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_18" stoichiometry="2"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5305" name="k1" value="0.000514084"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[nuc]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_63" name="reaction66" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_63">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5304" name="k1" value="0.00523181"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[nuc]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_64" name="reaction67" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_64">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5303" name="k1" value="0.0990158"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_65" name="reaction68" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_65">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5302" name="k1" value="0.00102402"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_1">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-24T16:00:55Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt]" value="2" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[nuc]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt],Vector=Metabolites[TGFb_TGFR1_surface]" value="14.749694419591261" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[R1_total_C4],Reference=InitialValue>*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_R1],Reference=InitialValue>*(&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_R1],Reference=InitialValue>+&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[index_k_out_1_relative_speed_C4],Reference=InitialValue>*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[k_in_R1_C4],Reference=InitialValue>)/(&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[k_in_R1_C4],Reference=InitialValue>*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_R1],Reference=InitialValue>+&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_R1],Reference=InitialValue>^2+&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[index_k_out_1_relative_speed_C4],Reference=InitialValue>*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[k_in_R1_C4],Reference=InitialValue>*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_R1],Reference=InitialValue>)
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt],Vector=Metabolites[TGFb_TGFR2_surface]" value="5.6971580698516346" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[R2_total_C4],Reference=InitialValue>*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_R2],Reference=InitialValue>*(&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_R2],Reference=InitialValue>+&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[index_k_out_2_relative_speed_C4],Reference=InitialValue>*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[k_in_R2_C4],Reference=InitialValue>)/(&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[k_in_R2_C4],Reference=InitialValue>*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_R2],Reference=InitialValue>+&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_R2],Reference=InitialValue>^2+&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[index_k_out_2_relative_speed_C4],Reference=InitialValue>*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[k_in_R2_C4],Reference=InitialValue>*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_R2],Reference=InitialValue>)
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt],Vector=Metabolites[TGFb_TGFR1_endo]" value="34.263462961931545" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[R1_total_C4],Reference=InitialValue>*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[k_in_R1_C4],Reference=InitialValue>*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_R1],Reference=InitialValue>/(&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[k_in_R1_C4],Reference=InitialValue>*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_R1],Reference=InitialValue>+&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_R1],Reference=InitialValue>^2+&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[index_k_out_1_relative_speed_C4],Reference=InitialValue>*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[k_in_R1_C4],Reference=InitialValue>*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_R1],Reference=InitialValue>)
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt],Vector=Metabolites[TGFb_TGFR2_endo]" value="43.265780547132564" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[R2_total_C4],Reference=InitialValue>*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[k_in_R2_C4],Reference=InitialValue>*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_R2],Reference=InitialValue>/(&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[k_in_R2_C4],Reference=InitialValue>*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_R2],Reference=InitialValue>+&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_R2],Reference=InitialValue>^2+&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[index_k_out_2_relative_speed_C4],Reference=InitialValue>*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[k_in_R2_C4],Reference=InitialValue>*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_R2],Reference=InitialValue>)
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt],Vector=Metabolites[TGFb]" value="200" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt],Vector=Metabolites[TGFb_In]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt],Vector=Metabolites[Active_TGFR2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt],Vector=Metabolites[Active_TGFb-TGFR1-TGFR2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt],Vector=Metabolites[Active_TGFb-TGFR1-TGFR2_endo]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt],Vector=Metabolites[Inactive_TGFb-TGFR1-TGFR2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt],Vector=Metabolites[pSMAD2_c]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt],Vector=Metabolites[SMAD2_c]" value="1967.7535593664375" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[S2_total_C4],Reference=InitialValue>*(&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[S2_export_from_nuc_C4],Reference=InitialValue>+&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_S2],Reference=InitialValue>)/(2*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[S2_import_to_nuc_C4],Reference=InitialValue>+&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[S2_export_from_nuc_C4],Reference=InitialValue>+&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_S2],Reference=InitialValue>)
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt],Vector=Metabolites[SMAD4_c]" value="643.5098920978578" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[S4_total_C4],Reference=InitialValue>*(&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[S4_export_from_nuc_C4],Reference=InitialValue>+&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_S4],Reference=InitialValue>)/(2*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[S4_import_to_nuc_C4],Reference=InitialValue>+&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[S4_export_from_nuc_C4],Reference=InitialValue>+&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_S4],Reference=InitialValue>)
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt],Vector=Metabolites[pS2_pS2_S4_c]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt],Vector=Metabolites[pS2_pS2_pS2_c]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt],Vector=Metabolites[SMAD7_mRNA]" value="0.059968909293759393" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[export_cytoplasm],Reference=InitialValue>*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[mRNA_prod_C4],Reference=InitialValue>/(2*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kmRNAdeg_S7],Reference=InitialValue>*(&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[export_cytoplasm],Reference=InitialValue>+&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kmRNA1deg_S7],Reference=InitialValue>))
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[nuc],Vector=Metabolites[SMAD7_mRNA1]" value="0.1950853287373667" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[mRNA_prod_C4],Reference=InitialValue>/(&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[export_cytoplasm],Reference=InitialValue>+&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kmRNA1deg_S7],Reference=InitialValue>)
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[cyt],Vector=Metabolites[SMAD7]" value="11.204940766676184" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[export_cytoplasm],Reference=InitialValue>*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[k_S7_protein_C4],Reference=InitialValue>*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[mRNA_prod_C4],Reference=InitialValue>/(2*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_S7],Reference=InitialValue>*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kmRNAdeg_S7],Reference=InitialValue>*(&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[export_cytoplasm],Reference=InitialValue>+&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kmRNA1deg_S7],Reference=InitialValue>))
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[nuc],Vector=Metabolites[pSMAD2_n]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[nuc],Vector=Metabolites[pS2_pS2_S4_n]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[nuc],Vector=Metabolites[pS2_pS2_pS2_n]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[nuc],Vector=Metabolites[SMAD2_n]" value="331.25522707752117" type="Species" simulationType="reactions">
            <InitialExpression>
              2*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[S2_total_C4],Reference=InitialValue>*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[S2_import_to_nuc_C4],Reference=InitialValue>/(2*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[S2_import_to_nuc_C4],Reference=InitialValue>+&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[S2_export_from_nuc_C4],Reference=InitialValue>+&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_S2],Reference=InitialValue>)
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Compartments[nuc],Vector=Metabolites[SMAD4_n]" value="67.783370936197116" type="Species" simulationType="reactions">
            <InitialExpression>
              2*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[S4_total_C4],Reference=InitialValue>*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[S4_import_to_nuc_C4],Reference=InitialValue>/(2*&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[S4_import_to_nuc_C4],Reference=InitialValue>+&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[S4_export_from_nuc_C4],Reference=InitialValue>+&lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_S4],Reference=InitialValue>)
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[DRB]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[K_mran]" value="223.58600000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[R1_total_C4]" value="24.506578690761401" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[R2_total_C4]" value="24.481469308492098" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[S2_export_from_nuc_C4]" value="3.1018054766890999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[S2_import_to_nuc_C4]" value="0.52225013933046305" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[S2_total_C4]" value="1315.1320067607401" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[S4_export_from_nuc_C4]" value="0.23373067315266" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[S4_import_to_nuc_C4]" value="0.025125566355657401" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[S4_total_C4]" value="389.53831698512602" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[S7KD]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[Trimer_import_to_nuc]" value="0.144035002432848" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[export_cytoplasm]" value="0.030437296130775102" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[hill_fact1]" value="3.9863022459498301" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[index_active_Rec_internalize_C4]" value="0.922503805466932" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[index_induced_R2_deg]" value="1.0003777686631199" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[index_induced_ligand_deg]" value="2.7210651363409801" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[index_k_out_1_relative_speed_C4]" value="0.28410342378490999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[index_k_out_2_relative_speed_C4]" value="0.13081029215514001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[index_kb_R1]" value="1.61290474569122" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[index_kb_R2]" value="8.7049885413669408" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[index_kb_homotrimer]" value="0.0163921522930962" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[index_kf_homotrimer]" value="4.4857919268227002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[index_seq_kb]" value="0.00086513194482801205" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[index_trimer_dephos]" value="2.61013820571304" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[k_Dephos_C4]" value="0.070449221762534694" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[k_S7_protein_C4]" value="0.191333551016171" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[k_disso_Active_Rec]" value="0.0010394041135836701" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[k_in_R1_C4]" value="0.40073987230225999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[k_in_R2_C4]" value="1.1527121689746" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[k_induced_S7_production_C4]" value="9.7438352836426496" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[k_medium]" value="2000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[k_phosphorylation]" value="0.070156019177215201" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kb_trimmer]" value="1.6077346670684001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_R1]" value="0.058658449571396799" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_R2]" value="0.0010003937382471999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_S2]" value="0.00051408401217546099" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_S4]" value="0.0048020269936005699" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_S7]" value="0.0010240182973448499" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kf_R1_activation]" value="4.9854854807603299" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kf_R2_activation]" value="4.9555949670165704" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kf_Seq_S7_Rec]" value="0.88245503810602199" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kf_trimmer]" value="4.81424700307387" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kin_deg_Ligand]" value="0.72018223463531394" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kmRNA1deg_S7]" value="0.0052318143990062902" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kmRNAdeg_S7]" value="0.099015806548390206" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kout_deg_Ligand_100pM]" value="0.00036189621999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[mRNA_prod_C4]" value="0.0069585201534718699" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[NUC/CYT SMAD2]" value="0.33668365177210124" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction1],ParameterGroup=Parameters,Parameter=k_medium" value="2000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[k_medium],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction1],ParameterGroup=Parameters,Parameter=kf_R2_activation" value="4.9555949670165704" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kf_R2_activation],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction2],ParameterGroup=Parameters,Parameter=kf_R2_activation" value="4.9555949670165704" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kf_R2_activation],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction3],ParameterGroup=Parameters,Parameter=kf_R2_activation" value="4.9555949670165704" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kf_R2_activation],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction4],ParameterGroup=Parameters,Parameter=index_kb_R2" value="8.7049885413669408" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[index_kb_R2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction4],ParameterGroup=Parameters,Parameter=kf_R2_activation" value="4.9555949670165704" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kf_R2_activation],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction5]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction5],ParameterGroup=Parameters,Parameter=index_kb_R2" value="8.7049885413669408" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[index_kb_R2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction5],ParameterGroup=Parameters,Parameter=kf_R2_activation" value="4.9555949670165704" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kf_R2_activation],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction6]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction6],ParameterGroup=Parameters,Parameter=index_kb_R2" value="8.7049885413669408" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[index_kb_R2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction6],ParameterGroup=Parameters,Parameter=k_medium" value="2000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[k_medium],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction6],ParameterGroup=Parameters,Parameter=kf_R2_activation" value="4.9555949670165704" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kf_R2_activation],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction7]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction7],ParameterGroup=Parameters,Parameter=k1" value="4.9854854807603299" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kf_R1_activation],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction8]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction8],ParameterGroup=Parameters,Parameter=index_kb_R1" value="1.61290474569122" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[index_kb_R1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction8],ParameterGroup=Parameters,Parameter=kf_R1_activation" value="4.9854854807603299" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kf_R1_activation],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction9]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction9],ParameterGroup=Parameters,Parameter=k1" value="0.0010003937382471999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_R2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction10]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction10],ParameterGroup=Parameters,Parameter=k1" value="0.058658449571396799" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_R1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction11]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction11],ParameterGroup=Parameters,Parameter=k1" value="0.72018223463531394" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kin_deg_Ligand],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction12]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction12],ParameterGroup=Parameters,Parameter=k1" value="0.058658449571396799" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_R1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction13],ParameterGroup=Parameters,Parameter=k1" value="0.0010003937382471999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_R2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction14]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction14],ParameterGroup=Parameters,Parameter=k1" value="0.88245503810602199" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kf_Seq_S7_Rec],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction15]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction15],ParameterGroup=Parameters,Parameter=index_seq_kb" value="0.00086513194482801205" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[index_seq_kb],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction15],ParameterGroup=Parameters,Parameter=kf_Seq_S7_Rec" value="0.88245503810602199" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kf_Seq_S7_Rec],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction16]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction16],ParameterGroup=Parameters,Parameter=index_induced_ligand_deg" value="2.7210651363409801" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[index_induced_ligand_deg],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction16],ParameterGroup=Parameters,Parameter=kin_deg_Ligand" value="0.72018223463531394" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kin_deg_Ligand],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction17]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction17],ParameterGroup=Parameters,Parameter=index_induced_R2_deg" value="1.0003777686631199" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[index_induced_R2_deg],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction17],ParameterGroup=Parameters,Parameter=kdeg_R2" value="0.0010003937382471999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_R2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction18]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction18],ParameterGroup=Parameters,Parameter=k1" value="0.40073987230225999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[k_in_R1_C4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction19]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction19],ParameterGroup=Parameters,Parameter=k1" value="1.1527121689746" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[k_in_R2_C4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction20]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction20],ParameterGroup=Parameters,Parameter=index_k_out_1_relative_speed_C4" value="0.28410342378490999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[index_k_out_1_relative_speed_C4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction20],ParameterGroup=Parameters,Parameter=k_in_R1_C4" value="0.40073987230225999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[k_in_R1_C4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction21]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction21],ParameterGroup=Parameters,Parameter=index_k_out_2_relative_speed_C4" value="0.13081029215514001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[index_k_out_2_relative_speed_C4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction21],ParameterGroup=Parameters,Parameter=k_in_R2_C4" value="1.1527121689746" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[k_in_R2_C4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction22]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction22],ParameterGroup=Parameters,Parameter=index_active_Rec_internalize_C4" value="0.922503805466932" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[index_active_Rec_internalize_C4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction22],ParameterGroup=Parameters,Parameter=k_in_R1_C4" value="0.40073987230225999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[k_in_R1_C4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction23]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction23],ParameterGroup=Parameters,Parameter=k1" value="0.0010394041135836701" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[k_disso_Active_Rec],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction24]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction24],ParameterGroup=Parameters,Parameter=k1" value="0.72018223463531394" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kin_deg_Ligand],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction25]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction25],ParameterGroup=Parameters,Parameter=k1" value="0.00036189621999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kout_deg_Ligand_100pM],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction26]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction26],ParameterGroup=Parameters,Parameter=k_phosphorylation" value="0.070156019177215201" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[k_phosphorylation],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction27]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction27],ParameterGroup=Parameters,Parameter=k1" value="4.81424700307387" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kf_trimmer],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction28]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction28],ParameterGroup=Parameters,Parameter=k1" value="1.6077346670684001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kb_trimmer],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction29]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction29],ParameterGroup=Parameters,Parameter=k1" value="4.81424700307387" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kf_trimmer],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction30]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction30],ParameterGroup=Parameters,Parameter=k1" value="1.6077346670684001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kb_trimmer],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction31]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction31],ParameterGroup=Parameters,Parameter=index_kf_homotrimer" value="4.4857919268227002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[index_kf_homotrimer],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction31],ParameterGroup=Parameters,Parameter=kf_trimmer" value="4.81424700307387" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kf_trimmer],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction32]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction32],ParameterGroup=Parameters,Parameter=index_kb_homotrimer" value="0.0163921522930962" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[index_kb_homotrimer],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction32],ParameterGroup=Parameters,Parameter=kb_trimmer" value="1.6077346670684001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kb_trimmer],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction33]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction33],ParameterGroup=Parameters,Parameter=index_kf_homotrimer" value="4.4857919268227002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[index_kf_homotrimer],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction33],ParameterGroup=Parameters,Parameter=kf_trimmer" value="4.81424700307387" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kf_trimmer],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction34]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction34],ParameterGroup=Parameters,Parameter=index_kb_homotrimer" value="0.0163921522930962" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[index_kb_homotrimer],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction34],ParameterGroup=Parameters,Parameter=kb_trimmer" value="1.6077346670684001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kb_trimmer],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction35]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction35],ParameterGroup=Parameters,Parameter=S2_import_to_nuc_C4" value="0.52225013933046305" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[S2_import_to_nuc_C4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction36]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction36],ParameterGroup=Parameters,Parameter=S2_export_from_nuc_C4" value="3.1018054766890999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[S2_export_from_nuc_C4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction37]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction37],ParameterGroup=Parameters,Parameter=S4_import_to_nuc_C4" value="0.025125566355657401" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[S4_import_to_nuc_C4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction38]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction38],ParameterGroup=Parameters,Parameter=S4_export_from_nuc_C4" value="0.23373067315266" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[S4_export_from_nuc_C4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction39]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction39],ParameterGroup=Parameters,Parameter=S2_import_to_nuc_C4" value="0.52225013933046305" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[S2_import_to_nuc_C4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction40]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction40],ParameterGroup=Parameters,Parameter=S2_export_from_nuc_C4" value="3.1018054766890999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[S2_export_from_nuc_C4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction41]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction41],ParameterGroup=Parameters,Parameter=Trimer_import_to_nuc" value="0.144035002432848" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[Trimer_import_to_nuc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction42]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction42],ParameterGroup=Parameters,Parameter=Trimer_import_to_nuc" value="0.144035002432848" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[Trimer_import_to_nuc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction43]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction43],ParameterGroup=Parameters,Parameter=k1" value="0.070449221762534694" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[k_Dephos_C4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction44]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction44],ParameterGroup=Parameters,Parameter=index_trimer_dephos" value="2.61013820571304" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[index_trimer_dephos],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction44],ParameterGroup=Parameters,Parameter=k_Dephos_C4" value="0.070449221762534694" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[k_Dephos_C4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction45]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction45],ParameterGroup=Parameters,Parameter=S2_export_from_nuc_C4" value="3.1018054766890999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[S2_export_from_nuc_C4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction45],ParameterGroup=Parameters,Parameter=S2_import_to_nuc_C4" value="0.52225013933046305" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[S2_import_to_nuc_C4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction45],ParameterGroup=Parameters,Parameter=S2_total_C4" value="1315.1320067607401" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[S2_total_C4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction45],ParameterGroup=Parameters,Parameter=kdeg_S2" value="0.00051408401217546099" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_S2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction46]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction46],ParameterGroup=Parameters,Parameter=S4_export_from_nuc_C4" value="0.23373067315266" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[S4_export_from_nuc_C4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction46],ParameterGroup=Parameters,Parameter=S4_import_to_nuc_C4" value="0.025125566355657401" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[S4_import_to_nuc_C4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction46],ParameterGroup=Parameters,Parameter=S4_total_C4" value="389.53831698512602" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[S4_total_C4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction46],ParameterGroup=Parameters,Parameter=kdeg_S4" value="0.0048020269936005699" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_S4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction47]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction47],ParameterGroup=Parameters,Parameter=R1_total_C4" value="24.506578690761401" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[R1_total_C4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction47],ParameterGroup=Parameters,Parameter=index_k_out_1_relative_speed_C4" value="0.28410342378490999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[index_k_out_1_relative_speed_C4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction47],ParameterGroup=Parameters,Parameter=k_in_R1_C4" value="0.40073987230225999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[k_in_R1_C4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction47],ParameterGroup=Parameters,Parameter=kdeg_R1" value="0.058658449571396799" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_R1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction48]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction48],ParameterGroup=Parameters,Parameter=R2_total_C4" value="24.481469308492098" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[R2_total_C4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction48],ParameterGroup=Parameters,Parameter=index_k_out_2_relative_speed_C4" value="0.13081029215514001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[index_k_out_2_relative_speed_C4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction48],ParameterGroup=Parameters,Parameter=k_in_R2_C4" value="1.1527121689746" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[k_in_R2_C4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction48],ParameterGroup=Parameters,Parameter=kdeg_R2" value="0.0010003937382471999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_R2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction51]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction51],ParameterGroup=Parameters,Parameter=DRB" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[DRB],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction51],ParameterGroup=Parameters,Parameter=K_mran" value="223.58600000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[K_mran],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction51],ParameterGroup=Parameters,Parameter=S7KD" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[S7KD],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction51],ParameterGroup=Parameters,Parameter=hill_fact1" value="3.9863022459498301" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[hill_fact1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction51],ParameterGroup=Parameters,Parameter=k_induced_S7_production_C4" value="9.7438352836426496" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[k_induced_S7_production_C4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction51],ParameterGroup=Parameters,Parameter=mRNA_prod_C4" value="0.0069585201534718699" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[mRNA_prod_C4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction52]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction52],ParameterGroup=Parameters,Parameter=export_cytoplasm" value="0.030437296130775102" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[export_cytoplasm],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction53]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction53],ParameterGroup=Parameters,Parameter=k_S7_protein_C4" value="0.191333551016171" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[k_S7_protein_C4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction54]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction54],ParameterGroup=Parameters,Parameter=k1" value="0.00051408401217546099" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_S2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction55]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction55],ParameterGroup=Parameters,Parameter=k1" value="0.00051408401217546099" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_S2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction56]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction56],ParameterGroup=Parameters,Parameter=k1" value="0.00051408401217546099" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_S2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction57]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction57],ParameterGroup=Parameters,Parameter=k1" value="0.00051408401217546099" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_S2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction58]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction58],ParameterGroup=Parameters,Parameter=k1" value="0.0048020269936005699" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_S4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction59]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction59],ParameterGroup=Parameters,Parameter=k1" value="0.0048020269936005699" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_S4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction60]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction60],ParameterGroup=Parameters,Parameter=k1" value="0.00051408401217546099" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_S2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction61]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction61],ParameterGroup=Parameters,Parameter=k1" value="0.0048020269936005699" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_S4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction62]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction62],ParameterGroup=Parameters,Parameter=k1" value="0.00051408401217546099" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_S2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction63]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction63],ParameterGroup=Parameters,Parameter=k1" value="0.00051408401217546099" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_S2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction64]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction64],ParameterGroup=Parameters,Parameter=k1" value="0.0048020269936005699" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_S4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction65]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction65],ParameterGroup=Parameters,Parameter=k1" value="0.00051408401217546099" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_S2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction66]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction66],ParameterGroup=Parameters,Parameter=k1" value="0.0052318143990062902" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kmRNA1deg_S7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction67]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction67],ParameterGroup=Parameters,Parameter=k1" value="0.099015806548390206" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kmRNAdeg_S7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction68]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Reactions[reaction68],ParameterGroup=Parameters,Parameter=k1" value="0.0010240182973448499" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[kdeg_S7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_18"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_22"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_20"/>
      <StateTemplateVariable objectReference="ModelValue_48"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
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
    </StateTemplate>
    <InitialState type="initialState">
      0 0 0 34.263462961931545 643.5098920978578 43.265780547132564 11.204940766676184 67.783370936197116 1967.7535593664375 14.749694419591261 5.6971580698516346 331.25522707752117 0 0 200 0.1950853287373667 0 0 0 0 0.059968909293759393 0 0 0 0.33668365177210124 2 1 1 223.58600000000001 24.506578690761401 24.481469308492098 3.1018054766890999 0.52225013933046305 1315.1320067607401 0.23373067315266 0.025125566355657401 389.53831698512602 1 0.144035002432848 0.030437296130775102 3.9863022459498301 0.922503805466932 1.0003777686631199 2.7210651363409801 0.28410342378490999 0.13081029215514001 1.61290474569122 8.7049885413669408 0.0163921522930962 4.4857919268227002 0.00086513194482801205 2.61013820571304 0.070449221762534694 0.191333551016171 0.0010394041135836701 0.40073987230225999 1.1527121689746 9.7438352836426496 2000000 0.070156019177215201 1.6077346670684001 0.058658449571396799 0.0010003937382471999 0.00051408401217546099 0.0048020269936005699 0.0010240182973448499 4.9854854807603299 4.9555949670165704 0.88245503810602199 4.81424700307387 0.72018223463531394 0.0052318143990062902 0.099015806548390206 0.00036189621999999999 0.0069585201534718699 
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
        <Parameter name="StepNumber" type="unsignedInteger" value="1400"/>
        <Parameter name="StepSize" type="float" value="1"/>
        <Parameter name="Duration" type="float" value="1400"/>
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
    <PlotSpecification name="nuc/cyt SMAD2 ratio" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[NUC/CYT SMAD2]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Strasen2018 – TGFβ SMAD Signalling Class 4,Vector=Values[NUC/CYT SMAD2],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="MODEL17120500010_anno.xml">
    <SBMLMap SBMLid="Active_R2" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="Active_Rec" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="Active_Rec_endo" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="DRB" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="Function_for_reaction1" COPASIkey="Function_49"/>
    <SBMLMap SBMLid="Function_for_reaction15" COPASIkey="Function_48"/>
    <SBMLMap SBMLid="Function_for_reaction16" COPASIkey="Function_43"/>
    <SBMLMap SBMLid="Function_for_reaction17" COPASIkey="Function_68"/>
    <SBMLMap SBMLid="Function_for_reaction2" COPASIkey="Function_54"/>
    <SBMLMap SBMLid="Function_for_reaction20_1" COPASIkey="Function_47"/>
    <SBMLMap SBMLid="Function_for_reaction21_1" COPASIkey="Function_44"/>
    <SBMLMap SBMLid="Function_for_reaction22_1" COPASIkey="Function_61"/>
    <SBMLMap SBMLid="Function_for_reaction26" COPASIkey="Function_51"/>
    <SBMLMap SBMLid="Function_for_reaction3" COPASIkey="Function_73"/>
    <SBMLMap SBMLid="Function_for_reaction31_2" COPASIkey="Function_63"/>
    <SBMLMap SBMLid="Function_for_reaction32_3" COPASIkey="Function_40"/>
    <SBMLMap SBMLid="Function_for_reaction33_2" COPASIkey="Function_62"/>
    <SBMLMap SBMLid="Function_for_reaction34_2" COPASIkey="Function_53"/>
    <SBMLMap SBMLid="Function_for_reaction35_2" COPASIkey="Function_45"/>
    <SBMLMap SBMLid="Function_for_reaction36_2" COPASIkey="Function_55"/>
    <SBMLMap SBMLid="Function_for_reaction37_2" COPASIkey="Function_58"/>
    <SBMLMap SBMLid="Function_for_reaction38_2" COPASIkey="Function_46"/>
    <SBMLMap SBMLid="Function_for_reaction39_2" COPASIkey="Function_72"/>
    <SBMLMap SBMLid="Function_for_reaction4" COPASIkey="Function_67"/>
    <SBMLMap SBMLid="Function_for_reaction40_2" COPASIkey="Function_57"/>
    <SBMLMap SBMLid="Function_for_reaction41_2" COPASIkey="Function_70"/>
    <SBMLMap SBMLid="Function_for_reaction42" COPASIkey="Function_71"/>
    <SBMLMap SBMLid="Function_for_reaction44_2" COPASIkey="Function_60"/>
    <SBMLMap SBMLid="Function_for_reaction45_2" COPASIkey="Function_42"/>
    <SBMLMap SBMLid="Function_for_reaction46_2" COPASIkey="Function_59"/>
    <SBMLMap SBMLid="Function_for_reaction47_2" COPASIkey="Function_65"/>
    <SBMLMap SBMLid="Function_for_reaction48_0" COPASIkey="Function_64"/>
    <SBMLMap SBMLid="Function_for_reaction5" COPASIkey="Function_69"/>
    <SBMLMap SBMLid="Function_for_reaction51_2" COPASIkey="Function_66"/>
    <SBMLMap SBMLid="Function_for_reaction52_3" COPASIkey="Function_52"/>
    <SBMLMap SBMLid="Function_for_reaction53_0" COPASIkey="Function_56"/>
    <SBMLMap SBMLid="Function_for_reaction6" COPASIkey="Function_50"/>
    <SBMLMap SBMLid="Function_for_reaction8" COPASIkey="Function_41"/>
    <SBMLMap SBMLid="Inactive_Rec" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="K_mran" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="NUC_CYT_SMAD2" COPASIkey="ModelValue_48"/>
    <SBMLMap SBMLid="R1_total_C4" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="R2_total_C4" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="S2_c" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="S2_export_from_nuc_C4" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="S2_import_to_nuc_C4" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="S2_n" COPASIkey="Metabolite_21"/>
    <SBMLMap SBMLid="S2_total_C4" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="S4_c" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="S4_export_from_nuc_C4" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="S4_import_to_nuc_C4" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="S4_n" COPASIkey="Metabolite_22"/>
    <SBMLMap SBMLid="S4_total_C4" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="S7" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="S7KD" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="Smad7mRNA" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="Smad7mRNA1" COPASIkey="Metabolite_16"/>
    <SBMLMap SBMLid="TGFb" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="TGFb_In" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="TGFb_R1_endo" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="TGFb_R1_surface" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="TGFb_R2_endo" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="TGFb_R2_surface" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="Trimer_import_to_nuc" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="cyt" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="export_cytoplasm" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="hill_fact1" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="index_active_Rec_internalize_C4" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="index_induced_R2_deg" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="index_induced_ligand_deg" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="index_k_out_1_relative_speed_C4" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="index_k_out_2_relative_speed_C4" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="index_kb_R1" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="index_kb_R2" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="index_kb_homotrimer" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="index_kf_homotrimer" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="index_seq_kb" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="index_trimer_dephos" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="k_Dephos_C4" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="k_S7_protein_C4" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="k_disso_Active_Rec" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="k_in_R1_C4" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="k_in_R2_C4" COPASIkey="ModelValue_29"/>
    <SBMLMap SBMLid="k_induced_S7_production_C4" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="k_medium" COPASIkey="ModelValue_31"/>
    <SBMLMap SBMLid="k_phosphorylation" COPASIkey="ModelValue_32"/>
    <SBMLMap SBMLid="kb_trimmer" COPASIkey="ModelValue_33"/>
    <SBMLMap SBMLid="kdeg_R1" COPASIkey="ModelValue_34"/>
    <SBMLMap SBMLid="kdeg_R2" COPASIkey="ModelValue_35"/>
    <SBMLMap SBMLid="kdeg_S2" COPASIkey="ModelValue_36"/>
    <SBMLMap SBMLid="kdeg_S4" COPASIkey="ModelValue_37"/>
    <SBMLMap SBMLid="kdeg_S7" COPASIkey="ModelValue_38"/>
    <SBMLMap SBMLid="kf_R1_activation" COPASIkey="ModelValue_39"/>
    <SBMLMap SBMLid="kf_R2_activation" COPASIkey="ModelValue_40"/>
    <SBMLMap SBMLid="kf_Seq_S7_Rec" COPASIkey="ModelValue_41"/>
    <SBMLMap SBMLid="kf_trimmer" COPASIkey="ModelValue_42"/>
    <SBMLMap SBMLid="kin_deg_Ligand" COPASIkey="ModelValue_43"/>
    <SBMLMap SBMLid="kmRNA1deg_S7" COPASIkey="ModelValue_44"/>
    <SBMLMap SBMLid="kmRNAdeg_S7" COPASIkey="ModelValue_45"/>
    <SBMLMap SBMLid="kout_deg_Ligand_100pM" COPASIkey="ModelValue_46"/>
    <SBMLMap SBMLid="mRNA_prod_C4" COPASIkey="ModelValue_47"/>
    <SBMLMap SBMLid="nuc" COPASIkey="Compartment_1"/>
    <SBMLMap SBMLid="pS2_c" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="pS2_n" COPASIkey="Metabolite_18"/>
    <SBMLMap SBMLid="pS2_pS2_S4_c" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="pS2_pS2_S4_n" COPASIkey="Metabolite_19"/>
    <SBMLMap SBMLid="pS2_pS2_pS2_c" COPASIkey="Metabolite_14"/>
    <SBMLMap SBMLid="pS2_pS2_pS2_n" COPASIkey="Metabolite_20"/>
    <SBMLMap SBMLid="reaction1" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="reaction10" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="reaction11" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="reaction12" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="reaction13" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="reaction14" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="reaction15" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="reaction16" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="reaction17" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="reaction18" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="reaction19" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="reaction2" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="reaction20" COPASIkey="Reaction_19"/>
    <SBMLMap SBMLid="reaction21" COPASIkey="Reaction_20"/>
    <SBMLMap SBMLid="reaction22" COPASIkey="Reaction_21"/>
    <SBMLMap SBMLid="reaction23" COPASIkey="Reaction_22"/>
    <SBMLMap SBMLid="reaction24" COPASIkey="Reaction_23"/>
    <SBMLMap SBMLid="reaction25" COPASIkey="Reaction_24"/>
    <SBMLMap SBMLid="reaction26" COPASIkey="Reaction_25"/>
    <SBMLMap SBMLid="reaction27" COPASIkey="Reaction_26"/>
    <SBMLMap SBMLid="reaction28" COPASIkey="Reaction_27"/>
    <SBMLMap SBMLid="reaction29" COPASIkey="Reaction_28"/>
    <SBMLMap SBMLid="reaction3" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="reaction30" COPASIkey="Reaction_29"/>
    <SBMLMap SBMLid="reaction31" COPASIkey="Reaction_30"/>
    <SBMLMap SBMLid="reaction32" COPASIkey="Reaction_31"/>
    <SBMLMap SBMLid="reaction33" COPASIkey="Reaction_32"/>
    <SBMLMap SBMLid="reaction34" COPASIkey="Reaction_33"/>
    <SBMLMap SBMLid="reaction35" COPASIkey="Reaction_34"/>
    <SBMLMap SBMLid="reaction36" COPASIkey="Reaction_35"/>
    <SBMLMap SBMLid="reaction37" COPASIkey="Reaction_36"/>
    <SBMLMap SBMLid="reaction38" COPASIkey="Reaction_37"/>
    <SBMLMap SBMLid="reaction39" COPASIkey="Reaction_38"/>
    <SBMLMap SBMLid="reaction4" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="reaction40" COPASIkey="Reaction_39"/>
    <SBMLMap SBMLid="reaction41" COPASIkey="Reaction_40"/>
    <SBMLMap SBMLid="reaction42" COPASIkey="Reaction_41"/>
    <SBMLMap SBMLid="reaction43" COPASIkey="Reaction_42"/>
    <SBMLMap SBMLid="reaction44" COPASIkey="Reaction_43"/>
    <SBMLMap SBMLid="reaction45" COPASIkey="Reaction_44"/>
    <SBMLMap SBMLid="reaction46" COPASIkey="Reaction_45"/>
    <SBMLMap SBMLid="reaction47" COPASIkey="Reaction_46"/>
    <SBMLMap SBMLid="reaction48" COPASIkey="Reaction_47"/>
    <SBMLMap SBMLid="reaction5" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="reaction51" COPASIkey="Reaction_48"/>
    <SBMLMap SBMLid="reaction52" COPASIkey="Reaction_49"/>
    <SBMLMap SBMLid="reaction53" COPASIkey="Reaction_50"/>
    <SBMLMap SBMLid="reaction54" COPASIkey="Reaction_51"/>
    <SBMLMap SBMLid="reaction55" COPASIkey="Reaction_52"/>
    <SBMLMap SBMLid="reaction56" COPASIkey="Reaction_53"/>
    <SBMLMap SBMLid="reaction57" COPASIkey="Reaction_54"/>
    <SBMLMap SBMLid="reaction58" COPASIkey="Reaction_55"/>
    <SBMLMap SBMLid="reaction59" COPASIkey="Reaction_56"/>
    <SBMLMap SBMLid="reaction6" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="reaction60" COPASIkey="Reaction_57"/>
    <SBMLMap SBMLid="reaction61" COPASIkey="Reaction_58"/>
    <SBMLMap SBMLid="reaction62" COPASIkey="Reaction_59"/>
    <SBMLMap SBMLid="reaction63" COPASIkey="Reaction_60"/>
    <SBMLMap SBMLid="reaction64" COPASIkey="Reaction_61"/>
    <SBMLMap SBMLid="reaction65" COPASIkey="Reaction_62"/>
    <SBMLMap SBMLid="reaction66" COPASIkey="Reaction_63"/>
    <SBMLMap SBMLid="reaction67" COPASIkey="Reaction_64"/>
    <SBMLMap SBMLid="reaction68" COPASIkey="Reaction_65"/>
    <SBMLMap SBMLid="reaction7" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="reaction8" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="reaction9" COPASIkey="Reaction_8"/>
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
<dcterms:W3CDTF>2021-02-24T16:00:52Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2021-02-24T16:00:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        s
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
<dcterms:W3CDTF>2021-02-24T16:00:52Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2021-02-24T16:00:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        0.001*m^3
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_65" name="minute" symbol="min">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_64">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-02-24T16:00:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        60*s
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
