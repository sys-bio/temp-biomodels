<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.24 (Build 197) (http://www.copasi.org) at 2019-11-18 15:25:40 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="24" versionDevel="197" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_6" name="Constant flux (irreversible)" type="PreDefined" reversible="false">
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
    <Function key="Function_46" name="Function_for_AKT_Activation_IL-15" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T12:58:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        k1*y1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_271" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_269" name="y1" order="1" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="Function_for_AKT_Activation_STAT3" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T13:00:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        (
kS*y8^n2
)/(
xi28^n2+y8^n2
)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_276" name="kS" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_265" name="y8" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_283" name="n2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_282" name="xi28" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="Function_for_mTOR_Activation" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T13:08:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        (
(a3+k2*y2)*alpha1*(1-R)
)/(
alpha2*y6
)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_280" name="a3" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_290" name="k2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_304" name="y2" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_295" name="alpha1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_309" name="alpha2" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_305" name="y6" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_396" name="R" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_72" name="Function_for_HIF-1a_Hydroxylation_PHD" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_72">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T13:39:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        (
k13*K_O2*y4*(delta*y6+a11)*(1-rho6*D)
)/(
xi44+y4
)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_319" name="k13" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_354" name="K_O2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_345" name="y4" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_346" name="delta" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_336" name="y6" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_355" name="a11" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_357" name="xi44" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_397" name="rho6" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_333" name="D" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_74" name="Function_for_HIF-1a_Hydroxylation_FIH" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_74">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T13:41:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        (
k10*K_O2*phi*y4*(1-rho6*D)
)/(
xi4+y4
)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_350" name="k10" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_341" name="K_O2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_330" name="phi" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_372" name="y4" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_344" name="xi4" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_381" name="rho6" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_367" name="D" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_77" name="Function_for_HIF-1a-aOH_Hydroxylation_PHD" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_77">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T13:43:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        (
k12*K_O2*y10*(delta*y6+a11)
)/(
xi10+y10
)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_377" name="k12" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_364" name="K_O2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_382" name="y10" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_316" name="delta" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_369" name="y6" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_365" name="a11" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_353" name="xi10" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_89" name="Function_for_STAT3_Activation" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_89">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T14:08:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        (a8+k8*y3+k6*(1-rho4*D)*y1)*(1-rho3*S3)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_408" name="a8" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_379" name="k8" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_404" name="y3" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_331" name="k6" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_414" name="rho4" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_415" name="D" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_417" name="y1" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_419" name="rho3" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_421" name="S3" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells" simulationType="time" timeUnit="h" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="nmol" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:mamo:MAMO_0000046"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C12536"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C17380"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C20214"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C20517"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C28664"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:pr:PR:000003041"/>
    <bqbiol:hasTaxon rdf:resource="urn:miriam:taxonomy:9606"/>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:31681292"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T12:36:22Z</dcterms:W3CDTF>
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
      This is a mathematical model comprised of non-linear ordinary differential equations describing the dynamic relationship between hypoxia-inducible factor-1 alpha (HIF-1a) mRNA, HIF-1a protein, and interleukin-15-mediated upstream signalling events in natural killer cells from human blood. Regulatory expressions are also included for mammalian target of rapamycin (mTOR), nuclear factor-kappa beta, and signal transducer and activator of transcription 3 (STAT3).
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
        <dcterms:W3CDTF>2019-11-18T15:24:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:cl:CL:0000623"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="y1_IL-15" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T13:51:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C20517"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="y2_Akt" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T13:53:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C41625"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="y3_mTOR" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T15:04:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:pr:PR:000003041"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="y4_HIF-1a" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T15:04:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C20214"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="y5_HIF-1b" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T15:05:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C28553"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="y6_HIF-1_Complex" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T15:06:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:C20214"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:C28553"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C19398"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="y7_NF-KB" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T15:07:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C17380"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="y8_STAT3" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T15:07:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C28664"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="y9_HIF-1a_mRNA" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T15:08:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:ncit:C20214"/>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C813"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="y10_HIF-1a-aOH" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <bqbiol:hasProperty rdf:resource="urn:miriam:mod:MOD:00677"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T15:08:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C20214"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="a1" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_1" name="a2" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_2" name="a3" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_3" name="a7" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_4" name="a8" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_5" name="a9" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_6" name="a11" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T13:49:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="d8" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T12:48:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[k8],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="rho6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T13:59:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="K_O2" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_10" name="k1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T14:10:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="k2" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_12" name="k5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T13:59:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="k10" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_14" name="k11" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_15" name="k12" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_16" name="k15" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_17" name="kS" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_18" name="n2" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_19" name="xi28" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_20" name="delta" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_21" name="xi4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T12:45:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_22" name="xi44" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_23" name="a5" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_24" name="d1" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_25" name="d2" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_26" name="d3" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_27" name="d4" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_28" name="d5" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_29" name="d6" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_30" name="d7" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_31" name="d9" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_32" name="d10" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_33" name="rho3" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_34" name="rho4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_34">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T13:59:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_35" name="k3" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_36" name="k4" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_37" name="k6" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_38" name="k7" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_39" name="k8" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_40" name="k9" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_41" name="k13" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T14:51:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_42" name="k14" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_43" name="kalpha" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_44" name="xi10" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_45" name="phi" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_46" name="alpha1" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_47" name="alpha2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T14:49:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_48" name="IL-15_Fold_Change" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T13:49:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Compartments[compartment],Vector=Metabolites[y1_IL-15],Reference=Concentration>/&lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Compartments[compartment],Vector=Metabolites[y1_IL-15],Reference=InitialConcentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_49" name="D" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T14:49:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_50" name="R" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_51" name="S3" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_52" name="HIF-1a_Total_Fold_Change" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_52">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T14:10:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Compartments[compartment],Vector=Metabolites[y4_HIF-1a],Reference=Concentration>+&lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Compartments[compartment],Vector=Metabolites[y6_HIF-1_Complex],Reference=Concentration>+&lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Compartments[compartment],Vector=Metabolites[y10_HIF-1a-aOH],Reference=Concentration>)/(&lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Compartments[compartment],Vector=Metabolites[y4_HIF-1a],Reference=InitialConcentration>+&lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Compartments[compartment],Vector=Metabolites[y6_HIF-1_Complex],Reference=InitialConcentration>+&lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Compartments[compartment],Vector=Metabolites[y10_HIF-1a-aOH],Reference=InitialConcentration>)
        </Expression>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="IL-15_External_Regulation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T12:56:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000393"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7552" name="v" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="IL-15_Basal_Decay" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T12:56:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7535" name="k1" value="0.062"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="AKT_Basal_Activation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T12:57:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C64382"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5042" name="v" value="0.848"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="AKT_Activation_IL-15" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C20517"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T12:57:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C64382"/>
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
          <Constant key="Parameter_5067" name="k1" value="2e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="AKT_Activation_STAT3" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C28664"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T12:59:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C64382"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5039" name="kS" value="0.0009"/>
          <Constant key="Parameter_5048" name="n2" value="2"/>
          <Constant key="Parameter_5045" name="xi28" value="38.44"/>
        </ListOfConstants>
        <KineticLaw function="Function_48" unitType="Default" scalingCompartment="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="AKT_Decay" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T13:05:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5065" name="k1" value="0.848"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="mTOR_Activation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T13:06:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C64382"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7565" name="a3" value="0.037"/>
          <Constant key="Parameter_7512" name="k2" value="0.307"/>
          <Constant key="Parameter_7559" name="alpha1" value="1.163"/>
          <Constant key="Parameter_7528" name="alpha2" value="0.386"/>
          <Constant key="Parameter_7509" name="R" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_51" unitType="Default" scalingCompartment="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="ModelValue_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_309">
              <SourceParameter reference="ModelValue_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_396">
              <SourceParameter reference="ModelValue_50"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="mTOR_Decay" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T13:09:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7553" name="k1" value="0.919"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="STAT3_Decay" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T13:12:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5063" name="k1" value="0.577"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="NF-KB_Basal_Activation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T13:26:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C64382"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7527" name="v" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="NF-KB_Decay" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T13:30:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7540" name="k1" value="0.914"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="NF-KB_Activation_IL-15" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C20517"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T13:30:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C64382"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7562" name="k1" value="2.903"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="NF-KB_Activation_mTOR" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T13:31:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C64382"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7560" name="k1" value="0.088"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="NF-KB_Activation_HIF-1_Complex" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T13:31:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C64382"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7569" name="k1" value="16.528"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="HIF-1a_mRNA_Synthesis_Basal" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T13:32:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000183"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7573" name="v" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="HIF-1a_mRNA_Degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T13:32:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7567" name="k1" value="0.934"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="HIF-1a_mRNA_Regulation_NF-KB" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T13:33:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C64382"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7571" name="k1" value="0.753"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="HIF-1a_mRNA_Regulation_STAT3" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_20">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C28664"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T13:33:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C64382"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7566" name="k1" value="0.181"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="HIF-1a_Translation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T13:34:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000184"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7563" name="k1" value="1.034"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="HIF-1a_Decay" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T13:35:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7572" name="k1" value="0.623"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="HIF-1a_Association_HIF-1b" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T13:35:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000177"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7515" name="k1" value="76.196"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_3"/>
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="HIF-1_Complex_Dissociation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T13:37:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000180"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7516" name="k1" value="75.895"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="HIF-1a_Hydroxylation_PHD" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T13:38:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C157205"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4817" name="k13" value="12.152"/>
          <Constant key="Parameter_4823" name="K_O2" value="0.96"/>
          <Constant key="Parameter_7163" name="delta" value="200"/>
          <Constant key="Parameter_7260" name="a11" value="4.17"/>
          <Constant key="Parameter_4818" name="xi44" value="128.022"/>
          <Constant key="Parameter_7324" name="rho6" value="0.99"/>
          <Constant key="Parameter_7325" name="D" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_72" unitType="Default" scalingCompartment="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_319">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_354">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_345">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_346">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_355">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_357">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_397">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="ModelValue_49"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_26" name="HIF-1a_Hydroxylation_FIH" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T13:40:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C157205"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7564" name="k10" value="421.353"/>
          <Constant key="Parameter_7500" name="K_O2" value="0.96"/>
          <Constant key="Parameter_7492" name="phi" value="0.829"/>
          <Constant key="Parameter_7489" name="xi4" value="15.018"/>
          <Constant key="Parameter_7482" name="rho6" value="0.99"/>
          <Constant key="Parameter_7537" name="D" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_74" unitType="Default" scalingCompartment="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_350">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_341">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="ModelValue_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_372">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_344">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_381">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_367">
              <SourceParameter reference="ModelValue_49"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_27" name="HIF-1a-aOH_Dehydroxylation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_27">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C64370"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C64914"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T13:42:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7544" name="k1" value="0.211"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_28" name="HIF-1a-aOH_Hydroxylation_PHD" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T13:43:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C157205"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7503" name="k12" value="0.061"/>
          <Constant key="Parameter_7498" name="K_O2" value="0.96"/>
          <Constant key="Parameter_7504" name="delta" value="200"/>
          <Constant key="Parameter_7518" name="a11" value="4.17"/>
          <Constant key="Parameter_7496" name="xi10" value="8.127"/>
        </ListOfConstants>
        <KineticLaw function="Function_77" unitType="Default" scalingCompartment="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_377">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_364">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_382">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_369">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_365">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_353">
              <SourceParameter reference="ModelValue_44"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_29" name="HIF-1a-aOH_Decay" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T13:45:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7529" name="k1" value="0.935"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_30" name="HIF-1b_Expression_Constitutive" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T13:46:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000184"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7473" name="v" value="0.211"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_31" name="HIF-1b_Decay" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T13:46:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7472" name="k1" value="0.196"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_32" name="HIF-1_Complex_Decay" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T13:47:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7475" name="k1" value="0.301"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="STAT3_Activation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-18T14:08:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C64382"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5052" name="a8" value="0"/>
          <Constant key="Parameter_5044" name="k8" value="0.577"/>
          <Constant key="Parameter_7225" name="k6" value="25.001"/>
          <Constant key="Parameter_4822" name="rho4" value="0.863"/>
          <Constant key="Parameter_4809" name="D" value="1"/>
          <Constant key="Parameter_4807" name="rho3" value="1"/>
          <Constant key="Parameter_4810" name="S3" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_89" unitType="Default" scalingCompartment="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_408">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_379">
              <SourceParameter reference="ModelValue_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_404">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_414">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_415">
              <SourceParameter reference="ModelValue_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_417">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_419">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_421">
              <SourceParameter reference="ModelValue_51"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Compartments[compartment],Vector=Metabolites[y1_IL-15]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Compartments[compartment],Vector=Metabolites[y2_Akt]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Compartments[compartment],Vector=Metabolites[y3_mTOR]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Compartments[compartment],Vector=Metabolites[y4_HIF-1a]" value="30110704285000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Compartments[compartment],Vector=Metabolites[y5_HIF-1b]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Compartments[compartment],Vector=Metabolites[y6_HIF-1_Complex]" value="30110704285000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Compartments[compartment],Vector=Metabolites[y7_NF-KB]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Compartments[compartment],Vector=Metabolites[y8_STAT3]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Compartments[compartment],Vector=Metabolites[y9_HIF-1a_mRNA]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Compartments[compartment],Vector=Metabolites[y10_HIF-1a-aOH]" value="541992677130000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[a1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[a2]" value="0.84799999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[a3]" value="0.036999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[a7]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[a8]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[a9]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[a11]" value="4.1699999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[d8]" value="0.57699999999999996" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[rho6]" value="0.98999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[K_O2]" value="0.95999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[k1]" value="2.0000000000000002e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[k2]" value="0.307" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[k5]" value="75.894999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[k10]" value="421.35300000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[k11]" value="0.21099999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[k12]" value="0.060999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[k15]" value="0.087999999999999995" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[kS]" value="0.00089999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[n2]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[xi28]" value="38.439999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[delta]" value="200" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[xi4]" value="15.018000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[xi44]" value="128.02199999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[a5]" value="0.21099999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[d1]" value="0.062" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[d2]" value="0.84799999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[d3]" value="0.91900000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[d4]" value="0.623" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[d5]" value="0.19600000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[d6]" value="0.30099999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[d7]" value="0.91400000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[d9]" value="0.93400000000000005" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[d10]" value="0.93500000000000005" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[rho3]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[rho4]" value="0.86299999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[k3]" value="0.18099999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[k4]" value="76.195999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[k6]" value="25.001000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[k7]" value="2.903" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[k8]" value="0.57699999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[k9]" value="0.753" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[k13]" value="12.151999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[k14]" value="16.527999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[kalpha]" value="1.034" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[xi10]" value="8.1270000000000007" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[phi]" value="0.82899999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[alpha1]" value="1.163" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[alpha2]" value="0.38600000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[IL-15_Fold_Change]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[D]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[R]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[S3]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[HIF-1a_Total_Fold_Change]" value="1" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[IL-15_External_Regulation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[IL-15_External_Regulation],ParameterGroup=Parameters,Parameter=v" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[a1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[IL-15_Basal_Decay]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[IL-15_Basal_Decay],ParameterGroup=Parameters,Parameter=k1" value="0.062" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[d1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[AKT_Basal_Activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[AKT_Basal_Activation],ParameterGroup=Parameters,Parameter=v" value="0.84799999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[a2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[AKT_Activation_IL-15]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[AKT_Activation_IL-15],ParameterGroup=Parameters,Parameter=k1" value="2.0000000000000002e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[k1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[AKT_Activation_STAT3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[AKT_Activation_STAT3],ParameterGroup=Parameters,Parameter=kS" value="0.00089999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[kS],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[AKT_Activation_STAT3],ParameterGroup=Parameters,Parameter=n2" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[n2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[AKT_Activation_STAT3],ParameterGroup=Parameters,Parameter=xi28" value="38.439999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[xi28],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[AKT_Decay]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[AKT_Decay],ParameterGroup=Parameters,Parameter=k1" value="0.84799999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[d2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[mTOR_Activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[mTOR_Activation],ParameterGroup=Parameters,Parameter=a3" value="0.036999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[a3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[mTOR_Activation],ParameterGroup=Parameters,Parameter=k2" value="0.307" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[k2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[mTOR_Activation],ParameterGroup=Parameters,Parameter=alpha1" value="1.163" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[alpha1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[mTOR_Activation],ParameterGroup=Parameters,Parameter=alpha2" value="0.38600000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[alpha2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[mTOR_Activation],ParameterGroup=Parameters,Parameter=R" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[R],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[mTOR_Decay]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[mTOR_Decay],ParameterGroup=Parameters,Parameter=k1" value="0.91900000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[d3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[STAT3_Decay]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[STAT3_Decay],ParameterGroup=Parameters,Parameter=k1" value="0.57699999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[d8],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[NF-KB_Basal_Activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[NF-KB_Basal_Activation],ParameterGroup=Parameters,Parameter=v" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[a7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[NF-KB_Decay]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[NF-KB_Decay],ParameterGroup=Parameters,Parameter=k1" value="0.91400000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[d7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[NF-KB_Activation_IL-15]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[NF-KB_Activation_IL-15],ParameterGroup=Parameters,Parameter=k1" value="2.903" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[k7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[NF-KB_Activation_mTOR]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[NF-KB_Activation_mTOR],ParameterGroup=Parameters,Parameter=k1" value="0.087999999999999995" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[k15],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[NF-KB_Activation_HIF-1_Complex]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[NF-KB_Activation_HIF-1_Complex],ParameterGroup=Parameters,Parameter=k1" value="16.527999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[k14],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[HIF-1a_mRNA_Synthesis_Basal]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[HIF-1a_mRNA_Synthesis_Basal],ParameterGroup=Parameters,Parameter=v" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[a9],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[HIF-1a_mRNA_Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[HIF-1a_mRNA_Degradation],ParameterGroup=Parameters,Parameter=k1" value="0.93400000000000005" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[d9],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[HIF-1a_mRNA_Regulation_NF-KB]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[HIF-1a_mRNA_Regulation_NF-KB],ParameterGroup=Parameters,Parameter=k1" value="0.753" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[k9],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[HIF-1a_mRNA_Regulation_STAT3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[HIF-1a_mRNA_Regulation_STAT3],ParameterGroup=Parameters,Parameter=k1" value="0.18099999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[k3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[HIF-1a_Translation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[HIF-1a_Translation],ParameterGroup=Parameters,Parameter=k1" value="1.034" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[kalpha],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[HIF-1a_Decay]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[HIF-1a_Decay],ParameterGroup=Parameters,Parameter=k1" value="0.623" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[d4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[HIF-1a_Association_HIF-1b]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[HIF-1a_Association_HIF-1b],ParameterGroup=Parameters,Parameter=k1" value="76.195999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[k4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[HIF-1_Complex_Dissociation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[HIF-1_Complex_Dissociation],ParameterGroup=Parameters,Parameter=k1" value="75.894999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[k5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[HIF-1a_Hydroxylation_PHD]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[HIF-1a_Hydroxylation_PHD],ParameterGroup=Parameters,Parameter=k13" value="12.151999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[k13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[HIF-1a_Hydroxylation_PHD],ParameterGroup=Parameters,Parameter=K_O2" value="0.95999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[K_O2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[HIF-1a_Hydroxylation_PHD],ParameterGroup=Parameters,Parameter=delta" value="200" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[delta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[HIF-1a_Hydroxylation_PHD],ParameterGroup=Parameters,Parameter=a11" value="4.1699999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[a11],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[HIF-1a_Hydroxylation_PHD],ParameterGroup=Parameters,Parameter=xi44" value="128.02199999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[xi44],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[HIF-1a_Hydroxylation_PHD],ParameterGroup=Parameters,Parameter=rho6" value="0.98999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[rho6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[HIF-1a_Hydroxylation_PHD],ParameterGroup=Parameters,Parameter=D" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[D],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[HIF-1a_Hydroxylation_FIH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[HIF-1a_Hydroxylation_FIH],ParameterGroup=Parameters,Parameter=k10" value="421.35300000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[k10],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[HIF-1a_Hydroxylation_FIH],ParameterGroup=Parameters,Parameter=K_O2" value="0.95999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[K_O2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[HIF-1a_Hydroxylation_FIH],ParameterGroup=Parameters,Parameter=phi" value="0.82899999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[phi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[HIF-1a_Hydroxylation_FIH],ParameterGroup=Parameters,Parameter=xi4" value="15.018000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[xi4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[HIF-1a_Hydroxylation_FIH],ParameterGroup=Parameters,Parameter=rho6" value="0.98999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[rho6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[HIF-1a_Hydroxylation_FIH],ParameterGroup=Parameters,Parameter=D" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[D],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[HIF-1a-aOH_Dehydroxylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[HIF-1a-aOH_Dehydroxylation],ParameterGroup=Parameters,Parameter=k1" value="0.21099999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[k11],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[HIF-1a-aOH_Hydroxylation_PHD]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[HIF-1a-aOH_Hydroxylation_PHD],ParameterGroup=Parameters,Parameter=k12" value="0.060999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[k12],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[HIF-1a-aOH_Hydroxylation_PHD],ParameterGroup=Parameters,Parameter=K_O2" value="0.95999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[K_O2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[HIF-1a-aOH_Hydroxylation_PHD],ParameterGroup=Parameters,Parameter=delta" value="200" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[delta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[HIF-1a-aOH_Hydroxylation_PHD],ParameterGroup=Parameters,Parameter=a11" value="4.1699999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[a11],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[HIF-1a-aOH_Hydroxylation_PHD],ParameterGroup=Parameters,Parameter=xi10" value="8.1270000000000007" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[xi10],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[HIF-1a-aOH_Decay]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[HIF-1a-aOH_Decay],ParameterGroup=Parameters,Parameter=k1" value="0.93500000000000005" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[d10],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[HIF-1b_Expression_Constitutive]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[HIF-1b_Expression_Constitutive],ParameterGroup=Parameters,Parameter=v" value="0.21099999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[a5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[HIF-1b_Decay]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[HIF-1b_Decay],ParameterGroup=Parameters,Parameter=k1" value="0.19600000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[d5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[HIF-1_Complex_Decay]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[HIF-1_Complex_Decay],ParameterGroup=Parameters,Parameter=k1" value="0.30099999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[d6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[STAT3_Activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[STAT3_Activation],ParameterGroup=Parameters,Parameter=a8" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[a8],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[STAT3_Activation],ParameterGroup=Parameters,Parameter=k8" value="0.57699999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[k8],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[STAT3_Activation],ParameterGroup=Parameters,Parameter=k6" value="25.001000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[k6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[STAT3_Activation],ParameterGroup=Parameters,Parameter=rho4" value="0.86299999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[rho4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[STAT3_Activation],ParameterGroup=Parameters,Parameter=D" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[D],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[STAT3_Activation],ParameterGroup=Parameters,Parameter=rho3" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[rho3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Reactions[STAT3_Activation],ParameterGroup=Parameters,Parameter=S3" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[S3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="ModelValue_7"/>
      <StateTemplateVariable objectReference="ModelValue_48"/>
      <StateTemplateVariable objectReference="ModelValue_52"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
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
      <StateTemplateVariable objectReference="ModelValue_49"/>
      <StateTemplateVariable objectReference="ModelValue_50"/>
      <StateTemplateVariable objectReference="ModelValue_51"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 30110704285000 602214085700000 602214085700000 602214085700000 602214085700000 541992677130000 602214085700000 602214085700000 602214085700000 30110704285000 0.57699999999999996 1 1 1 0 0.84799999999999998 0.036999999999999998 0 0 0 4.1699999999999999 0.98999999999999999 0.95999999999999996 2.0000000000000002e-05 0.307 75.894999999999996 421.35300000000001 0.21099999999999999 0.060999999999999999 0.087999999999999995 0.00089999999999999998 2 38.439999999999998 200 15.018000000000001 128.02199999999999 0.21099999999999999 0.062 0.84799999999999998 0.91900000000000004 0.623 0.19600000000000001 0.30099999999999999 0.91400000000000003 0.93400000000000005 0.93500000000000005 1 0.86299999999999999 0.18099999999999999 76.195999999999998 25.001000000000001 2.903 0.57699999999999996 0.753 12.151999999999999 16.527999999999999 1.034 8.1270000000000007 0.82899999999999996 1.163 0.38600000000000001 1 0 0 
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
        <Parameter name="StepSize" type="float" value="0.029999999999999999"/>
        <Parameter name="Duration" type="float" value="30"/>
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
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="10"/>
            <Parameter name="Type" type="unsignedInteger" value="1"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[a1],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="0"/>
            <Parameter name="Maximum" type="float" value="10"/>
            <Parameter name="log" type="bool" value="0"/>
          </ParameterGroup>
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
    <PlotSpecification name="Coulibaly2019_Figure_6_Left" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[IL-15_Fold_Change]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[IL-15_Fold_Change],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Coulibaly2019_Figure_6_Middle" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[HIF-1a_Total_Fold_Change]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[HIF-1a_Total_Fold_Change],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Coulibaly2019_Figure_6_Right" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[HIF-1a_Total_Fold_Change]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Coulibaly2019 - Interleukin-15 Signaling in HIF-1a Regulation in Natural Killer Cells,Vector=Values[HIF-1a_Total_Fold_Change],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="Coulibaly2019.xml">
    <SBMLMap SBMLid="AKT_Activation_IL_15" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="AKT_Activation_STAT3" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="AKT_Basal_Activation" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="AKT_Decay" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="Constant_flux__irreversible" COPASIkey="Function_6"/>
    <SBMLMap SBMLid="D" COPASIkey="ModelValue_49"/>
    <SBMLMap SBMLid="Function_for_AKT_Activation_IL_15" COPASIkey="Function_46"/>
    <SBMLMap SBMLid="Function_for_AKT_Activation_STAT3" COPASIkey="Function_48"/>
    <SBMLMap SBMLid="Function_for_HIF_1a_Hydroxylation_FIH" COPASIkey="Function_74"/>
    <SBMLMap SBMLid="Function_for_HIF_1a_Hydroxylation_PHD" COPASIkey="Function_72"/>
    <SBMLMap SBMLid="Function_for_HIF_1a_aOH_Hydroxylation_PHD" COPASIkey="Function_77"/>
    <SBMLMap SBMLid="Function_for_STAT3_Activation" COPASIkey="Function_89"/>
    <SBMLMap SBMLid="Function_for_mTOR_Activation" COPASIkey="Function_51"/>
    <SBMLMap SBMLid="HIF_1_Complex_Decay" COPASIkey="Reaction_32"/>
    <SBMLMap SBMLid="HIF_1_Complex_Dissociation" COPASIkey="Reaction_24"/>
    <SBMLMap SBMLid="HIF_1a_Association_HIF_1b" COPASIkey="Reaction_23"/>
    <SBMLMap SBMLid="HIF_1a_Decay" COPASIkey="Reaction_22"/>
    <SBMLMap SBMLid="HIF_1a_Hydroxylation_FIH" COPASIkey="Reaction_26"/>
    <SBMLMap SBMLid="HIF_1a_Hydroxylation_PHD" COPASIkey="Reaction_25"/>
    <SBMLMap SBMLid="HIF_1a_Total_Fold_Change" COPASIkey="ModelValue_52"/>
    <SBMLMap SBMLid="HIF_1a_Translation" COPASIkey="Reaction_21"/>
    <SBMLMap SBMLid="HIF_1a_aOH_Decay" COPASIkey="Reaction_29"/>
    <SBMLMap SBMLid="HIF_1a_aOH_Dehydroxylation" COPASIkey="Reaction_27"/>
    <SBMLMap SBMLid="HIF_1a_aOH_Hydroxylation_PHD" COPASIkey="Reaction_28"/>
    <SBMLMap SBMLid="HIF_1a_mRNA_Degradation" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="HIF_1a_mRNA_Regulation_NF_KB" COPASIkey="Reaction_19"/>
    <SBMLMap SBMLid="HIF_1a_mRNA_Regulation_STAT3" COPASIkey="Reaction_20"/>
    <SBMLMap SBMLid="HIF_1a_mRNA_Synthesis_Basal" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="HIF_1b_Decay" COPASIkey="Reaction_31"/>
    <SBMLMap SBMLid="HIF_1b_Expression_Constitutive" COPASIkey="Reaction_30"/>
    <SBMLMap SBMLid="IL_15_Basal_Decay" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="IL_15_External_Regulation" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="IL_15_Fold_Change" COPASIkey="ModelValue_48"/>
    <SBMLMap SBMLid="K_O2" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="NF_KB_Activation_HIF_1_Complex" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="NF_KB_Activation_IL_15" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="NF_KB_Activation_mTOR" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="NF_KB_Basal_Activation" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="NF_KB_Decay" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="R" COPASIkey="ModelValue_50"/>
    <SBMLMap SBMLid="S3" COPASIkey="ModelValue_51"/>
    <SBMLMap SBMLid="STAT3_Activation" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="STAT3_Decay" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="a1" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="a11" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="a2" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="a3" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="a5" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="a7" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="a8" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="a9" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="alpha1" COPASIkey="ModelValue_46"/>
    <SBMLMap SBMLid="alpha2" COPASIkey="ModelValue_47"/>
    <SBMLMap SBMLid="compartment" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="d1" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="d10" COPASIkey="ModelValue_32"/>
    <SBMLMap SBMLid="d2" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="d3" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="d4" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="d5" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="d6" COPASIkey="ModelValue_29"/>
    <SBMLMap SBMLid="d7" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="d8" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="d9" COPASIkey="ModelValue_31"/>
    <SBMLMap SBMLid="delta" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="k1" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="k10" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="k11" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="k12" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="k13" COPASIkey="ModelValue_41"/>
    <SBMLMap SBMLid="k14" COPASIkey="ModelValue_42"/>
    <SBMLMap SBMLid="k15" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="k2" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="k3" COPASIkey="ModelValue_35"/>
    <SBMLMap SBMLid="k4" COPASIkey="ModelValue_36"/>
    <SBMLMap SBMLid="k5" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="k6" COPASIkey="ModelValue_37"/>
    <SBMLMap SBMLid="k7" COPASIkey="ModelValue_38"/>
    <SBMLMap SBMLid="k8" COPASIkey="ModelValue_39"/>
    <SBMLMap SBMLid="k9" COPASIkey="ModelValue_40"/>
    <SBMLMap SBMLid="kS" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="kalpha" COPASIkey="ModelValue_43"/>
    <SBMLMap SBMLid="mTOR_Activation" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="mTOR_Decay" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="n2" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="phi" COPASIkey="ModelValue_45"/>
    <SBMLMap SBMLid="rho3" COPASIkey="ModelValue_33"/>
    <SBMLMap SBMLid="rho4" COPASIkey="ModelValue_34"/>
    <SBMLMap SBMLid="rho6" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="xi10" COPASIkey="ModelValue_44"/>
    <SBMLMap SBMLid="xi28" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="xi4" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="xi44" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="y10_HIF_1a_aOH" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="y1_IL_15" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="y2_Akt" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="y3_mTOR" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="y4_HIF_1a" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="y5_HIF_1b" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="y6_HIF_1_Complex" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="y7_NF_KB" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="y8_STAT3" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="y9_HIF_1a_mRNA" COPASIkey="Metabolite_8"/>
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
