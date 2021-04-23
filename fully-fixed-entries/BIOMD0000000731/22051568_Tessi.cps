<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.24 (Build 197) (http://www.copasi.org) at 2019-01-29 14:53:17 UTC -->
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
    <Function key="Function_40" name="equation for Tumor Growth_1" type="UserDefined" reversible="unspecified">
      <Expression>
        Tumorcells/((1/gamma1)^P+(Tumorcells^(1-m)/gamma)^P)^(1/P)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_264" name="P" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_263" name="Tumorcells" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_262" name="gamma" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_261" name="gamma1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_250" name="m" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="equation for Tumor Kill_1" type="UserDefined" reversible="unspecified">
      <Expression>
        r0*Tx/(1+k2*(Tx/func_CD8_ETC))*(1/((1+k3*(func_TRegs/func_CD8_ETC))*(1+TGFb/S1)))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_269" name="S1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_268" name="TGFb" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_267" name="Tx" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_266" name="func_CD8_ETC" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_265" name="func_TRegs" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_270" name="k2" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_271" name="k3" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_272" name="r0" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="equation for unlicensed DC production_1" type="UserDefined" reversible="unspecified">
      <Expression>
        alpha*Tx/((1+IL10/I1)*(1+func_TRegs/R1))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_280" name="I1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_279" name="IL10" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_278" name="R1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_277" name="Tx" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_276" name="alpha" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_275" name="func_TRegs" order="5" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="equation for Dendritic cell licensing_1" type="UserDefined" reversible="false">
      <Expression>
        lambda*ul_DC/(1+ul_DC/Mh)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_284" name="Mh" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_283" name="lambda" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_282" name="ul_DC" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="equation for IL2 production_1" type="UserDefined" reversible="unspecified">
      <Expression>
        pc*sl_CD4_HTC/((1+TGFb/S4)*(1+IL10/I2))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_274" name="I2" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_273" name="IL10" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_281" name="S4" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_285" name="TGFb" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_286" name="pc" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_287" name="sl_CD4_HTC" order="5" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="equation for IL2 Degradation_1" type="UserDefined" reversible="false">
      <Expression>
        IL2/tc
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_293" name="IL2" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_292" name="tc" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="equation for TGF beta Production_1" type="UserDefined" reversible="unspecified">
      <Expression>
        p1*func_TRegs+p2*Tx
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_290" name="Tx" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_291" name="func_TRegs" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_289" name="p1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_288" name="p2" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="equation for TGF beta Degradation_1" type="UserDefined" reversible="false">
      <Expression>
        TGFb/ts
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_297" name="TGFb" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_296" name="ts" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="equation for IL10 production_1" type="UserDefined" reversible="unspecified">
      <Expression>
        p3*func_TRegs+p4*Tx
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_294" name="Tx" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_295" name="func_TRegs" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_298" name="p3" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_299" name="p4" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="equation for IL10 degradation_1" type="UserDefined" reversible="false">
      <Expression>
        IL10/t1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_303" name="IL10" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_302" name="t1" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="equation for short lived CD8 production_1" type="UserDefined" reversible="unspecified">
      <Expression>
        alpha1*Me/(1+k4*(M/l_DC))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_300" name="M" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_301" name="Me" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_304" name="alpha1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_305" name="k4" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_306" name="l_DC" order="4" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="equation for fully functional CD8 production_1" type="UserDefined" reversible="unspecified">
      <Expression>
        alpha2*sl_CD8_ETC*IL2/((1+TGFb/S2)*(C1+IL2))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_311" name="C1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_310" name="IL2" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_309" name="S2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_308" name="TGFb" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_307" name="alpha2" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_312" name="sl_CD8_ETC" order="5" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="equation for short lived CD4 HTC production_1" type="UserDefined" reversible="unspecified">
      <Expression>
        alpha3*Mh/(1+k4*(M/(ul_DC+l_DC)))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_318" name="M" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_317" name="Mh" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_316" name="alpha3" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_315" name="k4" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_314" name="l_DC" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_313" name="ul_DC" order="5" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="equation for fully functional CD4 HTC_1" type="UserDefined" reversible="unspecified">
      <Expression>
        alpha4*sl_CD4_HTC*IL2/((1+TGFb/S2)*(C1+IL2))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_324" name="C1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_323" name="IL2" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_322" name="S2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_321" name="TGFb" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_320" name="alpha4" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_319" name="sl_CD4_HTC" order="5" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="equation for short lived TReg production_1" type="UserDefined" reversible="unspecified">
      <Expression>
        alpha5*Mr/(1+k4*(M/l_DC))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_330" name="M" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_329" name="Mr" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_328" name="alpha5" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_327" name="k4" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_326" name="l_DC" order="4" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="equation for fully functional TRegs production by CD4 HTC_1" type="UserDefined" reversible="false">
      <Expression>
        alpha7*func_CD4_HTC*TGFb/(S3+TGFb)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_334" name="S3" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_333" name="TGFb" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_332" name="alpha7" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_331" name="func_CD4_HTC" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="equation for fully functional TRegs production by sl_TRegs_1" type="UserDefined" reversible="unspecified">
      <Expression>
        alpha6*sl_TRegs*IL2/(C1+IL2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_337" name="C1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_336" name="IL2" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_335" name="alpha6" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_325" name="sl_TRegs" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_0" name="Robertson-Tessi M (2012)" simulationType="time" timeUnit="d" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mmol" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_0">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C15262"/>
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:go:GO:0002419"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ncit:C20453"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0071604"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ncit:C15262"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ncit:C12583"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:bto:BTO:0004520"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ncit:C153548"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ncit:C126419"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:bto:BTO:0002417"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ncit:C12537"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0002424"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqbiol:hasTaxon>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:taxonomy:9606"/>
      </rdf:Bag>
    </bqbiol:hasTaxon>
    <bqbiol:isPropertyOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:mamo:MAMO_0000046"/>
      </rdf:Bag>
    </bqbiol:isPropertyOf>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="http://identifiers.org/pubmed/22051568"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-11T15:56:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>sheriff@ebi.ac.uk</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Sheriff</vCard:Family>
                <vCard:Given>Rahuman</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>EMBL-EBI</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
        <rdf:li>
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
        </rdf:li>
      </rdf:Bag>
    </dcterms:creator>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-11T15:56:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:C153548"/>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      <body xmlns="http://www.w3.org/1999/xhtml">
    <p>Its a mathematical model presenting the interaction between a growing tumor and immune system. Model involves tumor cells, dendritic cell, helper Tcells, regulatory Tcells, effector cells and certain cytokines (e.g. TGFbeta, IL10, IL2 ) produced by these cells. It represent a dynamic regulation of tumor production/killing by different immune cells and cytokines.</p>
  </body>
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="TumorMicroenv" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-11T15:56:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94498"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>This compartment represent the microenvironment for tumor cells involving immune cells and cytokines produced from tumor/immune cells.</pre>
  </body>
        </Comment>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="Source" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-11T16:00:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000291"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="Tumorcells" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-01-29T10:27:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:efo:EFO:0000616"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="Sink" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-11T16:19:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000291"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="shortlived_CD8_ETC" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-01-29T10:49:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/bto/BTO:0000289" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="func_CD8_ETC" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-01-29T10:28:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="http://identifiers.org/bto/BTO:0000289" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="shortlived_CD4_HTC" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-01-29T10:47:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/bto/BTO:0002417" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="func_CD4_HTC" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-01-29T10:37:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="http://identifiers.org/bto/BTO:0002417" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="shortlived_TRegs" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-01-29T10:48:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/bto/BTO:0004520" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="unlicensed_DC" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-01-29T10:48:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/bto/BTO:0002042" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="licensed_DC" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-01-29T10:43:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="http://identifiers.org/bto/BTO:0002042" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Concentration is in ng/ml</pre>
  </body>
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="func_TRegs" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-01-29T10:43:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="http://identifiers.org/bto/BTO:0004520" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="IL2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-01-29T10:43:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="http://identifiers.org/uniprot/P60568" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="TGFb" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-01-29T10:48:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="http://identifiers.org/uniprot/P01137"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="IL10" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-01-29T10:38:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="http://identifiers.org/uniprot/P22301" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="MemTcell" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-01-29T10:44:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C104082" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Unit is number of Cells.</pre>
  </body>
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="MemHelperTcells" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-01-29T10:45:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C12538" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Unit is number of Cells and its 0.3 of M</pre>
  </body>
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_16" name="MemEffectorCells" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-01-29T10:44:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C126419" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Unit is number of Cells and its 0.6 of M</pre>
  </body>
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="RegMemTcell" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-01-29T10:45:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C104082" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Unit is number of Cells and its 0.1 of M</pre>
  </body>
        </Comment>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="gamma" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-11T17:00:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="m" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-11T17:02:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="gamma1" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-11T17:02:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[gamma],Reference=Value>*&lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[T1],Reference=Value>^(&lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[m],Reference=Value>-1)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="Tx" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-11T17:06:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Compartments[TumorMicroenv],Vector=Metabolites[Tumorcells],Reference=Concentration>/(1+(&lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Compartments[TumorMicroenv],Vector=Metabolites[Tumorcells],Reference=Concentration>^(1-&lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[n],Reference=Value>)/&lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[k1],Reference=Value>)^&lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[P],Reference=Value>)^(1/&lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[P],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="k1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-11T17:06:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="n" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-11T17:07:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="P" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-11T17:07:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="deltaU" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-12T10:57:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="deltaD" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-12T10:58:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="deltaA" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-12T11:02:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="deltaE" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-12T11:02:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="deltaH" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-12T11:03:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="deltaR" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-12T11:03:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="k2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-12T11:10:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="T1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-12T13:56:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Unit is number of cells</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="log Tumor" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-13T14:08:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          log(&lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Compartments[TumorMicroenv],Vector=Metabolites[Tumorcells],Reference=Concentration>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="log effector" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-13T14:09:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          log(&lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Compartments[TumorMicroenv],Vector=Metabolites[func_CD8_ETC],Reference=Concentration>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="log Treg" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-13T14:11:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          log(&lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Compartments[TumorMicroenv],Vector=Metabolites[func_TRegs],Reference=Concentration>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_18" name="alpha" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-13T14:14:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_19" name="r0" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-13T14:29:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_20" name="k3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-13T14:31:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_21" name="S1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-13T14:31:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          pg/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_22" name="alpha1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-13T14:33:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_23" name="k4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-13T14:33:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_24" name="lambda" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-13T14:37:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_25" name="I1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-13T14:37:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          pg/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_26" name="alpha6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-13T14:40:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_27" name="alpha7" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-13T14:40:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_28" name="C1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-13T14:41:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>unit is ng/ml</pre>
  </body>
        </Comment>
        <Unit>
          pg/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_29" name="S2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-13T14:41:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          pg/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_30" name="S3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-13T14:42:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          pg/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_31" name="pc" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-13T15:34:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Unit id ng/ml/day/cell</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_32" name="p1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-13T15:34:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Unit id ng/ml/day/cell</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_33" name="p2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-13T15:35:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Unit id ng/ml/day/cell</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_34" name="R1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_34">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-13T14:38:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Unit is number of cells</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_35" name="alpha2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-13T14:38:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_36" name="alpha3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_36">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-13T14:39:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_37" name="alpha4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-13T14:39:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_38" name="alpha5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_38">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-13T14:40:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_39" name="p3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-13T15:35:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Unit id ng/ml/day/cell</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_40" name="p4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-13T15:35:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Unit id ng/ml/day/cell</pre>
  </body>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_41" name="S4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-13T15:36:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          pg/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_42" name="tc" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-13T15:36:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          ks
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_43" name="ts" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-13T15:40:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          ks
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_44" name="t1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-13T15:41:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          ks
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_45" name="I2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-13T15:52:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          pg/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_46" name="Treg_origin_fraction_CD4" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-01-02T10:51:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[func_TRegs Production from CD4],Reference=Flux>/(&lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[func_TRegs Production from CD4],Reference=Flux>+&lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[func_TRegs Production from sl_TRegs],Reference=Flux>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_47" name="Treg_origin_fraction_Treg" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-01-24T10:11:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[func_TRegs Production from sl_TRegs],Reference=Flux>/(&lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[func_TRegs Production from CD4],Reference=Flux>+&lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[func_TRegs Production from sl_TRegs],Reference=Flux>)
        </Expression>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="Tumor_Growth" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000610"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-01-29T10:59:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
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
          <Constant key="Parameter_5071" name="P" value="3"/>
          <Constant key="Parameter_5073" name="gamma" value="333"/>
          <Constant key="Parameter_5074" name="gamma1" value="0.333"/>
          <Constant key="Parameter_5068" name="m" value="0.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Robertson-Tessi M (2012),Vector=Compartments[TumorMicroenv]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="Tumor_Cell_Killing" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go.ref:GO:0001906"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-11T16:04:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5070" name="S1" value="3.5"/>
          <Constant key="Parameter_5069" name="Tx" value="1"/>
          <Constant key="Parameter_5072" name="k2" value="1.2"/>
          <Constant key="Parameter_5075" name="k3" value="11"/>
          <Constant key="Parameter_5066" name="r0" value="0.9"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Robertson-Tessi M (2012),Vector=Compartments[TumorMicroenv]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="unlicensed_DC Production" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <bqbiol:hasProperty rdf:resource="http://identifiers.org/sbo/SBO:0000393" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-01-29T11:02:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5064" name="I1" value="0.4"/>
          <Constant key="Parameter_5063" name="R1" value="2e+07"/>
          <Constant key="Parameter_5067" name="Tx" value="1"/>
          <Constant key="Parameter_5065" name="alpha" value="6.31e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=Robertson-Tessi M (2012),Vector=Compartments[TumorMicroenv]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="Dendritic Cell Licensing" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <bqmodel:isInstanceOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000656"/>
      </rdf:Bag>
    </bqmodel:isInstanceOf>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-01-29T10:54:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5040" name="lambda" value="0.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=Robertson-Tessi M (2012),Vector=Compartments[TumorMicroenv]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="shortlived_TRegs Degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-01-29T10:59:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5038" name="k1" value="0.2"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Robertson-Tessi M (2012),Vector=Compartments[TumorMicroenv]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="IL2 Production" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <bqbiol:hasProperty rdf:resource="http://identifiers.org/sbo/SBO:0000393" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-01-29T10:58:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5037" name="I2" value="0.75"/>
          <Constant key="Parameter_5041" name="S4" value="0.9"/>
          <Constant key="Parameter_5039" name="pc" value="1.7e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Robertson-Tessi M (2012),Vector=Compartments[TumorMicroenv]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="ModelValue_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="ModelValue_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="IL2 Degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-01-29T10:58:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5043" name="tc" value="0.08"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=Robertson-Tessi M (2012),Vector=Compartments[TumorMicroenv]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="ModelValue_42"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="TGFb Production" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <bqbiol:hasProperty rdf:resource="http://identifiers.org/sbo/SBO:0000393" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-01-29T10:59:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5058" name="Tx" value="1"/>
          <Constant key="Parameter_5046" name="p1" value="1.8e-08"/>
          <Constant key="Parameter_5060" name="p2" value="1.1e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Robertson-Tessi M (2012),Vector=Compartments[TumorMicroenv]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="ModelValue_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="TGFb Degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:sbo:SBO:0000179" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-01-29T10:59:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5061" name="ts" value="0.07"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default" scalingCompartment="CN=Root,Model=Robertson-Tessi M (2012),Vector=Compartments[TumorMicroenv]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="ModelValue_43"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="IL10 Production" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <bqbiol:hasProperty rdf:resource="http://identifiers.org/sbo/SBO:0000393" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-01-29T10:58:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5055" name="Tx" value="1"/>
          <Constant key="Parameter_5042" name="p3" value="1.4e-08"/>
          <Constant key="Parameter_5050" name="p4" value="1.3e-10"/>
        </ListOfConstants>
        <KineticLaw function="Function_48" unitType="Default" scalingCompartment="CN=Root,Model=Robertson-Tessi M (2012),Vector=Compartments[TumorMicroenv]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="ModelValue_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="IL10 Degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-01-29T10:58:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5057" name="t1" value="0.05"/>
        </ListOfConstants>
        <KineticLaw function="Function_49" unitType="Default" scalingCompartment="CN=Root,Model=Robertson-Tessi M (2012),Vector=Compartments[TumorMicroenv]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="ModelValue_44"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="unlicensed_DC Degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-01-29T11:00:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5044" name="k1" value="0.14"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Robertson-Tessi M (2012),Vector=Compartments[TumorMicroenv]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="licensed_DC Degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-01-29T10:58:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5056" name="k1" value="0.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Robertson-Tessi M (2012),Vector=Compartments[TumorMicroenv]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="shortlived_CD8_ETC Production" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
    <bqbiol:hasProperty rdf:resource="http://identifiers.org/sbo/SBO:0000393" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-01-29T10:59:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>ETC= Effector T cells</pre>
  </body>
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_16" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_14" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5049" name="alpha1" value="23"/>
          <Constant key="Parameter_5053" name="k4" value="0.33"/>
        </ListOfConstants>
        <KineticLaw function="Function_50" unitType="Default" scalingCompartment="CN=Root,Model=Robertson-Tessi M (2012),Vector=Compartments[TumorMicroenv]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="shortlived_CD8_ETC Degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-01-29T10:59:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5048" name="k1" value="0.2"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Robertson-Tessi M (2012),Vector=Compartments[TumorMicroenv]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="func_CD8 ETC Production" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_15">
    <bqbiol:hasProperty rdf:resource="http://identifiers.org/sbo/SBO:0000393"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-01-29T10:55:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5052" name="C1" value="0.3"/>
          <Constant key="Parameter_5051" name="S2" value="2.9"/>
          <Constant key="Parameter_5054" name="alpha2" value="16"/>
        </ListOfConstants>
        <KineticLaw function="Function_51" unitType="Default" scalingCompartment="CN=Root,Model=Robertson-Tessi M (2012),Vector=Compartments[TumorMicroenv]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_309">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_312">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="func_CD8 ETC Degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_16">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-01-29T10:55:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5059" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Robertson-Tessi M (2012),Vector=Compartments[TumorMicroenv]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="shortlived_CD4_HTC Production" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_17">
    <bqbiol:hasProperty rdf:resource="http://identifiers.org/sbo/SBO:0000393" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-01-29T10:59:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_15" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_14" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5045" name="alpha3" value="9.9"/>
          <Constant key="Parameter_5047" name="k4" value="0.33"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default" scalingCompartment="CN=Root,Model=Robertson-Tessi M (2012),Vector=Compartments[TumorMicroenv]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_313">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="shortlived_CD4_HTC Degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_18">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-01-29T10:59:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5062" name="k1" value="0.2"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Robertson-Tessi M (2012),Vector=Compartments[TumorMicroenv]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="func_CD4 HTC Production" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_19">
    <bqbiol:hasProperty rdf:resource="http://identifiers.org/sbo/SBO:0000393" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-01-29T10:54:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5076" name="C1" value="0.3"/>
          <Constant key="Parameter_5077" name="S2" value="2.9"/>
          <Constant key="Parameter_5083" name="alpha4" value="1.9"/>
        </ListOfConstants>
        <KineticLaw function="Function_53" unitType="Default" scalingCompartment="CN=Root,Model=Robertson-Tessi M (2012),Vector=Compartments[TumorMicroenv]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_324">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_323">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_320">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_319">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="shortlived_TRegs Production" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_20">
    <bqbiol:hasProperty rdf:resource="http://identifiers.org/sbo/SBO:0000393" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-01-29T10:59:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_17" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_14" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5082" name="alpha5" value="5.1"/>
          <Constant key="Parameter_5084" name="k4" value="0.33"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=Robertson-Tessi M (2012),Vector=Compartments[TumorMicroenv]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="func_TRegs Production from CD4" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-01-29T10:58:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isHomologTo>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000393"/>
      </rdf:Bag>
    </CopasiMT:isHomologTo>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5079" name="S3" value="1.7"/>
          <Constant key="Parameter_5078" name="alpha7" value="0.022"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Robertson-Tessi M (2012),Vector=Compartments[TumorMicroenv]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_332">
              <SourceParameter reference="ModelValue_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="func_CD4_HTC Degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_22">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-01-29T10:55:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5081" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Robertson-Tessi M (2012),Vector=Compartments[TumorMicroenv]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="func_TRegs Degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_23">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-01-29T10:58:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5080" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Robertson-Tessi M (2012),Vector=Compartments[TumorMicroenv]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="func_TRegs Production from sl_TRegs" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-01-29T10:58:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isHomologTo>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000393" />
      </rdf:Bag>
    </CopasiMT:isHomologTo>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5085" name="C1" value="0.3"/>
          <Constant key="Parameter_5089" name="alpha6" value="2.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_56" unitType="Default" scalingCompartment="CN=Root,Model=Robertson-Tessi M (2012),Vector=Compartments[TumorMicroenv]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_325">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012)" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Compartments[TumorMicroenv]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Compartments[TumorMicroenv],Vector=Metabolites[Source]" value="6.0221408570000002e+20" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Compartments[TumorMicroenv],Vector=Metabolites[Tumorcells]" value="6.0221408570000002e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Compartments[TumorMicroenv],Vector=Metabolites[Sink]" value="6.0221408570000002e+20" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Compartments[TumorMicroenv],Vector=Metabolites[shortlived_CD8_ETC]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Compartments[TumorMicroenv],Vector=Metabolites[func_CD8_ETC]" value="6022140857000001" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Compartments[TumorMicroenv],Vector=Metabolites[shortlived_CD4_HTC]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Compartments[TumorMicroenv],Vector=Metabolites[func_CD4_HTC]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Compartments[TumorMicroenv],Vector=Metabolites[shortlived_TRegs]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Compartments[TumorMicroenv],Vector=Metabolites[unlicensed_DC]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Compartments[TumorMicroenv],Vector=Metabolites[licensed_DC]" value="6022140857000001" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Compartments[TumorMicroenv],Vector=Metabolites[func_TRegs]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Compartments[TumorMicroenv],Vector=Metabolites[IL2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Compartments[TumorMicroenv],Vector=Metabolites[TGFb]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Compartments[TumorMicroenv],Vector=Metabolites[IL10]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Compartments[TumorMicroenv],Vector=Metabolites[MemTcell]" value="6.0221408570000006e+27" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Compartments[TumorMicroenv],Vector=Metabolites[MemHelperTcells]" value="3.6132845142000001e+27" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Compartments[TumorMicroenv],Vector=Metabolites[MemEffectorCells]" value="1.8066422571000001e+27" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Compartments[TumorMicroenv],Vector=Metabolites[RegMemTcell]" value="6.0221408570000004e+26" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[gamma]" value="333" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[m]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[gamma1]" value="0.33300000000000002" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[Tx]" value="0.999999666666889" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[k1]" value="100" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[n]" value="0.66659999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[P]" value="3" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[deltaU]" value="0.14000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[deltaD]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[deltaA]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[deltaE]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[deltaH]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[deltaR]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[k2]" value="1.2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[T1]" value="1000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[log Tumor]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[log effector]" value="-11.512925464970229" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[log Treg]" value="-INF" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[alpha]" value="6.3100000000000002e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[r0]" value="0.90000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[k3]" value="11" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[S1]" value="3.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[alpha1]" value="23" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[k4]" value="0.33000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[lambda]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[I1]" value="0.40000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[alpha6]" value="2.1000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[alpha7]" value="0.021999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[C1]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[S2]" value="2.8999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[S3]" value="1.7" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[pc]" value="1.7e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[p1]" value="1.7999999999999999e-08" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[p2]" value="1.1000000000000001e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[R1]" value="20000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[alpha2]" value="16" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[alpha3]" value="9.9000000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[alpha4]" value="1.8999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[alpha5]" value="5.0999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[p3]" value="1.4e-08" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[p4]" value="1.2999999999999999e-10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[S4]" value="0.90000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[tc]" value="0.080000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[ts]" value="0.070000000000000007" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[t1]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[I2]" value="0.75" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[Treg_origin_fraction_CD4]" value="NaN" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[Treg_origin_fraction_Treg]" value="NaN" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[Tumor_Growth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[Tumor_Growth],ParameterGroup=Parameters,Parameter=P" value="3" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[P],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[Tumor_Growth],ParameterGroup=Parameters,Parameter=gamma" value="333" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[gamma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[Tumor_Growth],ParameterGroup=Parameters,Parameter=gamma1" value="0.33300000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[gamma1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[Tumor_Growth],ParameterGroup=Parameters,Parameter=m" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[m],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[Tumor_Cell_Killing]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[Tumor_Cell_Killing],ParameterGroup=Parameters,Parameter=S1" value="3.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[S1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[Tumor_Cell_Killing],ParameterGroup=Parameters,Parameter=Tx" value="0.999999666666889" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[Tx],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[Tumor_Cell_Killing],ParameterGroup=Parameters,Parameter=k2" value="1.2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[k2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[Tumor_Cell_Killing],ParameterGroup=Parameters,Parameter=k3" value="11" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[k3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[Tumor_Cell_Killing],ParameterGroup=Parameters,Parameter=r0" value="0.90000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[r0],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[unlicensed_DC Production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[unlicensed_DC Production],ParameterGroup=Parameters,Parameter=I1" value="0.40000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[I1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[unlicensed_DC Production],ParameterGroup=Parameters,Parameter=R1" value="20000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[R1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[unlicensed_DC Production],ParameterGroup=Parameters,Parameter=Tx" value="0.999999666666889" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[Tx],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[unlicensed_DC Production],ParameterGroup=Parameters,Parameter=alpha" value="6.3100000000000002e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[alpha],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[Dendritic Cell Licensing]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[Dendritic Cell Licensing],ParameterGroup=Parameters,Parameter=lambda" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[shortlived_TRegs Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[shortlived_TRegs Degradation],ParameterGroup=Parameters,Parameter=k1" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[deltaA],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[IL2 Production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[IL2 Production],ParameterGroup=Parameters,Parameter=I2" value="0.75" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[I2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[IL2 Production],ParameterGroup=Parameters,Parameter=S4" value="0.90000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[S4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[IL2 Production],ParameterGroup=Parameters,Parameter=pc" value="1.7e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[pc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[IL2 Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[IL2 Degradation],ParameterGroup=Parameters,Parameter=tc" value="0.080000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[tc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[TGFb Production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[TGFb Production],ParameterGroup=Parameters,Parameter=Tx" value="0.999999666666889" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[Tx],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[TGFb Production],ParameterGroup=Parameters,Parameter=p1" value="1.7999999999999999e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[p1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[TGFb Production],ParameterGroup=Parameters,Parameter=p2" value="1.1000000000000001e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[p2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[TGFb Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[TGFb Degradation],ParameterGroup=Parameters,Parameter=ts" value="0.070000000000000007" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[ts],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[IL10 Production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[IL10 Production],ParameterGroup=Parameters,Parameter=Tx" value="0.999999666666889" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[Tx],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[IL10 Production],ParameterGroup=Parameters,Parameter=p3" value="1.4e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[p3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[IL10 Production],ParameterGroup=Parameters,Parameter=p4" value="1.2999999999999999e-10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[p4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[IL10 Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[IL10 Degradation],ParameterGroup=Parameters,Parameter=t1" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[t1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[unlicensed_DC Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[unlicensed_DC Degradation],ParameterGroup=Parameters,Parameter=k1" value="0.14000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[deltaU],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[licensed_DC Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[licensed_DC Degradation],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[deltaD],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[shortlived_CD8_ETC Production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[shortlived_CD8_ETC Production],ParameterGroup=Parameters,Parameter=alpha1" value="23" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[alpha1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[shortlived_CD8_ETC Production],ParameterGroup=Parameters,Parameter=k4" value="0.33000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[k4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[shortlived_CD8_ETC Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[shortlived_CD8_ETC Degradation],ParameterGroup=Parameters,Parameter=k1" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[deltaA],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[func_CD8 ETC Production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[func_CD8 ETC Production],ParameterGroup=Parameters,Parameter=C1" value="0.29999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[C1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[func_CD8 ETC Production],ParameterGroup=Parameters,Parameter=S2" value="2.8999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[S2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[func_CD8 ETC Production],ParameterGroup=Parameters,Parameter=alpha2" value="16" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[alpha2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[func_CD8 ETC Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[func_CD8 ETC Degradation],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[deltaE],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[shortlived_CD4_HTC Production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[shortlived_CD4_HTC Production],ParameterGroup=Parameters,Parameter=alpha3" value="9.9000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[alpha3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[shortlived_CD4_HTC Production],ParameterGroup=Parameters,Parameter=k4" value="0.33000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[k4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[shortlived_CD4_HTC Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[shortlived_CD4_HTC Degradation],ParameterGroup=Parameters,Parameter=k1" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[deltaA],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[func_CD4 HTC Production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[func_CD4 HTC Production],ParameterGroup=Parameters,Parameter=C1" value="0.29999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[C1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[func_CD4 HTC Production],ParameterGroup=Parameters,Parameter=S2" value="2.8999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[S2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[func_CD4 HTC Production],ParameterGroup=Parameters,Parameter=alpha4" value="1.8999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[alpha4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[shortlived_TRegs Production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[shortlived_TRegs Production],ParameterGroup=Parameters,Parameter=alpha5" value="5.0999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[alpha5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[shortlived_TRegs Production],ParameterGroup=Parameters,Parameter=k4" value="0.33000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[k4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[func_TRegs Production from CD4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[func_TRegs Production from CD4],ParameterGroup=Parameters,Parameter=S3" value="1.7" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[S3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[func_TRegs Production from CD4],ParameterGroup=Parameters,Parameter=alpha7" value="0.021999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[alpha7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[func_CD4_HTC Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[func_CD4_HTC Degradation],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[deltaH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[func_TRegs Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[func_TRegs Degradation],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[deltaR],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[func_TRegs Production from sl_TRegs]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[func_TRegs Production from sl_TRegs],ParameterGroup=Parameters,Parameter=C1" value="0.29999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[C1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Robertson-Tessi M (2012),Vector=Reactions[func_TRegs Production from sl_TRegs],ParameterGroup=Parameters,Parameter=alpha6" value="2.1000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Robertson-Tessi M (2012),Vector=Values[alpha6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
      <StateTemplateVariable objectReference="ModelValue_3"/>
      <StateTemplateVariable objectReference="ModelValue_15"/>
      <StateTemplateVariable objectReference="ModelValue_16"/>
      <StateTemplateVariable objectReference="ModelValue_17"/>
      <StateTemplateVariable objectReference="ModelValue_46"/>
      <StateTemplateVariable objectReference="ModelValue_47"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
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
    </StateTemplate>
    <InitialState type="initialState">
      0 0 0 0 0 6.0221408570000002e+20 0 0 6022140857000001 0 0 0 6022140857000001 0.33300000000000002 0.999999666666889 0 -11.512925464970229 -INF NaN NaN 6.0221408570000002e+20 6.0221408570000002e+20 6.0221408570000006e+27 3.6132845142000001e+27 1.8066422571000001e+27 6.0221408570000004e+26 1 333 0.5 100 0.66659999999999997 3 0.14000000000000001 0.5 0.20000000000000001 1 0.10000000000000001 0.10000000000000001 1.2 1000000 6.3100000000000002e-05 0.90000000000000002 11 3.5 23 0.33000000000000002 0.5 0.40000000000000002 2.1000000000000001 0.021999999999999999 0.29999999999999999 2.8999999999999999 1.7 1.7e-05 1.7999999999999999e-08 1.1000000000000001e-07 20000000 16 9.9000000000000004 1.8999999999999999 5.0999999999999996 1.4e-08 1.2999999999999999e-10 0.90000000000000002 0.080000000000000002 0.070000000000000007 0.050000000000000003 0.75 
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
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
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
  <GUI>
  </GUI>
  <SBMLReference file="22051568_Tessi.xml">
    <SBMLMap SBMLid="C1" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="Dendritic_Cell_Licensing" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="I1" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="I2" COPASIkey="ModelValue_45"/>
    <SBMLMap SBMLid="IL10" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="IL10_Degradation" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="IL10_Production" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="IL2" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="IL2_Degradation" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="IL2_Production" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="M" COPASIkey="Metabolite_14"/>
    <SBMLMap SBMLid="MISC" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="Me" COPASIkey="Metabolite_16"/>
    <SBMLMap SBMLid="Mh" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="Mr" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="P" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="Pool" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="R1" COPASIkey="ModelValue_34"/>
    <SBMLMap SBMLid="S1" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="S2" COPASIkey="ModelValue_29"/>
    <SBMLMap SBMLid="S3" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="S4" COPASIkey="ModelValue_41"/>
    <SBMLMap SBMLid="Sink" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="T1" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="TGFb" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="TGFb_Degradation" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="TGFb_Production" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="Treg_origin_fraction_CD4" COPASIkey="ModelValue_46"/>
    <SBMLMap SBMLid="Treg_origin_fraction_Treg" COPASIkey="ModelValue_47"/>
    <SBMLMap SBMLid="Tumor_Cell_Killing" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="Tumor_Growth" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="Tumorcells" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="Tx" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="alpha" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="alpha1" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="alpha2" COPASIkey="ModelValue_35"/>
    <SBMLMap SBMLid="alpha3" COPASIkey="ModelValue_36"/>
    <SBMLMap SBMLid="alpha4" COPASIkey="ModelValue_37"/>
    <SBMLMap SBMLid="alpha5" COPASIkey="ModelValue_38"/>
    <SBMLMap SBMLid="alpha6" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="alpha7" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="deltaA" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="deltaD" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="deltaE" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="deltaH" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="deltaR" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="deltaU" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="func_CD4_HTC" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="func_CD4_HTC_Degradation" COPASIkey="Reaction_22"/>
    <SBMLMap SBMLid="func_CD4_HTC_Production" COPASIkey="Reaction_19"/>
    <SBMLMap SBMLid="func_CD8_ETC" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="func_CD8_ETC_Degradation" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="func_CD8_ETC_Production" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="func_TRegs" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="func_TRegs_Degradation" COPASIkey="Reaction_23"/>
    <SBMLMap SBMLid="func_TRegs_Production_from_CD4" COPASIkey="Reaction_21"/>
    <SBMLMap SBMLid="func_TRegs_Production_from_sl_TRegs" COPASIkey="Reaction_24"/>
    <SBMLMap SBMLid="gamma" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="gamma1" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="k1" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="k2" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="k3" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="k4" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="l_DC" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="l_DC_Degradation" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="lambda" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="log_Treg" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="log_Tumor" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="log_effector" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="m" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="n" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="p1" COPASIkey="ModelValue_32"/>
    <SBMLMap SBMLid="p2" COPASIkey="ModelValue_33"/>
    <SBMLMap SBMLid="p3" COPASIkey="ModelValue_39"/>
    <SBMLMap SBMLid="p4" COPASIkey="ModelValue_40"/>
    <SBMLMap SBMLid="pc" COPASIkey="ModelValue_31"/>
    <SBMLMap SBMLid="r0" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="sl_CD4_HTC" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="sl_CD4_HTC_Degradation" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="sl_CD4_HTC_Production" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="sl_CD8_ETC" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="sl_CD8_ETC_Degradation" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="sl_CD8_ETC_Production" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="sl_TRegs" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="sl_TRegs_Degradation" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="sl_TRegs_Production" COPASIkey="Reaction_20"/>
    <SBMLMap SBMLid="t1" COPASIkey="ModelValue_44"/>
    <SBMLMap SBMLid="tc" COPASIkey="ModelValue_42"/>
    <SBMLMap SBMLid="ts" COPASIkey="ModelValue_43"/>
    <SBMLMap SBMLid="ul_DC" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="ul_DC_Degradation" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="ul_DC_Production" COPASIkey="Reaction_2"/>
  </SBMLReference>
  <ListOfUnitDefinitions>
    <UnitDefinition key="Unit_0" name="meter" symbol="m">
      <Expression>
        m
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_1" name="gram" symbol="g">
      <Expression>
        g
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
    <UnitDefinition key="Unit_34" name="day" symbol="d">
      <Expression>
        86400*s
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
