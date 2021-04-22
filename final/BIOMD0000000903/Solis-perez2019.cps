<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.24 (Build 197) (http://www.copasi.org) at 2019-12-18 14:24:37 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="24" versionDevel="197" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_42" name="Function for formation of Stem cell" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-18T13:18:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        k1 * C * (1- C/M1) + (p1 * C *E)/(a1 + C)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_277" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_271" name="C" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_275" name="M1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_276" name="p1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_282" name="E" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_284" name="a1" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="Function for removal of stem cell from the system" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-18T13:20:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        gamma1 * I * C
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_270" name="gamma1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_262" name="I" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_267" name="C" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="Function for induction of tumor cell" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-18T13:21:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        k2 * C * (C / M1) * (1 - T/M2) + (p2 * T * E)/(a2 +T)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_266" name="k2" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_288" name="C" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_273" name="M1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_295" name="T" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_296" name="M2" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_306" name="p2" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_308" name="E" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_310" name="a2" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="Function for removal of tumor cell" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-18T13:23:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        n1 * T + gamma2 * I * T
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_299" name="n1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_286" name="T" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_291" name="gamma2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_301" name="I" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="Function for increase in healthy cell in the system" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-18T13:24:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        q * H * (1- H/M3)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_265" name="q" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_322" name="H" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_302" name="M3" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="Function for decrease in healthy cell" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_53">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-18T13:26:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        delta * H * T + (p3 * H * E)/(a3 + H)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_285" name="delta" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_300" name="H" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_335" name="T" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_324" name="p3" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_319" name="E" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_336" name="a3" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="Function for increase in tumor cell against cancer" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_55">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-18T13:28:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        s + (p * I * T)/(w + T)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_343" name="s" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_307" name="p" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_333" name="I" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_351" name="T" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_354" name="w" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="Function for decrease in immune cell" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_57">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-18T13:29:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        gamma3 * I * T + n2 * I + (u * I * E) /(v +E)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_340" name="gamma3" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_334" name="I" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_345" name="T" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_358" name="n2" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_357" name="u" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_348" name="E" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_362" name="v" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_59" name="Function for increase in excess strogen" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_59">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-18T13:35:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        tau
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_318" name="tau" order="0" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_61" name="Function for decrease in strogen content" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_61">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-18T13:35:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        (mu + (d1 * C)/(a1 + C) + (d2 * T)/(a2 + T) + (d3 * H)/ (a3 + H)) * E
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_384" name="mu" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_379" name="d1" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_373" name="C" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_369" name="a1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_368" name="d2" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_383" name="T" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_386" name="a2" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_388" name="d3" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_390" name="H" order="8" role="modifier"/>
        <ParameterDescription key="FunctionParameter_392" name="a3" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_394" name="E" order="10" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_0" name="Solis-perez2019 - A fractional mathematical model of breast cancer competition model" simulationType="time" timeUnit="d" volumeUnit="ml" areaUnit="m²" lengthUnit="m" quantityUnit="mmol" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_0">
    <bqbiol:hasProperty rdf:resource="urn:miriam:mamo:MAMO_0000046"/>
    <bqbiol:hasTaxon rdf:resource="urn:miriam:taxonomy:9606"/>
    <bqmodel:isDescribedBy rdf:resource="urn:miriam:ncit:C4872"/>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>A fractional mathematical model of breast cancer competition model</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1016/j.chaos.2019.06.027"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-17T16:57:42Z</dcterms:W3CDTF>
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
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-18T14:24:26</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      A fractional mathematical model of breast cancer competition model
Author links open overlay panelJ.E.Solís-PérezaJ.F.Gómez-Aguilar
bA.Atanganac

a
    Tecnológico Nacional de México/CENIDET. Interior Internado Palmira S/N, Col. Palmira, C.P. 62490, Cuernavaca, Morelos, México

b
    CONACyT-Tecnológico Nacional de México/CENIDET. Interior Internado Palmira S/N, Col. Palmira, C.P. 62490, Cuernavaca, Morelos, México

c
    Institute for Groundwater Studies, Faculty of Natural and Agricultural Sciences, University of the Free State, Bloemfontein 9300, South Africa



Abstract

In this paper, a mathematical model which considers population dynamics among cancer stem cells, tumor cells, healthy cells, the effects of excess estrogen and the body’s natural immune response on the cell populations was considered. Fractional derivatives with power law and exponential decay law in Liouville–Caputo sense were considered. Special solutions using an iterative scheme via Laplace transform were obtained. Furthermore, numerical simulations of the model considering both derivatives were obtained using the Atangana–Toufik numerical method. Also, random model described by a system of random differential equations was presented. The use of fractional derivatives provides more useful information about the complexity of the dynamics of the breast cancer competition model.
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="compartment" simulationType="fixed" dimensionality="3" addNoise="false">
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="C" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <bqmodel:isDescribedBy rdf:resource="urn:miriam:bto:BTO:0006293"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-18T13:50:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="T" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <bqmodel:isDescribedBy rdf:resource="urn:miriam:ncit:C12922"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-18T14:21:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="H" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C115935"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-18T14:17:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="I" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <bqmodel:isDescribedBy rdf:resource="urn:miriam:ncit:C132890"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-18T14:20:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="E" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-18T14:17:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="k1" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_1" name="k2" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_2" name="q" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_3" name="M1" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_4" name="M2" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_5" name="M3" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_6" name="gamma1" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_7" name="gamma2" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_8" name="gamma3" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_9" name="p1" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_10" name="p2" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_11" name="p3" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_12" name="a1" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_13" name="a2" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_14" name="a3" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_15" name="n1" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_16" name="n2" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_17" name="delta" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_18" name="s" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_19" name="p" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_20" name="w" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_21" name="u" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_22" name="v" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_23" name="tau" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_24" name="d1" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_25" name="d2" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_26" name="d3" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_27" name="mu" simulationType="fixed" addNoise="false">
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="Formation of Stem cell" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <bqmodel:isDescribedBy rdf:resource="urn:miriam:ncit:C25513"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-18T13:17:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4940" name="k1" value="0.75"/>
          <Constant key="Parameter_4941" name="M1" value="2.27e+06"/>
          <Constant key="Parameter_4935" name="p1" value="600"/>
          <Constant key="Parameter_4937" name="a1" value="1.135e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="Removal of stem cell from the system" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <bqmodel:isDescribedBy rdf:resource="urn:miriam:ncit:C64914"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-18T13:19:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
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
          <Constant key="Parameter_4936" name="gamma1" value="3e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="Induction of tumor cell" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <bqmodel:isDescribedBy rdf:resource="urn:miriam:ncit:C25533"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-18T13:20:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4939" name="k2" value="0.514"/>
          <Constant key="Parameter_4942" name="M1" value="2.27e+06"/>
          <Constant key="Parameter_4933" name="M2" value="2.27e+07"/>
          <Constant key="Parameter_4931" name="p2" value="0"/>
          <Constant key="Parameter_4930" name="a2" value="1.135e+07"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default" scalingCompartment="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="Removal of tumor cell y immune cell and other immune response" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <bqmodel:isDescribedBy rdf:resource="urn:miriam:ncit:C64914"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-18T13:22:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
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
          <Constant key="Parameter_4934" name="n1" value="0.01"/>
          <Constant key="Parameter_4932" name="gamma2" value="3e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_49" unitType="Default" scalingCompartment="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="Increase in the healthy cell in the system" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <bqmodel:isDescribedBy rdf:resource="urn:miriam:ncit:C25533"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-18T13:24:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4907" name="q" value="0.7"/>
          <Constant key="Parameter_4905" name="M3" value="2.5e+07"/>
        </ListOfConstants>
        <KineticLaw function="Function_51" unitType="Default" scalingCompartment="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="Decrase of healthy cell due to cancer" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <bqmodel:isDescribedBy rdf:resource="urn:miriam:ncit:C25640"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-18T13:25:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4904" name="delta" value="6e-08"/>
          <Constant key="Parameter_4908" name="p3" value="100"/>
          <Constant key="Parameter_4906" name="a3" value="1.25e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_53" unitType="Default" scalingCompartment="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_324">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_319">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="Increase in immune cell against tumor" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <bqmodel:isDescribedBy rdf:resource="urn:miriam:ncit:C25533"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-18T13:28:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4798" name="s" value="13000"/>
          <Constant key="Parameter_4775" name="p" value="0.2"/>
          <Constant key="Parameter_4923" name="w" value="300000"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_343">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_351">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_354">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="Decrease in the density of immune cell that provide immune response" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <bqmodel:isDescribedBy rdf:resource="urn:miriam:ncit:C25640"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-18T13:29:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4911" name="gamma3" value="1e-07"/>
          <Constant key="Parameter_4924" name="n2" value="0.29"/>
          <Constant key="Parameter_4916" name="u" value="0.2"/>
          <Constant key="Parameter_4920" name="v" value="400"/>
        </ListOfConstants>
        <KineticLaw function="Function_57" unitType="Default" scalingCompartment="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_340">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_345">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_358">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_357">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_348">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_362">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="Increase in Excess strogen" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <bqmodel:isDescribedBy rdf:resource="urn:miriam:ncit:C25533"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-18T13:34:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4915" name="tau" value="2700"/>
        </ListOfConstants>
        <KineticLaw function="Function_59" unitType="Default" scalingCompartment="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="Decrease in strogen content" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <bqmodel:isDescribedBy rdf:resource="urn:miriam:ncit:C25640"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-18T13:35:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4919" name="mu" value="0.97"/>
          <Constant key="Parameter_4918" name="d1" value="0.01"/>
          <Constant key="Parameter_4921" name="a1" value="1.135e+06"/>
          <Constant key="Parameter_4912" name="d2" value="0.01"/>
          <Constant key="Parameter_4929" name="a2" value="1.135e+07"/>
          <Constant key="Parameter_4943" name="d3" value="0.01"/>
          <Constant key="Parameter_4926" name="a3" value="1.25e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_61" unitType="Default" scalingCompartment="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_384">
              <SourceParameter reference="ModelValue_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_379">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_373">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_369">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_368">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_383">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_386">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_388">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_390">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_392">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_394">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Compartments[compartment],Vector=Metabolites[C]" value="4.4389200256946999e+26" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Compartments[compartment],Vector=Metabolites[T]" value="4.5868840265511902e+27" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Compartments[compartment],Vector=Metabolites[H]" value="1.50553521425e+28" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Compartments[compartment],Vector=Metabolites[I]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Compartments[compartment],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Values[k1]" value="0.75" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Values[k2]" value="0.51400000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Values[q]" value="0.69999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Values[M1]" value="2270000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Values[M2]" value="22700000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Values[M3]" value="25000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Values[gamma1]" value="2.9999999999999999e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Values[gamma2]" value="3.0000000000000001e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Values[gamma3]" value="9.9999999999999995e-08" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Values[p1]" value="600" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Values[p2]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Values[p3]" value="100" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Values[a1]" value="1135000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Values[a2]" value="11350000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Values[a3]" value="1250000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Values[n1]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Values[n2]" value="0.28999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Values[delta]" value="5.9999999999999995e-08" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Values[s]" value="13000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Values[p]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Values[w]" value="300000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Values[u]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Values[v]" value="400" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Values[tau]" value="2700" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Values[d1]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Values[d2]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Values[d3]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Values[mu]" value="0.96999999999999997" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Reactions[Formation of Stem cell]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Reactions[Formation of Stem cell],ParameterGroup=Parameters,Parameter=k1" value="0.75" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Values[k1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Reactions[Formation of Stem cell],ParameterGroup=Parameters,Parameter=M1" value="2270000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Values[M1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Reactions[Formation of Stem cell],ParameterGroup=Parameters,Parameter=p1" value="600" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Values[p1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Reactions[Formation of Stem cell],ParameterGroup=Parameters,Parameter=a1" value="1135000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Values[a1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Reactions[Removal of stem cell from the system]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Reactions[Removal of stem cell from the system],ParameterGroup=Parameters,Parameter=gamma1" value="2.9999999999999999e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Values[gamma1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Reactions[Induction of tumor cell]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Reactions[Induction of tumor cell],ParameterGroup=Parameters,Parameter=k2" value="0.51400000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Values[k2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Reactions[Induction of tumor cell],ParameterGroup=Parameters,Parameter=M1" value="2270000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Values[M1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Reactions[Induction of tumor cell],ParameterGroup=Parameters,Parameter=M2" value="22700000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Values[M2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Reactions[Induction of tumor cell],ParameterGroup=Parameters,Parameter=p2" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Values[p2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Reactions[Induction of tumor cell],ParameterGroup=Parameters,Parameter=a2" value="11350000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Values[a2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Reactions[Removal of tumor cell y immune cell and other immune response]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Reactions[Removal of tumor cell y immune cell and other immune response],ParameterGroup=Parameters,Parameter=n1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Values[n1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Reactions[Removal of tumor cell y immune cell and other immune response],ParameterGroup=Parameters,Parameter=gamma2" value="3.0000000000000001e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Values[gamma2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Reactions[Increase in the healthy cell in the system]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Reactions[Increase in the healthy cell in the system],ParameterGroup=Parameters,Parameter=q" value="0.69999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Values[q],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Reactions[Increase in the healthy cell in the system],ParameterGroup=Parameters,Parameter=M3" value="25000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Values[M3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Reactions[Decrase of healthy cell due to cancer]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Reactions[Decrase of healthy cell due to cancer],ParameterGroup=Parameters,Parameter=delta" value="5.9999999999999995e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Values[delta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Reactions[Decrase of healthy cell due to cancer],ParameterGroup=Parameters,Parameter=p3" value="100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Values[p3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Reactions[Decrase of healthy cell due to cancer],ParameterGroup=Parameters,Parameter=a3" value="1250000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Values[a3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Reactions[Increase in immune cell against tumor]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Reactions[Increase in immune cell against tumor],ParameterGroup=Parameters,Parameter=s" value="13000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Values[s],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Reactions[Increase in immune cell against tumor],ParameterGroup=Parameters,Parameter=p" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Values[p],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Reactions[Increase in immune cell against tumor],ParameterGroup=Parameters,Parameter=w" value="300000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Values[w],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Reactions[Decrease in the density of immune cell that provide immune response]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Reactions[Decrease in the density of immune cell that provide immune response],ParameterGroup=Parameters,Parameter=gamma3" value="9.9999999999999995e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Values[gamma3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Reactions[Decrease in the density of immune cell that provide immune response],ParameterGroup=Parameters,Parameter=n2" value="0.28999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Values[n2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Reactions[Decrease in the density of immune cell that provide immune response],ParameterGroup=Parameters,Parameter=u" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Values[u],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Reactions[Decrease in the density of immune cell that provide immune response],ParameterGroup=Parameters,Parameter=v" value="400" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Values[v],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Reactions[Increase in Excess strogen]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Reactions[Increase in Excess strogen],ParameterGroup=Parameters,Parameter=tau" value="2700" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Values[tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Reactions[Decrease in strogen content]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Reactions[Decrease in strogen content],ParameterGroup=Parameters,Parameter=mu" value="0.96999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Reactions[Decrease in strogen content],ParameterGroup=Parameters,Parameter=d1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Values[d1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Reactions[Decrease in strogen content],ParameterGroup=Parameters,Parameter=a1" value="1135000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Values[a1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Reactions[Decrease in strogen content],ParameterGroup=Parameters,Parameter=d2" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Values[d2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Reactions[Decrease in strogen content],ParameterGroup=Parameters,Parameter=a2" value="11350000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Values[a2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Reactions[Decrease in strogen content],ParameterGroup=Parameters,Parameter=d3" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Values[d3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Reactions[Decrease in strogen content],ParameterGroup=Parameters,Parameter=a3" value="1250000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Values[a3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
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
    </StateTemplate>
    <InitialState type="initialState">
      0 4.4389200256946999e+26 4.5868840265511902e+27 1.50553521425e+28 0 0 1 0.75 0.51400000000000001 0.69999999999999996 2270000 22700000 25000000 2.9999999999999999e-07 3.0000000000000001e-06 9.9999999999999995e-08 600 0 100 1135000 11350000 1250000 0.01 0.28999999999999998 5.9999999999999995e-08 13000 0.20000000000000001 300000 0.20000000000000001 400 2700 0.01 0.01 0.01 0.96999999999999997 
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
        <PlotItem name="[C]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Compartments[compartment],Vector=Metabolites[C],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[T]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[H]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Compartments[compartment],Vector=Metabolites[H],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[I]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[E]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Solis-perez2019 - A fractional mathematical model of breast cancer competition model,Vector=Compartments[compartment],Vector=Metabolites[E],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="Solis-perez2019.xml">
    <SBMLMap SBMLid="C" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="Decrase_of_healthy_cell_due_to_cancer" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="Decrease_in_strogen_content" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="Decrease_in_the_density_of_immune_cell_that_provide_immune_response" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="E" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="Formation_of_Stem_cell" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="Function_for_decrease_in_healthy_cell" COPASIkey="Function_53"/>
    <SBMLMap SBMLid="Function_for_decrease_in_immune_cell" COPASIkey="Function_57"/>
    <SBMLMap SBMLid="Function_for_decrease_in_strogen_content" COPASIkey="Function_61"/>
    <SBMLMap SBMLid="Function_for_formation_of_Stem_cell" COPASIkey="Function_42"/>
    <SBMLMap SBMLid="Function_for_increase_in_excess_strogen" COPASIkey="Function_59"/>
    <SBMLMap SBMLid="Function_for_increase_in_healthy_cell_in_the_system" COPASIkey="Function_51"/>
    <SBMLMap SBMLid="Function_for_increase_in_tumor_cell_against_cancer" COPASIkey="Function_55"/>
    <SBMLMap SBMLid="Function_for_induction_of_tumor_cell" COPASIkey="Function_47"/>
    <SBMLMap SBMLid="Function_for_removal_of_stem_cell_from_the_system" COPASIkey="Function_45"/>
    <SBMLMap SBMLid="Function_for_removal_of_tumor_cell" COPASIkey="Function_49"/>
    <SBMLMap SBMLid="H" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="I" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="Increase_in_Excess_strogen" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="Increase_in_immune_cell_against_tumor" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="Increase_in_the_healthy_cell_in_the_system" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="Induction_of_tumor_cell" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="M1" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="M2" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="M3" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="Removal_of_stem_cell_from_the_system" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="Removal_of_tumor_cell_y_immune_cell_and_other_immune_response" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="T" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="a1" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="a2" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="a3" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="compartment" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="d1" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="d2" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="d3" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="delta" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="gamma1" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="gamma2" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="gamma3" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="k1" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="k2" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="mu" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="n1" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="n2" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="p" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="p1" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="p2" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="p3" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="q" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="s" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="tau" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="u" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="v" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="w" COPASIkey="ModelValue_20"/>
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
    <UnitDefinition key="Unit_34" name="day" symbol="d">
      <Expression>
        86400*s
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
