<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.29 (Build 228) (http://www.copasi.org) at 2021-03-05T11:43:52Z -->
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
    <Function key="Function_47" name="tumor growth_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_47">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-05T11:34:16Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        r*Tn*(1-(Tn+Ts)/bt)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_291" name="Tn" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_292" name="Ts" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_293" name="bt" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_294" name="r" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="kill_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_48">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-05T11:34:16Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        dmn*M1*Tn
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_300" name="M1" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_301" name="Tn" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_302" name="dmn" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="Tn stim_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_49">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-05T11:34:16Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        rmn*Tn*M2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_306" name="M2" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_307" name="Tn" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_308" name="rmn" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="tumor growth_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_50">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-05T11:34:16Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        r*Ts*(1-(Ts+Tn)/bt)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_313" name="Tn" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_314" name="Ts" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_315" name="bt" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_316" name="r" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="kill_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_51">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-05T11:34:16Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        dms*M1*Ts
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_288" name="M1" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_321" name="Ts" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_322" name="dms" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="kill_3" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_52">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-05T11:34:16Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        dts*Th1*Ts
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_326" name="Th1" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_327" name="Ts" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_328" name="dts" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="m growth_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_53">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-05T11:34:16Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (as*Ts+am1*Th1)*M1*(1-(M1+M2)/bm)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_336" name="M1" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_337" name="M2" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_338" name="Th1" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_339" name="Ts" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_340" name="am1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_341" name="as" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_342" name="bm" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="M transition_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_54">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-05T11:34:16Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k12*M1*M2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_334" name="M1" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_333" name="M2" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_350" name="k12" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="M transition_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_55">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-05T11:34:16Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k21*M2*M1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_354" name="M1" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_355" name="M2" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_356" name="k21" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="m growth_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_56">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-05T11:34:16Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (an*Tn+am2*Th2)*M2*(1-(M2+M1)/bm)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_364" name="M1" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_365" name="M2" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_366" name="Th2" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_367" name="Tn" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_368" name="am2" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_369" name="an" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_370" name="bm" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="Th growth_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_57">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-05T11:34:16Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        rh1*M1*Th1*(1-(Th1+Th2)/bth)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_378" name="M1" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_379" name="Th1" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_380" name="Th2" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_381" name="bth" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_382" name="rh1" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_58" name="stim Th_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_58">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-05T11:34:16Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        ah1*M1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_332" name="M1" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_388" name="ah1" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_59" name="Th growth_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_59">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-05T11:34:16Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        rh2*M2*Th2*(1-(Th2+Th1)/bth)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_394" name="M2" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_395" name="Th1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_396" name="Th2" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_397" name="bth" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_398" name="rh2" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_60" name="stim Th_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_60">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-05T11:34:16Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        ah2*M2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_360" name="M2" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_404" name="ah2" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_0" name="den Breems2015 - macrophage in cancer" simulationType="time" timeUnit="d" volumeUnit="ml" areaUnit="m²" lengthUnit="m" quantityUnit="mmol" type="deterministic" avogadroConstant="6.0221417899999999e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_0">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0002418"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/mamo/MAMO_0000046"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqbiol:hasTaxon>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/taxonomy/9606"/>
      </rdf:Bag>
    </bqbiol:hasTaxon>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="http://identifiers.org/pubmed/26551154"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-07-24T13:42:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>jm2187@cam.ac.uk</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Men</vCard:Family>
                <vCard:Given>Jinghao</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>University of Cambridge</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:creator>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2019-07-24T13:42:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/BIOMD0000000759"/>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/MODEL1907240004"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      
  <body xmlns="http://www.w3.org/1999/xhtml">
    <p>The paper describes a model of re-polarisation of M2 and M1 macrophages and its role on cancer outcomes. 
Created by COPASI 4.25 (Build 207) 

This model is described in the article: 
The re-polarisation of M2 and M1 macrophages and its role on cancer outcomes
den Breems, Nicoline Y.; Eftimie, Raluca
Journal of Theoretical Biology, 390, 23-39

Abstract: 
The anti-tumour and pro-tumour roles of Th1/Th2 immune cells and M1/M2 macrophages have been documented by numerous experimental studies. How- ever, it is still unknown how these immune cells interact with each other to control tumour dynamics. Here, we use a mathematical model for the inter- actions between mouse melanoma cells, Th2/Th1 cells and M2/M1 macro- phages, to investigate the unknown role of the re-polarisation between M1 and M2 macrophages on tumour growth. The results show that tumour growth is associated with a type-II immune response described by large num- bers of Th2 and M2 cells. Moreover, we show that: (i) the ratio k of the transition rates k12 (for the re-polarisation M1→M2) and k21 (for the re- polarisation M2→M1) is important in reducing tumour population, and (ii) the particular values of these transition rates control the delay in tumour growth and the final tumour size. We also perform a sensitivity analysis to investigate the effect of various model parameters on changes in the tumour cell population, and confirm that the ratio k alone and the ratio of M2 and M1 macrophage populations at earlier times (e.g., day 7), cannot always predict the final tumour size.


To cite BioModels Database, please use: BioModels Database: An enhanced, curated and annotated resource for published quantitative kinetic models . 
To the extent possible under law, all copyright and related or neighbouring rights to this encoded model have been dedicated to the public domain worldwide. 
Please refer to CC0 Public Domain Dedication for more information.</p>
  </body>

    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="tumor microenvironment" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94498"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="Tn" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/cl/CL:0001064"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>non-immunogenic tumor cell</pre>
  </body>

        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="Ts" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/cl/CL:0001064"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>immunogenic tumor cell</pre>
  </body>

        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="M1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C156004"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>M1 macropahge</pre>
  </body>

        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="M2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C123783"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>M2 macrophage</pre>
  </body>

        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="Th1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/cl/CL:0000545"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Th1 helper cell</pre>
  </body>

        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="Th2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/cl/CL:0000546"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Th2 helper cell</pre>
  </body>

        </Comment>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="r" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000610"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>proliferation rate of tumour cells</pre>
  </body>

        </Comment>
        <Unit>
          1/d
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="bt" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_1">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000661"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>carrying capacity of tumour cells</pre>
  </body>

        </Comment>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="ksn" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_2">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C25636"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1/d
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="dmn" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_3">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C25636"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>killing rate of Tn by M1</pre>
  </body>

        </Comment>
        <Unit>
          1/d
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="dms" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_4">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C25636"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>killing rate of Ts by M1</pre>
  </body>

        </Comment>
        <Unit>
          1/d
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="rmn" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_5">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000610"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>proliferation rate of Tn cells in the presence of M2 cells</pre>
  </body>

        </Comment>
        <Unit>
          1/d
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="dts" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_6">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C25636"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>killing rate of Ts by Th1</pre>
  </body>

        </Comment>
        <Unit>
          1/d
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="as" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_7">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000610"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>activation rate of M1 triggered by Ts antigens</pre>
  </body>

        </Comment>
        <Unit>
          1/d
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="an" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_8">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000610"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>activation rate of M2 mediated by cytokines and growth factors</pre>
  </body>

        </Comment>
        <Unit>
          1/d
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="am1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_9">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000610"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>activation rate of M1 by type-I cytokines produced by Th1</pre>
  </body>

        </Comment>
        <Unit>
          1/d
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="am2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_10">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000610"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>activation rate of M2 by type-I cytokines produced by Th2</pre>
  </body>

        </Comment>
        <Unit>
          1/d
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="bm" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_11">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000661"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>carrying capacity of M1,M2 cells</pre>
  </body>

        </Comment>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="dm1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_12">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C25636"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>death rate of M1 cells</pre>
  </body>

        </Comment>
        <Unit>
          1/d
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="dm2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_13">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C25636"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>death rate of M1 cells</pre>
  </body>

        </Comment>
        <Unit>
          1/d
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="k12" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_14">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C25636"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>M1-M2 transition rate</pre>
  </body>

        </Comment>
        <Unit>
          1/d
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="k21" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_15">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C25636"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>M2-M1 transition rate</pre>
  </body>

        </Comment>
        <Unit>
          1/d
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="ah1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_16">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000610"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>activation rate of Th1 by type-I cytokines produced by M1</pre>
  </body>

        </Comment>
        <Unit>
          1/d
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="ah2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_17">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000610"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>activation rate of Th2 by type-II cytokines produced by M2</pre>
  </body>

        </Comment>
        <Unit>
          1/d
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_18" name="rh1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_18">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000610"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>proliferation rate of Th1 in the presence of type-I cytokines produced by M1 cells</pre>
  </body>

        </Comment>
        <Unit>
          1/d
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_19" name="rh2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_19">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000610"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>proliferation rate of Th2 in the presence of type-II cytokines produced by M2 cells</pre>
  </body>

        </Comment>
        <Unit>
          1/d
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_20" name="dh1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_20">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C25636"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>natural death rate of Th1 cells</pre>
  </body>

        </Comment>
        <Unit>
          1/d
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_21" name="dh2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_21">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C25636"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>natural death rate of Th2 cells</pre>
  </body>

        </Comment>
        <Unit>
          1/d
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_22" name="bth" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_22">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000661"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>carrying capacity of Th cells</pre>
  </body>

        </Comment>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_23" name="Tumor" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-07-24T15:30:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Compartments[tumor microenvironment],Vector=Metabolites[Tn],Reference=Concentration>+&lt;CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Compartments[tumor microenvironment],Vector=Metabolites[Ts],Reference=Concentration>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="Tn growth" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0008283"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000393"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
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
          <Constant key="Parameter_5408" name="bt" value="1"/>
          <Constant key="Parameter_5407" name="r" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default" scalingCompartment="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Compartments[tumor microenvironment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="Ts-Tn transition" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C75958"/>
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
          <Constant key="Parameter_5409" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Compartments[tumor microenvironment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="Tn killing" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006909"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
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
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5411" name="dmn" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_48" unitType="Default" scalingCompartment="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Compartments[tumor microenvironment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="Tn stimulation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0008283"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000393"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5410" name="rmn" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_49" unitType="Default" scalingCompartment="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Compartments[tumor microenvironment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="Ts growth" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000393"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0008283"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
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
          <Constant key="Parameter_5413" name="bt" value="1"/>
          <Constant key="Parameter_5417" name="r" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_50" unitType="Default" scalingCompartment="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Compartments[tumor microenvironment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_313">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="Ts killing-M1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006909"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5419" name="dms" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_51" unitType="Default" scalingCompartment="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Compartments[tumor microenvironment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="Ts killing-Th1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0002419"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
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
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5420" name="dts" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default" scalingCompartment="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Compartments[tumor microenvironment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="M1 growth" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000393"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0008283"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5414" name="am1" value="1"/>
          <Constant key="Parameter_5416" name="as" value="1"/>
          <Constant key="Parameter_5415" name="bm" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_53" unitType="Default" scalingCompartment="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Compartments[tumor microenvironment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_338">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_340">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_341">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_342">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="M1 death" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0008219"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5418" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Compartments[tumor microenvironment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="M1-M2 transition" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C75958"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5421" name="k12" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Compartments[tumor microenvironment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_350">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="M2-M1 transition" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C75958"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
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
          <Constant key="Parameter_5422" name="k21" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Compartments[tumor microenvironment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_354">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_355">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_356">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="M2 growth" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000393"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0008283"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5452" name="am2" value="1"/>
          <Constant key="Parameter_5453" name="an" value="1"/>
          <Constant key="Parameter_5457" name="bm" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_56" unitType="Default" scalingCompartment="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Compartments[tumor microenvironment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_364">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_365">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_366">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_367">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_368">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_369">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_370">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="M2 death" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0008219"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5459" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Compartments[tumor microenvironment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="Th1 growth" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0008283"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000393"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5460" name="bth" value="1"/>
          <Constant key="Parameter_5454" name="rh1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_57" unitType="Default" scalingCompartment="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Compartments[tumor microenvironment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_378">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_379">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_380">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_381">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_382">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="Th1 death" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0008219"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5456" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Compartments[tumor microenvironment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="Th1 stimulation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_15">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000393"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0008283"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5455" name="ah1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_58" unitType="Default" scalingCompartment="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Compartments[tumor microenvironment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_332">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_388">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="Th2 growth" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_16">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000393"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0008283"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5458" name="bth" value="1"/>
          <Constant key="Parameter_5461" name="rh2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_59" unitType="Default" scalingCompartment="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Compartments[tumor microenvironment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_394">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_395">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_396">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_397">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_398">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="Th2 death" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_17">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0008219"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5450" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Compartments[tumor microenvironment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="Th2 stimulation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_18">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000393"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0008283"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3330" name="ah2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_60" unitType="Default" scalingCompartment="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Compartments[tumor microenvironment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_404">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_0">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-05T11:34:16Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=den Breems2015 - macrophage in cancer" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Compartments[tumor microenvironment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Compartments[tumor microenvironment],Vector=Metabolites[Tn]" value="6.0221417900000006e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Compartments[tumor microenvironment],Vector=Metabolites[Ts]" value="6.0221417900000006e+26" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Compartments[tumor microenvironment],Vector=Metabolites[M1]" value="6.0221417900000009e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Compartments[tumor microenvironment],Vector=Metabolites[M2]" value="6.0221417900000009e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Compartments[tumor microenvironment],Vector=Metabolites[Th1]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Compartments[tumor microenvironment],Vector=Metabolites[Th2]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Values[r]" value="0.56499999999999995" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Values[bt]" value="2000000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Values[ksn]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Values[dmn]" value="1.9999999999999999e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Values[dms]" value="1.9999999999999999e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Values[rmn]" value="9.9999999999999995e-08" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Values[dts]" value="5.2999999999999998e-08" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Values[as]" value="9.9999999999999995e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Values[an]" value="4.9999999999999998e-08" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Values[am1]" value="4.9999999999999998e-08" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Values[am2]" value="4.9999999999999998e-08" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Values[bm]" value="100000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Values[dm1]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Values[dm2]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Values[k12]" value="5.0000000000000002e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Values[k21]" value="4.0000000000000003e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Values[ah1]" value="0.0080000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Values[ah2]" value="0.0080000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Values[rh1]" value="9.0000000000000002e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Values[rh2]" value="9.0000000000000002e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Values[dh1]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Values[dh2]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Values[bth]" value="100000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Values[Tumor]" value="1001000" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Reactions[Tn growth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Reactions[Tn growth],ParameterGroup=Parameters,Parameter=bt" value="2000000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Values[bt],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Reactions[Tn growth],ParameterGroup=Parameters,Parameter=r" value="0.56499999999999995" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Values[r],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Reactions[Ts-Tn transition]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Reactions[Ts-Tn transition],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Values[ksn],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Reactions[Tn killing]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Reactions[Tn killing],ParameterGroup=Parameters,Parameter=dmn" value="1.9999999999999999e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Values[dmn],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Reactions[Tn stimulation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Reactions[Tn stimulation],ParameterGroup=Parameters,Parameter=rmn" value="9.9999999999999995e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Values[rmn],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Reactions[Ts growth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Reactions[Ts growth],ParameterGroup=Parameters,Parameter=bt" value="2000000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Values[bt],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Reactions[Ts growth],ParameterGroup=Parameters,Parameter=r" value="0.56499999999999995" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Values[r],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Reactions[Ts killing-M1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Reactions[Ts killing-M1],ParameterGroup=Parameters,Parameter=dms" value="1.9999999999999999e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Values[dms],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Reactions[Ts killing-Th1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Reactions[Ts killing-Th1],ParameterGroup=Parameters,Parameter=dts" value="5.2999999999999998e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Values[dts],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Reactions[M1 growth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Reactions[M1 growth],ParameterGroup=Parameters,Parameter=am1" value="4.9999999999999998e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Values[am1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Reactions[M1 growth],ParameterGroup=Parameters,Parameter=as" value="9.9999999999999995e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Values[as],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Reactions[M1 growth],ParameterGroup=Parameters,Parameter=bm" value="100000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Values[bm],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Reactions[M1 death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Reactions[M1 death],ParameterGroup=Parameters,Parameter=k1" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Values[dm1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Reactions[M1-M2 transition]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Reactions[M1-M2 transition],ParameterGroup=Parameters,Parameter=k12" value="5.0000000000000002e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Values[k12],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Reactions[M2-M1 transition]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Reactions[M2-M1 transition],ParameterGroup=Parameters,Parameter=k21" value="4.0000000000000003e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Values[k21],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Reactions[M2 growth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Reactions[M2 growth],ParameterGroup=Parameters,Parameter=am2" value="4.9999999999999998e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Values[am2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Reactions[M2 growth],ParameterGroup=Parameters,Parameter=an" value="4.9999999999999998e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Values[an],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Reactions[M2 growth],ParameterGroup=Parameters,Parameter=bm" value="100000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Values[bm],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Reactions[M2 death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Reactions[M2 death],ParameterGroup=Parameters,Parameter=k1" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Values[dm2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Reactions[Th1 growth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Reactions[Th1 growth],ParameterGroup=Parameters,Parameter=bth" value="100000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Values[bth],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Reactions[Th1 growth],ParameterGroup=Parameters,Parameter=rh1" value="9.0000000000000002e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Values[rh1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Reactions[Th1 death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Reactions[Th1 death],ParameterGroup=Parameters,Parameter=k1" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Values[dh1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Reactions[Th1 stimulation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Reactions[Th1 stimulation],ParameterGroup=Parameters,Parameter=ah1" value="0.0080000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Values[ah1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Reactions[Th2 growth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Reactions[Th2 growth],ParameterGroup=Parameters,Parameter=bth" value="100000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Values[bth],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Reactions[Th2 growth],ParameterGroup=Parameters,Parameter=rh2" value="9.0000000000000002e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Values[rh2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Reactions[Th2 death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Reactions[Th2 death],ParameterGroup=Parameters,Parameter=k1" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Values[dh2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Reactions[Th2 stimulation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Reactions[Th2 stimulation],ParameterGroup=Parameters,Parameter=ah2" value="0.0080000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Values[ah2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="ModelValue_23"/>
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
    </StateTemplate>
    <InitialState type="initialState">
      0 6.0221417900000006e+23 6.0221417900000009e+22 6.0221417900000006e+26 6.0221417900000009e+22 0 0 1001000 1 0.56499999999999995 2000000000 0.10000000000000001 1.9999999999999999e-06 1.9999999999999999e-06 9.9999999999999995e-08 5.2999999999999998e-08 9.9999999999999995e-07 4.9999999999999998e-08 4.9999999999999998e-08 4.9999999999999998e-08 100000 0.20000000000000001 0.20000000000000001 5.0000000000000002e-05 4.0000000000000003e-05 0.0080000000000000002 0.0080000000000000002 9.0000000000000002e-06 9.0000000000000002e-06 0.050000000000000003 0.050000000000000003 100000000 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_13" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
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
        <Parameter name="Target Criterion" type="string" value="Distance and Rate"/>
      </Method>
    </Task>
    <Task key="Task_12" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_9" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.40000000000000002"/>
        <Parameter name="Duration" type="float" value="40"/>
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
    <Task key="Task_11" name="Scan" type="scan" scheduled="false" updateModel="false">
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
    <Task key="Task_10" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_8" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_9" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_7" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_8" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_6" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_7" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_5" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_13"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_6" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_4" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_5" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_3" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_4" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_2" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_3" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Report reference="Report_1" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_2" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
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
    <Task key="Task_1" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_0" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_13"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
    <Task key="Task_14" name="Time-Course Sensitivities" type="timeSensitivities" scheduled="false" updateModel="false">
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
    <Report key="Report_9" name="Time-Course" taskType="timeCourse" separator="&#x09;" precision="6">
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
    <Report key="Report_8" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_7" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
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
    <Report key="Report_6" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
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
    <Report key="Report_5" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_4" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
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
    <Report key="Report_3" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_2" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
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
    <Report key="Report_1" name="Moieties" taskType="moieties" separator="&#x09;" precision="6">
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
    <PlotSpecification name="Fig 2A" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[Tn]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Compartments[tumor microenvironment],Vector=Metabolites[Tn],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ts]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Compartments[tumor microenvironment],Vector=Metabolites[Ts],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Tumor]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Values[Tumor],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Fig 2B" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[M1]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Compartments[tumor microenvironment],Vector=Metabolites[M1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[M2]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Compartments[tumor microenvironment],Vector=Metabolites[M2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Fig 2C" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[Th1]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Compartments[tumor microenvironment],Vector=Metabolites[Th1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Fig 2D" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[Th2]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=den Breems2015 - macrophage in cancer,Vector=Compartments[tumor microenvironment],Vector=Metabolites[Th2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="den Breems2015.xml">
    <SBMLMap SBMLid="M1" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="M1_M2_transition" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="M1_death" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="M1_growth" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="M2" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="M2_M1_transition" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="M2_death" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="M2_growth" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="Th1" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="Th1_death" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="Th1_growth" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="Th1_stimulation" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="Th2" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="Th2_death" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="Th2_growth" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="Th2_stimulation" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="Tn" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="Tn_growth" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="Tn_killing" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="Tn_stimulation" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="Ts" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="Ts_Tn_transition" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="Ts_growth" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="Ts_killing_M1" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="Ts_killing_Th1" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="Tumor" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="ah1" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="ah2" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="am1" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="am2" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="an" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="as" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="bm" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="bt" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="bth" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="dh1" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="dh2" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="dm1" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="dm2" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="dmn" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="dms" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="dts" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="k12" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="k21" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="ksn" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="r" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="rh1" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="rh2" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="rmn" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="tumor_microenvironment" COPASIkey="Compartment_0"/>
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
<dcterms:W3CDTF>2021-03-05T11:34:01Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2021-03-05T11:34:01Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2021-03-05T11:34:01Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2021-03-05T11:34:01Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2021-03-05T11:34:01Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2021-03-05T11:34:01Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2021-03-05T11:34:01Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro*#
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_69" name="day" symbol="d">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_68">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-05T11:34:01Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        86400*s
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
