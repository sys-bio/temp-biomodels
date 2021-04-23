<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.27 (Build 217) (http://www.copasi.org) at 2020-05-14T18:31:33Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="27" versionDevel="217" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_6" name="Constant flux (irreversible)" type="PreDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-09-27T16:21:05Z</dcterms:W3CDTF>
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
    <Function key="Function_40" name="function for cdk1a degradation by apc_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_40">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-04-15T15:27:42Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k_dest*APC_C_active*Cyclin_B1_Cdk1_complex_unphosphorylated
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_264" name="APC_C_active" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_263" name="Cyclin_B1_Cdk1_complex_unphosphorylated" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_262" name="k_dest" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="function for cdk1a degradation by apc_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-15T15:27:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k_dest*APC_C_active*Cyclin_B1_Cdk1_complex_phosphorylated
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_265" name="APC_C_active" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_250" name="Cyclin_B1_Cdk1_complex_phosphorylated" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_261" name="k_dest" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="function for cdk inactivation_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_42">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-04-15T15:27:42Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        r^(1/2)*k_cdk1_off*(1+p/((Cyclin_B1_Cdk1_complex_phosphorylated/ec50_wee1)^n_wee1+1))*Cyclin_B1_Cdk1_complex_phosphorylated
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_268" name="Cyclin_B1_Cdk1_complex_phosphorylated" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_267" name="ec50_wee1" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_266" name="k_cdk1_off" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_269" name="n_wee1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_270" name="p" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_271" name="r" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="function for cdk1 activation_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_43">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-04-15T15:27:42Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        1/r^(1/2)*k_cdk1_on*(1+p/(1+(ec50_cdc25/Cyclin_B1_Cdk1_complex_phosphorylated)^n_cdc25))*Cyclin_B1_Cdk1_complex_unphosphorylated
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_277" name="Cyclin_B1_Cdk1_complex_phosphorylated" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_276" name="Cyclin_B1_Cdk1_complex_unphosphorylated" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_275" name="ec50_cdc25" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_274" name="k_cdk1_on" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_273" name="n_cdc25" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_272" name="p" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_278" name="r" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="function for plx1 activation_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_44">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-04-15T15:27:42Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k_plxon/(1+(ec50_plx/Cyclin_B1_Cdk1_complex_phosphorylated)^n_plx)*(Plx1_total-Plx1_active)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_285" name="Cyclin_B1_Cdk1_complex_phosphorylated" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_284" name="Plx1_active" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_283" name="Plx1_total" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_282" name="ec50_plx" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_281" name="k_plxon" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_280" name="n_plx" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="function for apc activation_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_45">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-04-15T15:27:42Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k_apc_on/(1+(ec50_apc/Plx1_active)^n_apc)*(APC_C_total-APC_C_active)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_290" name="APC_C_active" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_289" name="APC_C_total" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_288" name="Plx1_active" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_287" name="ec50_apc" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_286" name="k_apc_on" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_279" name="n_apc" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="Rate Law for reaction for SCdk1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-15T16:28:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Kcdkon*S*Cdk1a-(Kcatcdk+Kcdkoff)*SCdk1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_296" name="Kcdkon" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_295" name="S" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_294" name="Cdk1a" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_293" name="Kcatcdk" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_292" name="Kcdkoff" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_291" name="SCdk1" order="5" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="Rate Law for reaction for S" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-15T16:42:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Kcdk_off*SCdk1-K_cdk_on*S*Cdk1a+Kcatpp2*SPPP2A
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_302" name="Kcdk_off" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_301" name="SCdk1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_300" name="K_cdk_on" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_299" name="S" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_298" name="Cdk1a" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_297" name="Kcatpp2" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_303" name="SPPP2A" order="6" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="Rate Law for reaction for SP" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-15T16:48:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Kcatcdk*SCdk1-Kpp2on*SP*PP2A+Kpp2off*SPPP2A
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_310" name="Kcatcdk" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_309" name="SCdk1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_308" name="Kpp2on" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_307" name="SP" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_306" name="PP2A" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_305" name="Kpp2off" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_304" name="SPPP2A" order="6" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="Rate Law for reaction for PP2A" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-15T16:50:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Kpp2off*SPPP2A+Kcatpp2*SPPP2A-Kpp2on*SP*PP2A
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_317" name="Kpp2off" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_316" name="SPPP2A" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_315" name="Kcatpp2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_314" name="Kpp2on" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_313" name="SP" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_312" name="PP2A" order="5" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="Rate Law for reaction for SPPP2A" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_50">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-15T16:52:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        -(Kcatpp2+Kpp2off)*SPPP2A+Kpp2on*SP*PP2A
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_322" name="Kcatpp2" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_321" name="Kpp2off" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_320" name="SPPP2A" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_319" name="Kpp2on" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_318" name="SP" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_311" name="PP2A" order="5" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="Rate Law for reaction for heat flow" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-16T10:34:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (-(Kcatpp2+Kpp2off)*SPPP2A+Kpp2on*SP*PP2A)*Vembryo*delta_Hdephos*Kcat_pp2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_328" name="SPPP2A" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_327" name="Vembryo" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_326" name="delta_Hdephos" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_325" name="Kcat_pp2" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_324" name="Kcatpp2" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_323" name="Kpp2off" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_329" name="Kpp2on" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_330" name="SP" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_331" name="PP2A" order="8" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling" simulationType="time" timeUnit="s" volumeUnit="ml" areaUnit="m²" lengthUnit="m" quantityUnit="mmol" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:unknown:http://purl.obolibrary.org/obo/CHMO_0002076"/>
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/mamo/MAMO_0000046"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqbiol:hasTaxon>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:taxonomy:7955"/>
      </rdf:Bag>
    </bqbiol:hasTaxon>
    <bqmodel:isDerivedFrom rdf:resource="urn:miriam:unknown:https://www.ncbi.nlm.nih.gov/pubmed/24523664"/>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:30713074"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-07T15:14:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>ahmad.azd@hotmail.com</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Zyoud</vCard:Family>
            <vCard:Given>Ahmad</vCard:Given>
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
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>ahmad.azd@hotmail.com</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Zyoud</vCard:Family>
                <vCard:Given>Ahmad</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>EMBL-EBI</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:creator>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-17T14:39:55</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2020-05-14T18:33:08</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0051726"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:is rdf:resource="urn:miriam:biomodels.db:MODEL2004170001"/>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      All living systems function out of equilibrium and exchange energy in the form of heat with their environment. Thus, heat flow can inform on the energetic costs of cellular processes, which are largely unknown. Here, we have repurposed an isothermal calorimeter to measure heat flow between developing zebrafish embryos and the surrounding medium. Heat flow increased over time with cell number. Unexpectedly, a prominent oscillatory component of the heat flow, with periods matching the synchronous early reductive cleavage divisions, persisted even when DNA synthesis and mitosis were blocked by inhibitors. Instead, the heat flow oscillations were driven by the phosphorylation and dephosphorylation reactions catalyzed by the cell-cycle oscillator, the biochemical network controlling mitotic entry and exit. We propose that the high energetic cost of cell-cycle signaling reflects the significant thermodynamic burden of imposing accurate and robust timing on cell proliferation during development.
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="Nuclear" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C13361"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_1" name="Embryo" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-16T11:13:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="Cyclin B1 Cdk1 complex phosphorylated( Active)" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <CopasiMT:hasPart rdf:resource="urn:miriam:pato:PATO:0002354"/>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:uniprot:Q7T3L7"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:uniprot:Q7ZU21"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0032991"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>cdk1a in the publication</pre>
  </body>
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="Cyclin B1 Cdk1 complex unphosphorylated" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:uniprot:Q7T3L7"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:uniprot:Q7ZU21"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0032991"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>_named cdk1i in the publication</pre>
  </body>
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="Plx1_active" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:pato:PATO:0002354"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:uniprot:Q4KMI8"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="APC/C active" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002354"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:uniprot:Q561X1"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="Plx1_total" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:uniprot:Q4KMI8"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="APC/C total" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:uniprot:Q561X1"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="Cyclin B1 Cdk1 complex total" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:uniprot:Q7T3L7"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:uniprot:Q7ZU21"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0032991"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Compartments[Nuclear],Vector=Metabolites[Cyclin B1 Cdk1 complex unphosphorylated],Reference=Concentration>+&lt;CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Compartments[Nuclear],Vector=Metabolites[Cyclin B1 Cdk1 complex phosphorylated( Active)],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="Substrate/Cdk1 complex" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-15T16:04:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:C120264"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q7T3L7"/>
    <CopasiMT:is rdf:resource="urn:miriam:go:GO:0032991"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="Substrate" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-15T16:42:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:C120264"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="Phosphorylated Substrate(SP)" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-15T16:48:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:C120264"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:pato:PATO:0002220"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="PP2A" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-15T16:50:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q6NY64"/>
    <CopasiMT:is rdf:resource="urn:miriam:go:GO:0032991"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="Phosphorylated Substrate Phosphatase Complex(SP-PP2A)" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-15T16:52:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:go:GO:0032991"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="Stotal" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-15T16:54:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:C120264"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Compartments[Nuclear],Vector=Metabolites[Substrate],Reference=Rate>+&lt;CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Compartments[Nuclear],Vector=Metabolites[Phosphorylated Substrate(SP)],Reference=Rate>+&lt;CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Compartments[Nuclear],Vector=Metabolites[Substrate/Cdk1 complex],Reference=Rate>+&lt;CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Compartments[Nuclear],Vector=Metabolites[Phosphorylated Substrate Phosphatase Complex(SP-PP2A)],Reference=Rate>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="cdk1a" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-15T18:24:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Compartments[Nuclear],Vector=Metabolites[Cyclin B1 Cdk1 complex phosphorylated( Active)],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="Heat(Q)" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-16T10:34:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:go:GO:0031649"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="k_synth" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-07T17:31:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="k_dest" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-07T17:31:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="ec50_cdc25" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-07T17:31:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="n_cdc25" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-07T17:31:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="ec50_wee1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-07T17:31:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="n_wee1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-07T17:31:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="k_cdk1_on" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-07T17:31:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="k_cdk1_off" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-07T17:31:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="p" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-07T17:27:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="ec50_plx" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-07T17:31:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="ec50_apc" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-07T17:31:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="n_apc" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-07T17:31:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="n_plx" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-07T17:31:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="k_plxon" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-07T17:31:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="k_plx_off" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-07T17:31:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="k_apc_on" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-07T17:31:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="k_apc_off" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-07T17:31:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="r" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-07T16:46:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_18" name="tau" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-07T17:31:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_19" name="Kcdk_on" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-15T16:55:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_20" name="Kcdk_off" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_20">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-04-15T16:56:19Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_21" name="Kcatcdk1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-15T16:56:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_22" name="Kpp2_on" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-15T16:57:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_23" name="Kpp2_off" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_23">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-04-15T16:57:34Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_24" name="Kcatpp2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-15T16:57:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_25" name="delta_Hdesphos" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-16T10:36:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="Cyclin B1 Cdk1 phosphorylated synthesis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61408"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5472" name="v" value="2.85"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Compartments[Nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="Cyclin B1 Cdk1 unphosphorylated degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5471" name="k_dest" value="0.76"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Compartments[Nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="Cyclin B1 Cdk1 phosphorylated degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
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
          <Constant key="Parameter_5470" name="k_dest" value="0.76"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Compartments[Nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="Cyclin B1 Cdk1 phosphorylated dephosphorylation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016311"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5469" name="ec50_wee1" value="35"/>
          <Constant key="Parameter_5468" name="k_cdk1_off" value="0.06726"/>
          <Constant key="Parameter_5467" name="n_wee1" value="3.5"/>
          <Constant key="Parameter_5466" name="p" value="5"/>
          <Constant key="Parameter_5465" name="r" value="0.03125"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Compartments[Nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="Cyclin B1 Cdk1 phosphorylated phosphorylation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016310"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5464" name="ec50_cdc25" value="30"/>
          <Constant key="Parameter_5463" name="k_cdk1_on" value="0.06726"/>
          <Constant key="Parameter_5976" name="n_cdc25" value="11"/>
          <Constant key="Parameter_5977" name="p" value="5"/>
          <Constant key="Parameter_5975" name="r" value="0.03125"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Compartments[Nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="Plx1 activation by active Cdk1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000656" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5978" name="ec50_plx" value="60"/>
          <Constant key="Parameter_5956" name="k_plxon" value="2.85"/>
          <Constant key="Parameter_5957" name="n_plx" value="5"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Compartments[Nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="Plx1 inactivation after Cdk1 inactivated" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-07T15:36:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5955" name="k1" value="0.2375"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Compartments[Nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="Activation of APC/CCdc20 by active Plx1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000656"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5958" name="ec50_apc" value="0.5"/>
          <Constant key="Parameter_5462" name="k_apc_on" value="1.5"/>
          <Constant key="Parameter_5461" name="n_apc" value="4"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Compartments[Nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="inactivation of APC/CCdc20 after Plx1 is inactivated" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-07T15:50:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5460" name="k1" value="0.15"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Compartments[Nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="reaction for SCdk1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-15T16:04:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5459" name="Kcdkon" value="10"/>
          <Constant key="Parameter_5458" name="Kcatcdk" value="180"/>
          <Constant key="Parameter_5457" name="Kcdkoff" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Compartments[Nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="reaction for S" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-15T16:41:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5456" name="K_cdk_on" value="10"/>
          <Constant key="Parameter_5455" name="Kcatpp2" value="1800"/>
          <Constant key="Parameter_5454" name="Kcdk_off" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default" scalingCompartment="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Compartments[Nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="reaction for SP" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-15T16:47:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5453" name="Kpp2on" value="100"/>
          <Constant key="Parameter_5452" name="Kcatcdk" value="180"/>
          <Constant key="Parameter_5451" name="Kpp2off" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_48" unitType="Default" scalingCompartment="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Compartments[Nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_309">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="reaction for PP2A" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-15T16:50:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5450" name="Kcatpp2" value="1800"/>
          <Constant key="Parameter_5449" name="Kpp2on" value="100"/>
          <Constant key="Parameter_5448" name="Kpp2off" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_49" unitType="Default" scalingCompartment="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Compartments[Nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_313">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_312">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="reaction for SPPP2A" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-15T16:51:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5447" name="Kpp2off" value="0.01"/>
          <Constant key="Parameter_5446" name="Kpp2on" value="100"/>
          <Constant key="Parameter_5445" name="Kcatpp2" value="1800"/>
        </ListOfConstants>
        <KineticLaw function="Function_50" unitType="Default" scalingCompartment="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Compartments[Nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_320">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_319">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="reaction for heat flow" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-16T10:33:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5444" name="delta_Hdephos" value="40000"/>
          <Constant key="Parameter_5443" name="Kcat_pp2" value="1800"/>
          <Constant key="Parameter_5767" name="Kcatpp2" value="1800"/>
          <Constant key="Parameter_5768" name="Kpp2off" value="0.01"/>
          <Constant key="Parameter_5766" name="Kpp2on" value="100"/>
        </ListOfConstants>
        <KineticLaw function="Function_51" unitType="Default" scalingCompartment="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Compartments[Nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_325">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_324">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_323">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Metabolite_10"/>
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
<dcterms:W3CDTF>2020-05-14T10:03:43Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Compartments[Nuclear]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Compartments[Embryo]" value="6e-10" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Compartments[Nuclear],Vector=Metabolites[Cyclin B1 Cdk1 complex phosphorylated( Active)]" value="3.6132845142000003e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Compartments[Nuclear],Vector=Metabolites[Cyclin B1 Cdk1 complex unphosphorylated]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Compartments[Nuclear],Vector=Metabolites[Plx1_active]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Compartments[Nuclear],Vector=Metabolites[APC/C active]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Compartments[Nuclear],Vector=Metabolites[Plx1_total]" value="6.0221408570000002e+20" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Compartments[Nuclear],Vector=Metabolites[APC/C total]" value="6.0221408570000002e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Compartments[Nuclear],Vector=Metabolites[Cyclin B1 Cdk1 complex total]" value="3.6132845142000003e+22" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Compartments[Nuclear],Vector=Metabolites[Substrate/Cdk1 complex]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Compartments[Nuclear],Vector=Metabolites[Substrate]" value="3.6132845142000003e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Compartments[Nuclear],Vector=Metabolites[Phosphorylated Substrate(SP)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Compartments[Nuclear],Vector=Metabolites[PP2A]" value="3.6132845142000003e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Compartments[Nuclear],Vector=Metabolites[Phosphorylated Substrate Phosphatase Complex(SP-PP2A)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Compartments[Nuclear],Vector=Metabolites[Stotal]" value="3.6132845142000003e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Compartments[Nuclear],Vector=Metabolites[cdk1a]" value="3.6132845142000003e+22" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Compartments[Nuclear],Vector=Metabolites[Heat(Q)]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[k_synth]" value="2.8500000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[k_dest]" value="0.76000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[ec50_cdc25]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[n_cdc25]" value="11" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[ec50_wee1]" value="35" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[n_wee1]" value="3.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[k_cdk1_on]" value="0.06726" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[k_cdk1_off]" value="0.06726" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[p]" value="5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[ec50_plx]" value="60" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[ec50_apc]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[n_apc]" value="4" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[n_plx]" value="5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[k_plxon]" value="2.8500000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[k_plx_off]" value="0.23749999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[k_apc_on]" value="1.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[k_apc_off]" value="0.14999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[r]" value="0.03125" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[tau]" value="4" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[Kcdk_on]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[Kcdk_off]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[Kcatcdk1]" value="180" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[Kpp2_on]" value="100" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[Kpp2_off]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[Kcatpp2]" value="1800" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[delta_Hdesphos]" value="40000" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Reactions[Cyclin B1 Cdk1 phosphorylated synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Reactions[Cyclin B1 Cdk1 phosphorylated synthesis],ParameterGroup=Parameters,Parameter=v" value="2.8500000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[k_synth],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Reactions[Cyclin B1 Cdk1 unphosphorylated degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Reactions[Cyclin B1 Cdk1 unphosphorylated degradation],ParameterGroup=Parameters,Parameter=k_dest" value="0.76000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[k_dest],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Reactions[Cyclin B1 Cdk1 phosphorylated degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Reactions[Cyclin B1 Cdk1 phosphorylated degradation],ParameterGroup=Parameters,Parameter=k_dest" value="0.76000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[k_dest],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Reactions[Cyclin B1 Cdk1 phosphorylated dephosphorylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Reactions[Cyclin B1 Cdk1 phosphorylated dephosphorylation],ParameterGroup=Parameters,Parameter=ec50_wee1" value="35" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[ec50_wee1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Reactions[Cyclin B1 Cdk1 phosphorylated dephosphorylation],ParameterGroup=Parameters,Parameter=k_cdk1_off" value="0.06726" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[k_cdk1_off],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Reactions[Cyclin B1 Cdk1 phosphorylated dephosphorylation],ParameterGroup=Parameters,Parameter=n_wee1" value="3.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[n_wee1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Reactions[Cyclin B1 Cdk1 phosphorylated dephosphorylation],ParameterGroup=Parameters,Parameter=p" value="5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[p],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Reactions[Cyclin B1 Cdk1 phosphorylated dephosphorylation],ParameterGroup=Parameters,Parameter=r" value="0.03125" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[r],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Reactions[Cyclin B1 Cdk1 phosphorylated phosphorylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Reactions[Cyclin B1 Cdk1 phosphorylated phosphorylation],ParameterGroup=Parameters,Parameter=ec50_cdc25" value="30" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[ec50_cdc25],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Reactions[Cyclin B1 Cdk1 phosphorylated phosphorylation],ParameterGroup=Parameters,Parameter=k_cdk1_on" value="0.06726" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[k_cdk1_on],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Reactions[Cyclin B1 Cdk1 phosphorylated phosphorylation],ParameterGroup=Parameters,Parameter=n_cdc25" value="11" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[n_cdc25],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Reactions[Cyclin B1 Cdk1 phosphorylated phosphorylation],ParameterGroup=Parameters,Parameter=p" value="5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[p],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Reactions[Cyclin B1 Cdk1 phosphorylated phosphorylation],ParameterGroup=Parameters,Parameter=r" value="0.03125" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[r],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Reactions[Plx1 activation by active Cdk1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Reactions[Plx1 activation by active Cdk1],ParameterGroup=Parameters,Parameter=ec50_plx" value="60" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[ec50_plx],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Reactions[Plx1 activation by active Cdk1],ParameterGroup=Parameters,Parameter=k_plxon" value="2.8500000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[k_plxon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Reactions[Plx1 activation by active Cdk1],ParameterGroup=Parameters,Parameter=n_plx" value="5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[n_plx],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Reactions[Plx1 inactivation after Cdk1 inactivated]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Reactions[Plx1 inactivation after Cdk1 inactivated],ParameterGroup=Parameters,Parameter=k1" value="0.23749999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[k_plx_off],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Reactions[Activation of APC/CCdc20 by active Plx1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Reactions[Activation of APC/CCdc20 by active Plx1],ParameterGroup=Parameters,Parameter=ec50_apc" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[ec50_apc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Reactions[Activation of APC/CCdc20 by active Plx1],ParameterGroup=Parameters,Parameter=k_apc_on" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[k_apc_on],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Reactions[Activation of APC/CCdc20 by active Plx1],ParameterGroup=Parameters,Parameter=n_apc" value="4" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[n_apc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Reactions[inactivation of APC/CCdc20 after Plx1 is inactivated]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Reactions[inactivation of APC/CCdc20 after Plx1 is inactivated],ParameterGroup=Parameters,Parameter=k1" value="0.14999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[k_apc_off],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Reactions[reaction for SCdk1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Reactions[reaction for SCdk1],ParameterGroup=Parameters,Parameter=Kcdkon" value="10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[Kcdk_on],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Reactions[reaction for SCdk1],ParameterGroup=Parameters,Parameter=Kcatcdk" value="180" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[Kcatcdk1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Reactions[reaction for SCdk1],ParameterGroup=Parameters,Parameter=Kcdkoff" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[Kcdk_off],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Reactions[reaction for S]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Reactions[reaction for S],ParameterGroup=Parameters,Parameter=K_cdk_on" value="10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[Kcdk_on],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Reactions[reaction for S],ParameterGroup=Parameters,Parameter=Kcatpp2" value="1800" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[Kcatpp2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Reactions[reaction for S],ParameterGroup=Parameters,Parameter=Kcdk_off" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[Kcdk_off],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Reactions[reaction for SP]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Reactions[reaction for SP],ParameterGroup=Parameters,Parameter=Kpp2on" value="100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[Kpp2_on],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Reactions[reaction for SP],ParameterGroup=Parameters,Parameter=Kcatcdk" value="180" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[Kcatcdk1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Reactions[reaction for SP],ParameterGroup=Parameters,Parameter=Kpp2off" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[Kpp2_off],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Reactions[reaction for PP2A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Reactions[reaction for PP2A],ParameterGroup=Parameters,Parameter=Kcatpp2" value="1800" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[Kcatpp2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Reactions[reaction for PP2A],ParameterGroup=Parameters,Parameter=Kpp2on" value="100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[Kpp2_on],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Reactions[reaction for PP2A],ParameterGroup=Parameters,Parameter=Kpp2off" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[Kpp2_off],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Reactions[reaction for SPPP2A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Reactions[reaction for SPPP2A],ParameterGroup=Parameters,Parameter=Kpp2off" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[Kpp2_off],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Reactions[reaction for SPPP2A],ParameterGroup=Parameters,Parameter=Kpp2on" value="100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[Kpp2_on],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Reactions[reaction for SPPP2A],ParameterGroup=Parameters,Parameter=Kcatpp2" value="1800" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[Kcatpp2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Reactions[reaction for heat flow]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Reactions[reaction for heat flow],ParameterGroup=Parameters,Parameter=delta_Hdephos" value="40000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[delta_Hdesphos],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Reactions[reaction for heat flow],ParameterGroup=Parameters,Parameter=Kcat_pp2" value="1800" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[Kcatpp2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Reactions[reaction for heat flow],ParameterGroup=Parameters,Parameter=Kcatpp2" value="1800" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[Kcatpp2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Reactions[reaction for heat flow],ParameterGroup=Parameters,Parameter=Kpp2off" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[Kpp2_off],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Reactions[reaction for heat flow],ParameterGroup=Parameters,Parameter=Kpp2on" value="100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[Kpp2_on],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
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
    </StateTemplate>
    <InitialState type="initialState">
      0 3.6132845142000003e+22 3.6132845142000003e+22 0 0 0 0 3.6132845142000003e+22 0 3.6132845142000003e+22 0 0 3.6132845142000003e+22 3.6132845142000003e+22 6.0221408570000002e+20 6.0221408570000002e+20 1 6e-10 2.8500000000000001 0.76000000000000001 30 11 35 3.5 0.06726 0.06726 5 60 0.5 4 5 2.8500000000000001 0.23749999999999999 1.5 0.14999999999999999 0.03125 4 10 1 180 100 0.01 1800 40000 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_15" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_10" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_16" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_19" target="../../../../../Downloads/output.txt" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="1"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="1200"/>
        <Parameter name="StepSize" type="float" value="0.125"/>
        <Parameter name="Duration" type="float" value="150"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
      </Problem>
      <Method name="Deterministic (RADAU5)" type="Deterministic(RADAU5)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="0.0001"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="1000000000"/>
        <Parameter name="Initial Step Size" type="unsignedFloat" value="0.001"/>
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
      <Report reference="Report_11" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_19" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_12" target="" append="1" confirmOverwrite="1"/>
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
      <Report reference="Report_13" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_21" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_14" target="" append="1" confirmOverwrite="1"/>
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
      <Report reference="Report_15" target="" append="1" confirmOverwrite="1"/>
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
      <Report reference="Report_16" target="" append="1" confirmOverwrite="1"/>
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
      <Report reference="Report_17" target="" append="1" confirmOverwrite="1"/>
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
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_27" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_18" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value=""/>
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
    <Report key="Report_10" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_11" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_12" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
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
    <Report key="Report_13" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
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
    <Report key="Report_14" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_15" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
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
    <Report key="Report_16" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_17" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
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
    <Report key="Report_18" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
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
    <Report key="Report_19" name="Time, Concentrations, Volumes, and Global Quantity Values" taskType="timeCourse" separator="&#x09;" precision="6">
      <Comment>
        A table of time, variable species concentrations, variable compartment volumes, and variable global quantity values.
      </Comment>
      <Table printTitle="1">
        <Object cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Reference=Time"/>
        <Object cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Compartments[Nuclear],Vector=Metabolites[Cyclin B1 Cdk1 complex phosphorylated( Active)],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Compartments[Nuclear],Vector=Metabolites[Cyclin B1 Cdk1 complex unphosphorylated],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Compartments[Nuclear],Vector=Metabolites[Plx1_active],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Compartments[Nuclear],Vector=Metabolites[APC/C active],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Compartments[Nuclear],Vector=Metabolites[APC/C total],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Compartments[Nuclear],Vector=Metabolites[Cyclin B1 Cdk1 complex total],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[r],Reference=Value"/>
      </Table>
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
  </ListOfReports>
  <ListOfPlots>
    <PlotSpecification name="Fig.6B" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[Cyclin B1 Cdk1 complex phosphorylated( Active)]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Compartments[Nuclear],Vector=Metabolites[Cyclin B1 Cdk1 complex phosphorylated( Active)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Heat(Q)]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Compartments[Nuclear],Vector=Metabolites[Heat(Q)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Phosphorylated Substrate Phosphatase Complex(SP-PP2A)]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Compartments[Nuclear],Vector=Metabolites[Phosphorylated Substrate Phosphatase Complex(SP-PP2A)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
    <ListOfSliders>
      <Slider key="Slider_1" associatedEntityKey="Task_16" objectCN="CN=Root,Model=Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling,Vector=Values[Kcatpp2],Reference=InitialValue" objectType="float" objectValue="1800" minValue="20" maxValue="18000" tickNumber="1000" tickFactor="100" scaling="logarithmic"/>
    </ListOfSliders>
  </GUI>
  <SBMLReference file="Rodenfels2019_V1.xml">
    <SBMLMap SBMLid="APC_C_active" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="APC_C_total" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="Activation_of_APC_CCdc20_by_active_Plx1" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="Constant_flux__irreversible" COPASIkey="Function_6"/>
    <SBMLMap SBMLid="Cyclin_B1_Cdk1_complex_phosphorylated" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="Cyclin_B1_Cdk1_complex_total" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="Cyclin_B1_Cdk1_complex_unphosphorylated" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="Cyclin_B1_Cdk1_phosphorylated_degradation" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="Cyclin_B1_Cdk1_phosphorylated_dephosphorylation" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="Cyclin_B1_Cdk1_phosphorylated_phosphorylation" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="Cyclin_B1_Cdk1_phosphorylated_synthesis" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="Cyclin_B1_Cdk1_unphosphorylated_degradation" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="Embryo" COPASIkey="Compartment_1"/>
    <SBMLMap SBMLid="Kcatcdk1" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="Kcatpp2" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="Kcdk_off" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="Kcdk_on" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="Kpp2_off" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="Kpp2_on" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="PP2A" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="Plx1_activation_by_active_Cdk1" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="Plx1_active" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="Plx1_inactivation_after_Cdk1_inactivated" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="Plx1_total" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="Q" COPASIkey="Metabolite_14"/>
    <SBMLMap SBMLid="Rate_Law_for_reaction_for_PP2A" COPASIkey="Function_49"/>
    <SBMLMap SBMLid="Rate_Law_for_reaction_for_S" COPASIkey="Function_47"/>
    <SBMLMap SBMLid="Rate_Law_for_reaction_for_SCdk1" COPASIkey="Function_46"/>
    <SBMLMap SBMLid="Rate_Law_for_reaction_for_SP" COPASIkey="Function_48"/>
    <SBMLMap SBMLid="Rate_Law_for_reaction_for_SPPP2A" COPASIkey="Function_50"/>
    <SBMLMap SBMLid="Rate_Law_for_reaction_for_heat_flow" COPASIkey="Function_51"/>
    <SBMLMap SBMLid="S" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="SCdk1" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="SP" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="SPPP2A" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="Stotal" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="cdk1a" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="delta_Hdesphos" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="ec50_apc" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="ec50_cdc25" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="ec50_plx" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="ec50_wee1" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="function_for_apc_activation_1" COPASIkey="Function_45"/>
    <SBMLMap SBMLid="function_for_cdk1_activation_1" COPASIkey="Function_43"/>
    <SBMLMap SBMLid="function_for_cdk1a_degradation_by_apc_1" COPASIkey="Function_40"/>
    <SBMLMap SBMLid="function_for_cdk1a_degradation_by_apc_2" COPASIkey="Function_41"/>
    <SBMLMap SBMLid="function_for_cdk_inactivation_1" COPASIkey="Function_42"/>
    <SBMLMap SBMLid="function_for_plx1_activation_1" COPASIkey="Function_44"/>
    <SBMLMap SBMLid="inactivation_of_APC_CCdc20_after_Plx1_is_inactivated" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="k_apc_off" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="k_apc_on" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="k_cdk1_off" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="k_cdk1_on" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="k_dest" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="k_plx_off" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="k_plxon" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="k_synth" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="n_apc" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="n_cdc25" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="n_plx" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="n_wee1" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="nuclear" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="p" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="r" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="reaction_for_PP2A" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="reaction_for_S" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="reaction_for_SCdk1" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="reaction_for_SP" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="reaction_for_SPPP2A" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="reaction_for_heat_flow" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="tau" COPASIkey="ModelValue_18"/>
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
<dcterms:W3CDTF>2020-05-14T10:03:40Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2020-05-14T10:03:40Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2020-05-14T10:03:40Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro
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
<dcterms:W3CDTF>2020-05-14T10:03:40Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2020-05-14T10:03:40Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2020-05-14T10:03:40Z</dcterms:W3CDTF>
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
