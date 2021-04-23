<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.27 (Build 217) (http://www.copasi.org) at 2019-12-06T12:42:33Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="27" versionDevel="217" copasiSourcesModified="0">
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
        k1*PRODUCT&lt;substrate_i>
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_80" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_81" name="substrate" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="HMM_Modified" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_55">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T12:01:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Kcat*species_14*species_17/(km+species_17)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_331" name="Kcat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_360" name="km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_361" name="species_14" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_376" name="species_17" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="HMM_Modified_Inverted" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_56">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-23T13:43:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        if(species_14 le 1, (Kcat*species_14*species_17)/(km+species_17), 0)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_381" name="species_14" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_380" name="Kcat" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_362" name="species_17" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_375" name="km" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_0" name="Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells" simulationType="time" timeUnit="s" volumeUnit="ml" areaUnit="m²" lengthUnit="m" quantityUnit="nmol" type="deterministic" avogadroConstant="6.0221417899999999e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_0">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go.ref:GO:0007173"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:go.ref:GO:0035690"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:mamo:MAMO:0000046"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:NCIT:C15632"/>
    <bqbiol:hasTaxon rdf:resource="urn:miriam:taxonomy:9606"/>
    <bqmodel:isDerivedFrom rdf:resource="urn:miriam:biomodels.db:MODEL1902140001"/>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:30481266"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T09:34:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>giulia.russo@unict.it</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Russo</vCard:Family>
            <vCard:Given>Giulia</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>University of Catania, Italy</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>francesco.pappalardo@unict.it</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Pappalardo</vCard:Family>
            <vCard:Given>Francesco</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>University of Catania, Italy</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
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
            <vCard:Orgname>Babraham Institute, Cambridge</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
    <CopasiMT:occursIn rdf:resource="urn:miriam:bto:BTO:0001610"/>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="Sphere (thyroid cancer cell)" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <bqbiol:hasProperty rdf:resource="urn:miriam:bto:BTO:0001601"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-01-13T12:56:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_38" name="pEGFR" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_38">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002220"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T09:35:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:P00533"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          pEGFR= boundEGFR
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_37" name="free_EGFR" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T09:36:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:P00533"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_36" name="Sos_Active" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_36">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T11:50:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:C45329"/>
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:Q07889"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_35" name="Sos_Inactive" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_35">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002355"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T13:15:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:Q07889"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_34" name="Ras_Active" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_34">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C45329"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T10:59:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:P01112"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_33" name="Ras_Inactive" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_33">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002355"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T10:59:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:P01112"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_32" name="Raf1_Active" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_32">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C45329"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T10:58:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:P04049"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_31" name="Raf1_Inactive" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_31">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002355"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T11:00:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:P04049"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_30" name="Mek_Active" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_30">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C45329"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T10:57:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q02750"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_29" name="Mek_Inactive" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_29">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002355"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T11:56:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q02750"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_28" name="pERK" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_28">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002220"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T09:51:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P28482"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_27" name="ERK" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T09:52:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P28482"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_26" name="PI3K_Active" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_26">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C45329"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T09:53:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P27986"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_25" name="PI3K_Inactive" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_25">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002355"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T10:57:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P27986"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_24" name="pAKT" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_24">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002220"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T09:35:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P31749"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_23" name="AKT" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T11:00:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P31749"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_22" name="EGF" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T11:45:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:P01133"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_21" name="pro_EGFR" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T09:52:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P00533"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_20" name="PIP3" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T12:04:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:chebi:CHEBI:16618"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="PIP2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T12:04:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:chebi:CHEBI:18348"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_18" name="PTEN_Active" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_18">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C45329"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T11:59:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:P60484"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="PDK1_Inactive" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_17">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002355"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-28T10:45:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:O15530"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_16" name="PDK1_Active" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_16">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C45329"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-28T10:45:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:O15530"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="HSP90-Cdc37_Active" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_15">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C45329"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-10-06T10:16:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P07900"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q16543"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="PHLPP_Active" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_14">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C45329"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-10-06T10:24:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:O60346"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="mTORC2_Active" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C45329"/>
    <bqmodel:isDerivedFrom rdf:resource="urn:miriam:uniprot:P42345"/>
    <bqmodel:isDerivedFrom rdf:resource="urn:miriam:uniprot:Q6R327"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-10-06T10:27:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="TCL1_Active" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_12">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C45329"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-10-06T10:28:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P56279"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="CTMP_Active" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002354"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-10-06T10:30:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:Q5T1C6"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="mTORC1_Active" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_10">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C45329"/>
    <bqmodel:isDerivedFrom rdf:resource="urn:miriam:uniprot:P42345"/>
    <bqmodel:isDerivedFrom rdf:resource="urn:miriam:uniprot:Q8N122"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-10-06T11:24:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="mTORC1_Inactive" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002355"/>
    <bqmodel:isDerivedFrom rdf:resource="urn:miriam:uniprot:P42345"/>
    <bqmodel:isDerivedFrom rdf:resource="urn:miriam:uniprot:Q8N122"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-10-06T11:24:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="bRaf_Mutated" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_8">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C45576"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-10-13T11:05:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:P15056"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          We simulated the 8505C cell lines having the bRaf mutation in this way:

1) We introduced the new species bRafMutated; with the same initaila concentration of bRafInactive (100)
2) We deleted the bRaf activation by Rap1 as the new species bRafMutated is not affected by this signalling (the same applies for Ras)
3) We inhibited the deactivation of Braf by Raf1PPtase (as Raf1PPtase does not anymore influence Braf)
4) bRafMutated accomplish the Mek activation subsituting the not mutated species bRaf



In cells where AKT signaling is aberrantly activated (by PTEN loss, PI3K activation, or RTK amplification), the negative impact of BRAFV600E is countered by a dominant input upstream of AKT. Consequently, activated AKT phosphorylates substrates PRAS40, FOXO and GSK3β and suppresses their activity.

See:
http://journals.plos.org/plosone/article?id=10.1371/journal.pone.0042598

http://journals.plos.org/plosone/article?id=10.1371/journal.pone.0042598#s2
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="PLX4032" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-01-13T11:19:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:63637"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Vemurafenib (iBRAF)

Treatment with the RAF inhibitors have opposing effects on AKT phosphorylation depending on the mutational status of two important oncogenes, KRAS and BRAF. If these two genes are in wildtype configuration, RAF inhibitors reduce AKT phosphorylation. In contrast, if BRAF or KRAS are mutant, RAF inhibitors will leave AKT phosphorylation unaffected or lead to an increase of AKT phosphorylation. (doi:  10.18632/oncotarget.6959)


1uM = 1000nmol/l
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="Grb2_Active" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C45329"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-05T17:07:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:P62993"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="Grb2_Inactive" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002355"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-05T17:10:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:P62993"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="FGF" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-06T09:37:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P05230"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="free_FGFR" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-06T09:37:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P11362"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="pFGFR" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002220"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-06T09:37:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P11362"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="pro_FGFR" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-06T09:39:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P11362"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_0" name="TNF" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T09:53:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:Q5STB3"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_114" name="free_TNFR1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_114">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T09:54:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:P19438"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_115" name="pTNFR1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_115">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002220"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T09:54:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:P19438"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_116" name="free_TNFR2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_116">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T09:58:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:P20333"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_117" name="pTNFR2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_117">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002220"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T09:59:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:P20333"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_118" name="TRADD:TRAF2:TRAF5:RIP1_Active" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_118">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C45329"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T10:06:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:O00463"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q12933"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q13546"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q15628"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_119" name="TRADD:TRAF2:TRAF5:RIP1_Inactive" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_119">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002355"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T10:06:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:O00463"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q12933"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q13546"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q15628"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_120" name="TRAF1:TRAF2:TRAF3_Active" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_120">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C45329"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T10:08:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q12933"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q13077"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q13114"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_121" name="TRAF1:TRAF2:TRAF3_Inactive" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_121">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002355"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T10:08:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q12933"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q13077"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q13114"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_122" name="NIK_Active" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_122">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C45329"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T10:18:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:Q99558"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_123" name="NIK_Inactive" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_123">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002355"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T10:19:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:Q99558"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_124" name="IKKbeta:IKKalfa:IKKgamma_Active" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_124">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C45329"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T10:24:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:O14920"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:O15111"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q9Y6K9"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_125" name="IKKbeta:IKKalfa:IKKgamma_Inactive" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_125">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002355"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T10:24:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:O14920"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:O15111"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q9Y6K9"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_126" name="TAB1:TAB2:TAB3:TAK1_Active" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_126">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C45329"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T10:29:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:O43318"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q15750"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q8N5C8"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q9NYJ8"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_127" name="TAB1:TAB2:TAB3:TAK1_Inactive" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_127">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002355"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T10:29:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:O43318"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q15750"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q8N5C8"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q9NYJ8"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_128" name="MAP3K8:NF-kB_Active" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_128">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C45329"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T10:41:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P19838"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P41279"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_129" name="MAP3K8:NF-kB_Inactive" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_129">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002355"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T10:41:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P19838"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P41279"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_130" name="pro_TNFR1" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_130">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T10:51:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P19438"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_131" name="pro_TNFR2" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_131">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T10:51:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P20333"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_132" name="bRaf_Mutated_Inactive" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_132">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C45576"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002355"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-12T12:46:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:P15056"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_133" name="TRADD:TRAF2:TRAF5:RIP1_bRafINH_Active" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_133">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C45329"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-12T12:57:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:chebi:CHEBI:75047"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:O00463"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q12933"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q13546"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q15628"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_134" name="TRADD:TRAF2:TRAF5:RIP1_bRafINH_Inactive" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_134">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002355"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-12T13:17:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:chebi:CHEBI:75047"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:O00463"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q12933"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q13546"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q15628"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_135" name="TAB1:TAB2:TAB3:TAK1_bRafINH_Inactive" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_135">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002355"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-12T17:27:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:chebi:CHEBI:75047"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:O43318"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q15750"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q8N6C8"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q9NYJ8"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_136" name="TAB1:TAB2:TAB3:TAK1_bRafINH_Active" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_136">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C45329"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-12T17:27:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:chebi:CHEBI:75047"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:O43318"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q15750"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q8N5C8"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q9NYJ8"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_137" name="NIK_bRafINH_Active" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_137">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C45329"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-12T17:38:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:chebi:CHEBI:75047"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q99558"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_138" name="NIK_bRafINH_Inactive" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_138">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002355"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-12T17:38:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:chebi:CHEBI:75047"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q99558"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_139" name="IKKbeta:IKKalfa:IKKgamma_bRafINH_Active" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_139">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C45329"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-12T17:47:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:chebi:CHEBI:75047"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:O14920"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:O15111"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q9Y6K9"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_140" name="IKKbeta:IKKalfa:IKKgamma_bRafINH_Inactive" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_140">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002355"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-12T17:47:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:chebi:CHEBI:75047"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:O14920"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:O15111"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q9Y6K9"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_141" name="MAP3K8:NF-kB_bRafINH_Active" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_141">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C45329"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-12T17:53:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:chebi:CHEBI:75047"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P19838"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P41279"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_142" name="MAP3K8:NF-kB_bRafINH_Inactive" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_142">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002355"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-12T17:53:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:chebi:CHEBI:75047"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P19838"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P41279"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_143" name="TRAF1:TRAF2:TRAF3_bRafINH_Active" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_143">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C45329"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-13T11:32:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:chebi:CHEBI:75047"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q12933"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q13077"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q13114"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_144" name="TRAF1:TRAF2:TRAF3_bRafINH_Inactive" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_144">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002355"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-13T11:33:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:chebi:CHEBI:75047"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot.isoform:Q12933"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q13077"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q13114"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_145" name="MAP3K8:NF-kB_RasINH_Active" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_145">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C45329"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-14T12:57:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:C1902"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P19838"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P41279"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_146" name="MAP3K8:NF-kB_RasINH_Inactive" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_146">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002355"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-14T12:57:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:C1902"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P19838"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P41279"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_147" name="mTORC2_Inactive" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_147">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002355"/>
    <bqmodel:isDerivedFrom rdf:resource="urn:miriam:uniprot:P42345"/>
    <bqmodel:isDerivedFrom rdf:resource="urn:miriam:uniprot:Q6R327"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-16T11:22:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_148" name="MAP3K8_inhibitor" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_148">
    <bqbiol:hasProperty rdf:resource="urn:miriam:chebi:CHEBI:79091"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-29T17:37:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_149" name="MAP3K8:NF-kB_inhibited" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_149">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000642"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-29T18:04:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P19838"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P41279"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfReactions>
      <Reaction key="Reaction_25" name="Ras_Activation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_25">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000656"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T10:59:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5205" name="Kcat" value="0.1"/>
          <Constant key="Parameter_5203" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Parameter_5205"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Parameter_5203"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="Raf1_Activation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_24">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000656"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T13:17:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5202" name="Kcat" value="0.12"/>
          <Constant key="Parameter_5206" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Parameter_5202"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Parameter_5206"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="Mek_Activation_Raf1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_23">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000656"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-10-06T11:47:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5204" name="Kcat" value="0.096"/>
          <Constant key="Parameter_5207" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Parameter_5204"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Parameter_5207"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="Erk_Activation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_22">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000656"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-10-06T10:30:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5208" name="Kcat" value="0.1"/>
          <Constant key="Parameter_5212" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Parameter_5208"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Parameter_5212"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="PI3K_Activation_pEGFR" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_21">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000656"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T13:14:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5900" name="Kcat" value="0.1"/>
          <Constant key="Parameter_5899" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Parameter_5900"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Parameter_5899"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="PI3K_Activation_Ras" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_20">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000656"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T13:14:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5209" name="Kcat" value="0.1"/>
          <Constant key="Parameter_5211" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Parameter_5209"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Parameter_5211"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="PI3K_Deactivation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_19">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000665"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T13:13:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5210" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5210"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="Akt_Activation_PI3K" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_18">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000656"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-24T12:43:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5213" name="Kcat" value="0.1"/>
          <Constant key="Parameter_5375" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Parameter_5213"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Parameter_5375"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="Raf1_Deactivation_Akt" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_17">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000665"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-10-06T10:45:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5364" name="Kcat" value="0.1"/>
          <Constant key="Parameter_5491" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Parameter_5364"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Parameter_5491"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="EGFR_Degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_16">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000179"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T11:51:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5487" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5487"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="Mek_Activation_bRafMutated" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_15">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000656"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-10-06T11:54:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5483" name="km" value="0.1"/>
          <Constant key="Parameter_5486" name="Kcat" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Parameter_5486"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Parameter_5483"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="EGFR_Production" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000393"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T09:53:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5478" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5478"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="PIP3_Activation_PIP3" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000656"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T12:11:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5488" name="Kcat" value="0.1"/>
          <Constant key="Parameter_5484" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Parameter_5488"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Parameter_5484"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="PIP3_Feedback_Deactivation_PTEN" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000665"/>
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:ncit:C82652"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T13:07:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5490" name="Kcat" value="0.1"/>
          <Constant key="Parameter_5485" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Parameter_5490"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Parameter_5485"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="Akt_Activation_PIP3" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000656"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-24T12:43:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5480" name="Kcat" value="0.1"/>
          <Constant key="Parameter_5492" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Parameter_5480"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Parameter_5492"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="PDK1_Activation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000656"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T13:14:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5497" name="Kcat" value="0.1"/>
          <Constant key="Parameter_5864" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Parameter_5497"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Parameter_5864"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="PDK1_Deactivation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000665"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T13:16:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5489" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5489"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="Akt_Activation_PDK1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000656"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-24T12:43:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5493" name="Kcat" value="0.1"/>
          <Constant key="Parameter_5369" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Parameter_5493"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Parameter_5369"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="Akt_Feedback_Activation_HSP90-Cdc37" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000656"/>
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:ncit:C82652"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T13:07:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5373" name="Kcat" value="0.1"/>
          <Constant key="Parameter_5376" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Parameter_5373"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Parameter_5376"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="Akt_Feedback_Deactivation_PHLPP" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000665"/>
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:ncit:C82652"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T13:07:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5371" name="km" value="0.1"/>
          <Constant key="Parameter_5368" name="Kcat" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Parameter_5368"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Parameter_5371"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="Akt_Feedback_Activation_mTORC2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000656"/>
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:ncit:C82652"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T13:07:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5861" name="Kcat" value="0.1"/>
          <Constant key="Parameter_5859" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Parameter_5861"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Parameter_5859"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="Akt_Feedback_Activation_TCL1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000656"/>
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:ncit:C82652"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T13:07:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5365" name="Kcat" value="0.1"/>
          <Constant key="Parameter_5498" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Parameter_5365"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Parameter_5498"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="Akt_Feedback_Deactivation_CTMP" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000665"/>
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:ncit:C82652"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T13:07:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5370" name="Kcat" value="0.1"/>
          <Constant key="Parameter_5496" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Parameter_5370"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Parameter_5496"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="Erk_Feedback_Deactivation_Raf1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000665"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T10:56:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          http://link.springer.com/article/10.1007%2Fs10555-008-9119-x
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5494" name="Kcat" value="0.1"/>
          <Constant key="Parameter_5860" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Parameter_5494"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Parameter_5860"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="Sos_Deactivation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000665"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T10:56:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          DOI:10.1186/1752-0509-3-100
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5374" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5374"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_0" name="mTORC1_Activation_Akt" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000656"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-24T12:43:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5858" name="Kcat" value="0.1"/>
          <Constant key="Parameter_5904" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Parameter_5858"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Parameter_5904"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_111" name="EGFR_Degradation_Free" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_111">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000179"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-05T10:11:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5366" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5366"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_112" name="Sos_Activation_Grb2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_112">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000656"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-05T17:07:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5863" name="Kcat" value="0.1"/>
          <Constant key="Parameter_5363" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Parameter_5863"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Parameter_5363"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_113" name="Grb2_Activation_pEGFR" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_113">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000656"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-05T17:09:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5902" name="Kcat" value="0.1"/>
          <Constant key="Parameter_5372" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Parameter_5902"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Parameter_5372"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_114" name="Grb2_Deactivation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_114">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000665"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-05T17:10:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5903" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5903"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_115" name="FGFR_Production" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_115">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000393"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-01-20T12:06:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
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
          <Constant key="Parameter_5862" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5862"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_116" name="FGFR_Degradation_Free" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_116">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000179"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-01-20T12:06:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5901" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5901"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_117" name="FGFR_Degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_117">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000179"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-06T09:48:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5495" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5495"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_118" name="Grb2_Activation_pFGFR" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_118">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:sbo:SBO:0000656"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-06T09:56:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5362" name="Kcat" value="0.1"/>
          <Constant key="Parameter_5367" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Parameter_5362"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Parameter_5367"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_119" name="TRADD:TRAF2:TRAF5:RIP1_Activation_pTNFR1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_119">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000656"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T10:05:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_119" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_118" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5907" name="Kcat" value="0.1"/>
          <Constant key="Parameter_5481" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Parameter_5907"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Parameter_5481"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_115"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_119"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_120" name="TRAF1:TRAF2:TRAF3_Activation_pTNFR2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_120">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000656"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T10:08:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_121" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_120" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_117" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5479" name="Kcat" value="0.1"/>
          <Constant key="Parameter_5469" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Parameter_5479"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Parameter_5469"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_117"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_121"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_121" name="PI3K_Activation_TRAF1:TRAF2:TRAF3" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_121">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000656"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T10:13:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_120" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5474" name="Kcat" value="0.1"/>
          <Constant key="Parameter_5464" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Parameter_5474"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Parameter_5464"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_120"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_122" name="NIK_Activation_TRADD:TRAF2:TRAF5:RIP1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_122">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000656"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T10:18:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_123" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_122" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_118" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5477" name="Kcat" value="0.1"/>
          <Constant key="Parameter_5482" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Parameter_5477"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Parameter_5482"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_118"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_123"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_123" name="TAB1:TAB2:TAB3:TAK1_Activation_TRADD:TRAF2:TRAF5:RIP1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_123">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000656"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T10:21:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_127" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_126" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_118" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5475" name="Kcat" value="0.1"/>
          <Constant key="Parameter_5476" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Parameter_5475"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Parameter_5476"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_118"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_127"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_124" name="IKKbeta:IKKalfa:IKKgamma_Activation_TRADD:TRAF2:TRAF5:RIP1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_124">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000656"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T10:23:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_125" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_124" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_118" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5472" name="Kcat" value="0.1"/>
          <Constant key="Parameter_5462" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Parameter_5472"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Parameter_5462"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_118"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_125"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_125" name="IKKbeta:IKKalfa:IKKgamma_Activation_NIK" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_125">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000656"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T10:26:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_125" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_124" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_122" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5470" name="Kcat" value="0.1"/>
          <Constant key="Parameter_5471" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Parameter_5470"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Parameter_5471"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_122"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_125"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_126" name="IKKbeta:IKKalfa:IKKgamma_Activation_TAB1:TAB2:TAB3:TAK1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_126">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000656"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T10:36:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_125" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_124" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_126" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5463" name="Kcat" value="0.1"/>
          <Constant key="Parameter_5473" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Parameter_5463"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Parameter_5473"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_126"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_125"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_127" name="MAP3K8:NF-kB_Activation_IKKbeta:IKKalfa" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_127">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000656"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T10:40:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_129" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_128" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_124" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5466" name="Kcat" value="0.1"/>
          <Constant key="Parameter_5468" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Parameter_5466"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Parameter_5468"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_124"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_129"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_128" name="Mek_Activation_MAP3K8:NF-kB" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_128">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000656"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T10:43:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_128" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5461" name="Kcat" value="0.1"/>
          <Constant key="Parameter_5465" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Parameter_5461"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Parameter_5465"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_128"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_129" name="TNFR1_Production" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_129">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000393"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-01-20T12:08:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_130" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_114" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5467" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5467"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_130"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_130" name="TNFR2_Production" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_130">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000393"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-01-20T12:08:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_131" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_116" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5458" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5458"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_131"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_131" name="TNFR1_Degradation_Free" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_131">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000179"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-01-20T12:08:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_114" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5457" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5457"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_114"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_132" name="TNFR2_Degradation_Free" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_132">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000179"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-01-20T12:08:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_116" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5456" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5456"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_116"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_133" name="TNFR1_Degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_133">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000179"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-01-20T12:08:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5460" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5460"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_115"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_134" name="TNFR2_Degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_134">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000179"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-01-20T12:08:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_117" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5459" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5459"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_117"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_135" name="IKKbeta:IKKalfa:IKKgamma_Deactivation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_135">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000665"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T11:33:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_124" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_125" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5545" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5545"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_124"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_136" name="Mek_Deactivation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_136">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000665"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T11:38:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5546" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5546"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_137" name="mTORC1_Deactivation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_137">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000665"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-01-20T12:07:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5455" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5455"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_138" name="NIK_Deactivation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_138">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000665"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-12T17:49:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_122" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_123" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5453" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5453"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_122"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_139" name="Ras_Deactivation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_139">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000665"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-01-20T12:07:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5452" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5452"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_34"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_140" name="TAB1:TAB2:TAB3:TAK1_Deactivation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_140">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000665"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-14T16:53:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_126" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_127" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5544" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5544"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_126"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_141" name="MAP3K8:NF-kB_Deactivation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_141">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000665"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T11:58:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_128" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_129" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5547" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5547"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_128"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_142" name="TRADD:TRAF2:TRAF5:RIP1_Deactivation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_142">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000665"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-12T13:25:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_118" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_119" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5454" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5454"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_118"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_143" name="TRAF1:TRAF2:TRAF3_Deactivation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_143">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000665"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T12:01:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_120" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_121" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5449" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5449"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_120"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_144" name="TRADDComplex_Activation_bRafINH" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_144">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000656"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-12T13:15:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_134" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_133" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_119" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5442" name="Kcat" value="0.1"/>
          <Constant key="Parameter_5446" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Parameter_5442"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Parameter_5446"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_119"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_134"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_145" name="TABComplex_Activation_bRafINH" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_145">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000656"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-12T17:33:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_135" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_136" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_127" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5444" name="Kcat" value="0.1"/>
          <Constant key="Parameter_5448" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Parameter_5444"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Parameter_5448"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_127"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_135"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_146" name="NIK_Activation_bRafINH" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_146">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000656"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-12T17:36:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_138" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_137" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_123" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5451" name="Kcat" value="0.1"/>
          <Constant key="Parameter_5447" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Parameter_5451"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Parameter_5447"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_123"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_138"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_147" name="IKKComplex_Activation_bRafINH" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_147">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000656"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-12T17:46:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_140" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_139" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_125" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5437" name="Kcat" value="0.1"/>
          <Constant key="Parameter_5445" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Parameter_5437"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Parameter_5445"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_125"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_140"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_148" name="MAP3K8Complex_Activation_bRafINH" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_148">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000656"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-12T17:52:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_142" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_141" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_129" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5441" name="Kcat" value="0.1"/>
          <Constant key="Parameter_5436" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Parameter_5441"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Parameter_5436"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_129"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_142"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_149" name="TRAFComplex_Activation_bRafINH" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_149">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000656"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-13T11:33:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_144" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_143" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_121" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5450" name="Kcat" value="0.1"/>
          <Constant key="Parameter_5443" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Parameter_5450"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Parameter_5443"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_121"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_144"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_150" name="PLX4032_degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_150">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000179"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-13T12:21:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          The k1 parameter was set in a way that it reflects the half life of PLX4032 drug i.e., 57hrs (205200s)

C(t)=C0*e^(-ket) where ke is the half life constant.

http://www.calculator.net/half-life-calculator.html
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5434" name="k1" value="3.3779e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5434"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_151" name="bRafMutated_Deactivation_PLX4032" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_151">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000665"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-13T12:22:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_132" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5435" name="Kcat" value="0.1"/>
          <Constant key="Parameter_5440" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Parameter_5435"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Parameter_5440"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_152" name="bRafMutated_Activation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_152">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000656"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-13T12:23:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_132" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5438" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5438"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_132"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_153" name="MAP3K8Complex_Activation_RasINH" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_153">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000656"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-12T17:52:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_146" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_145" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_129" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5403" name="Kcat" value="0.1"/>
          <Constant key="Parameter_5433" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Parameter_5403"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Parameter_5433"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_129"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_146"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_154" name="mTORC2_Deactivation_bRafMutated" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_154">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000665"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-16T11:20:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5420" name="Kcat" value="0.1"/>
          <Constant key="Parameter_3312" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Parameter_5420"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Parameter_3312"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_155" name="mTORC2_Activation_PI3K" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_155">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000656"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-16T11:24:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5439" name="Kcat" value="0.1"/>
          <Constant key="Parameter_5407" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Parameter_5439"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Parameter_5407"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_147"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_156" name="MAP3K8Complex_pERK_bRafINH" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_156">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000117"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-23T13:38:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_141" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5410" name="Kcat" value="0.1"/>
          <Constant key="Parameter_5401" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_56" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_381">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_380">
              <SourceParameter reference="Parameter_5410"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_362">
              <SourceParameter reference="Metabolite_141"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_375">
              <SourceParameter reference="Parameter_5401"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_157" name="TRADDComplex_pERK_bRafINH" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_157">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000656"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-23T13:48:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_133" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5417" name="Kcat" value="0.1"/>
          <Constant key="Parameter_5405" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_56" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_381">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_380">
              <SourceParameter reference="Parameter_5417"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_362">
              <SourceParameter reference="Metabolite_133"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_375">
              <SourceParameter reference="Parameter_5405"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_158" name="IKKComplex_pERK_bRafINH" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_158">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000117"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-23T13:56:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_139" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5404" name="Kcat" value="0.1"/>
          <Constant key="Parameter_5408" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_56" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_381">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_380">
              <SourceParameter reference="Parameter_5404"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_362">
              <SourceParameter reference="Metabolite_139"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_375">
              <SourceParameter reference="Parameter_5408"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_159" name="NIK_pERK_bRafINH" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_159">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000656"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-23T13:58:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_137" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5414" name="Kcat" value="0.1"/>
          <Constant key="Parameter_5409" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_56" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_381">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_380">
              <SourceParameter reference="Parameter_5414"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_362">
              <SourceParameter reference="Metabolite_137"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_375">
              <SourceParameter reference="Parameter_5409"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_160" name="TABComplex_pERK_bRafINH" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_160">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000656"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-23T13:59:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_136" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5400" name="Kcat" value="0.1"/>
          <Constant key="Parameter_5415" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_56" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_381">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_380">
              <SourceParameter reference="Parameter_5400"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_362">
              <SourceParameter reference="Metabolite_136"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_375">
              <SourceParameter reference="Parameter_5415"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_161" name="EGF_Binding_Unbinding (forward)" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_161">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000177"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-29T14:13:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5419" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5419"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_22"/>
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_162" name="EGF_Binding_Unbinding (backward)" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_162">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000177"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-29T14:13:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5402" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5402"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_163" name="FGF_Binding_Unbinding (forward)" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_163">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000177"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-29T14:13:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5416" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5416"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_4"/>
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_164" name="FGF_Binding_Unbinding (backward)" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_164">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000177"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-29T14:13:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5406" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5406"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_165" name="TNF_Binding_Unbinding_TNFR1 (forward)" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_165">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000177"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-29T14:13:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_114" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5413" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5413"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_0"/>
              <SourceParameter reference="Metabolite_114"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_166" name="TNF_Binding_Unbinding_TNFR1 (backward)" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_166">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000177"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-29T14:13:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
          <Product metabolite="Metabolite_114" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5398" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5398"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_115"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_167" name="TNF_Binding_Unbinding_TNFR2 (forward)" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_167">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000177"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-29T14:13:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_116" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_117" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5418" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5418"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_0"/>
              <SourceParameter reference="Metabolite_116"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_168" name="TNF_Binding_Unbinding_TNFR2 (backward)" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_168">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000177"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-29T14:13:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_117" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
          <Product metabolite="Metabolite_116" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5399" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5399"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_117"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_169" name="MAP3K8:NF-kB_Deactivation_MAP3K8_inhibitor" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_169">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000665"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-29T17:39:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_129" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_148" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_149" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5396" name="k1" value="0.015"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5396"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_129"/>
              <SourceParameter reference="Metabolite_148"/>
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
<dcterms:W3CDTF>2019-12-05T14:02:43Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]" value="9.9999999999999998e-13" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[pEGFR]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[free_EGFR]" value="6022.1417899999997" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[Sos_Active]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[Sos_Inactive]" value="6022.1417899999997" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[Ras_Active]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[Ras_Inactive]" value="6022.1417899999997" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[Raf1_Active]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[Raf1_Inactive]" value="6022.1417899999997" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[Mek_Active]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[Mek_Inactive]" value="6022.1417899999997" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[pERK]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[ERK]" value="6022.1417899999997" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[PI3K_Active]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[PI3K_Inactive]" value="6022.1417899999997" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[pAKT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[AKT]" value="6022.1417899999997" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[EGF]" value="6022141.790000001" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[pro_EGFR]" value="3011.0708949999998" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[PIP3]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[PIP2]" value="6022.1417899999997" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[PTEN_Active]" value="6022.1417899999997" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[PDK1_Inactive]" value="6022.1417899999997" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[PDK1_Active]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[HSP90-Cdc37_Active]" value="6022.1417899999997" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[PHLPP_Active]" value="6022.1417899999997" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[mTORC2_Active]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[TCL1_Active]" value="6022.1417899999997" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[CTMP_Active]" value="6022.1417899999997" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[mTORC1_Active]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[mTORC1_Inactive]" value="6022.1417899999997" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[bRaf_Mutated]" value="60221.417900000015" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[PLX4032]" value="602214.179" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[Grb2_Active]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[Grb2_Inactive]" value="6022.1417899999997" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[FGF]" value="6022141.790000001" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[free_FGFR]" value="6022.1417899999997" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[pFGFR]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[pro_FGFR]" value="3011.0708949999998" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[TNF]" value="6022141.790000001" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[free_TNFR1]" value="6022.1417899999997" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[pTNFR1]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[free_TNFR2]" value="6022.1417899999997" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[pTNFR2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[TRADD:TRAF2:TRAF5:RIP1_Active]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[TRADD:TRAF2:TRAF5:RIP1_Inactive]" value="6022.1417899999997" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[TRAF1:TRAF2:TRAF3_Active]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[TRAF1:TRAF2:TRAF3_Inactive]" value="6022.1417899999997" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[NIK_Active]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[NIK_Inactive]" value="6022.1417899999997" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[IKKbeta:IKKalfa:IKKgamma_Active]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[IKKbeta:IKKalfa:IKKgamma_Inactive]" value="6022.1417899999997" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[TAB1:TAB2:TAB3:TAK1_Active]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[TAB1:TAB2:TAB3:TAK1_Inactive]" value="6022.1417899999997" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[MAP3K8:NF-kB_Active]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[MAP3K8:NF-kB_Inactive]" value="602.21417899999994" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[pro_TNFR1]" value="3011.0708949999998" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[pro_TNFR2]" value="3011.0708949999998" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[bRaf_Mutated_Inactive]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[TRADD:TRAF2:TRAF5:RIP1_bRafINH_Active]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[TRADD:TRAF2:TRAF5:RIP1_bRafINH_Inactive]" value="903.32126850000077" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[TAB1:TAB2:TAB3:TAK1_bRafINH_Inactive]" value="903.32126850000077" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[TAB1:TAB2:TAB3:TAK1_bRafINH_Active]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[NIK_bRafINH_Active]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[NIK_bRafINH_Inactive]" value="903.32126850000077" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[IKKbeta:IKKalfa:IKKgamma_bRafINH_Active]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[IKKbeta:IKKalfa:IKKgamma_bRafINH_Inactive]" value="903.32126850000077" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[MAP3K8:NF-kB_bRafINH_Active]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[MAP3K8:NF-kB_bRafINH_Inactive]" value="903.32126850000077" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[TRAF1:TRAF2:TRAF3_bRafINH_Active]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[TRAF1:TRAF2:TRAF3_bRafINH_Inactive]" value="2709.9638055000005" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[MAP3K8:NF-kB_RasINH_Active]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[MAP3K8:NF-kB_RasINH_Inactive]" value="1354.9819027500002" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[mTORC2_Inactive]" value="6022.1417899999997" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[MAP3K8_inhibitor]" value="6022.1417899999997" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[MAP3K8:NF-kB_inhibited]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Ras_Activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Ras_Activation],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Ras_Activation],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Raf1_Activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Raf1_Activation],ParameterGroup=Parameters,Parameter=Kcat" value="0.12" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Raf1_Activation],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Mek_Activation_Raf1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Mek_Activation_Raf1],ParameterGroup=Parameters,Parameter=Kcat" value="0.096000000000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Mek_Activation_Raf1],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Erk_Activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Erk_Activation],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Erk_Activation],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[PI3K_Activation_pEGFR]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[PI3K_Activation_pEGFR],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[PI3K_Activation_pEGFR],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[PI3K_Activation_Ras]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[PI3K_Activation_Ras],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[PI3K_Activation_Ras],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[PI3K_Deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[PI3K_Deactivation],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Akt_Activation_PI3K]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Akt_Activation_PI3K],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Akt_Activation_PI3K],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Raf1_Deactivation_Akt]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Raf1_Deactivation_Akt],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Raf1_Deactivation_Akt],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[EGFR_Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[EGFR_Degradation],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Mek_Activation_bRafMutated]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Mek_Activation_bRafMutated],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Mek_Activation_bRafMutated],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[EGFR_Production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[EGFR_Production],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[PIP3_Activation_PIP3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[PIP3_Activation_PIP3],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[PIP3_Activation_PIP3],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[PIP3_Feedback_Deactivation_PTEN]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[PIP3_Feedback_Deactivation_PTEN],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[PIP3_Feedback_Deactivation_PTEN],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Akt_Activation_PIP3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Akt_Activation_PIP3],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Akt_Activation_PIP3],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[PDK1_Activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[PDK1_Activation],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[PDK1_Activation],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[PDK1_Deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[PDK1_Deactivation],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Akt_Activation_PDK1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Akt_Activation_PDK1],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Akt_Activation_PDK1],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Akt_Feedback_Activation_HSP90-Cdc37]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Akt_Feedback_Activation_HSP90-Cdc37],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Akt_Feedback_Activation_HSP90-Cdc37],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Akt_Feedback_Deactivation_PHLPP]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Akt_Feedback_Deactivation_PHLPP],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Akt_Feedback_Deactivation_PHLPP],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Akt_Feedback_Activation_mTORC2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Akt_Feedback_Activation_mTORC2],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Akt_Feedback_Activation_mTORC2],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Akt_Feedback_Activation_TCL1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Akt_Feedback_Activation_TCL1],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Akt_Feedback_Activation_TCL1],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Akt_Feedback_Deactivation_CTMP]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Akt_Feedback_Deactivation_CTMP],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Akt_Feedback_Deactivation_CTMP],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Erk_Feedback_Deactivation_Raf1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Erk_Feedback_Deactivation_Raf1],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Erk_Feedback_Deactivation_Raf1],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Sos_Deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Sos_Deactivation],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[mTORC1_Activation_Akt]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[mTORC1_Activation_Akt],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[mTORC1_Activation_Akt],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[EGFR_Degradation_Free]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[EGFR_Degradation_Free],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Sos_Activation_Grb2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Sos_Activation_Grb2],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Sos_Activation_Grb2],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Grb2_Activation_pEGFR]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Grb2_Activation_pEGFR],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Grb2_Activation_pEGFR],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Grb2_Deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Grb2_Deactivation],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[FGFR_Production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[FGFR_Production],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[FGFR_Degradation_Free]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[FGFR_Degradation_Free],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[FGFR_Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[FGFR_Degradation],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Grb2_Activation_pFGFR]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Grb2_Activation_pFGFR],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Grb2_Activation_pFGFR],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TRADD:TRAF2:TRAF5:RIP1_Activation_pTNFR1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TRADD:TRAF2:TRAF5:RIP1_Activation_pTNFR1],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TRADD:TRAF2:TRAF5:RIP1_Activation_pTNFR1],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TRAF1:TRAF2:TRAF3_Activation_pTNFR2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TRAF1:TRAF2:TRAF3_Activation_pTNFR2],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TRAF1:TRAF2:TRAF3_Activation_pTNFR2],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[PI3K_Activation_TRAF1:TRAF2:TRAF3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[PI3K_Activation_TRAF1:TRAF2:TRAF3],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[PI3K_Activation_TRAF1:TRAF2:TRAF3],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[NIK_Activation_TRADD:TRAF2:TRAF5:RIP1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[NIK_Activation_TRADD:TRAF2:TRAF5:RIP1],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[NIK_Activation_TRADD:TRAF2:TRAF5:RIP1],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TAB1:TAB2:TAB3:TAK1_Activation_TRADD:TRAF2:TRAF5:RIP1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TAB1:TAB2:TAB3:TAK1_Activation_TRADD:TRAF2:TRAF5:RIP1],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TAB1:TAB2:TAB3:TAK1_Activation_TRADD:TRAF2:TRAF5:RIP1],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[IKKbeta:IKKalfa:IKKgamma_Activation_TRADD:TRAF2:TRAF5:RIP1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[IKKbeta:IKKalfa:IKKgamma_Activation_TRADD:TRAF2:TRAF5:RIP1],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[IKKbeta:IKKalfa:IKKgamma_Activation_TRADD:TRAF2:TRAF5:RIP1],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[IKKbeta:IKKalfa:IKKgamma_Activation_NIK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[IKKbeta:IKKalfa:IKKgamma_Activation_NIK],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[IKKbeta:IKKalfa:IKKgamma_Activation_NIK],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[IKKbeta:IKKalfa:IKKgamma_Activation_TAB1:TAB2:TAB3:TAK1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[IKKbeta:IKKalfa:IKKgamma_Activation_TAB1:TAB2:TAB3:TAK1],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[IKKbeta:IKKalfa:IKKgamma_Activation_TAB1:TAB2:TAB3:TAK1],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[MAP3K8:NF-kB_Activation_IKKbeta:IKKalfa]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[MAP3K8:NF-kB_Activation_IKKbeta:IKKalfa],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[MAP3K8:NF-kB_Activation_IKKbeta:IKKalfa],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Mek_Activation_MAP3K8:NF-kB]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Mek_Activation_MAP3K8:NF-kB],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Mek_Activation_MAP3K8:NF-kB],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TNFR1_Production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TNFR1_Production],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TNFR2_Production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TNFR2_Production],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TNFR1_Degradation_Free]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TNFR1_Degradation_Free],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TNFR2_Degradation_Free]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TNFR2_Degradation_Free],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TNFR1_Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TNFR1_Degradation],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TNFR2_Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TNFR2_Degradation],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[IKKbeta:IKKalfa:IKKgamma_Deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[IKKbeta:IKKalfa:IKKgamma_Deactivation],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Mek_Deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Mek_Deactivation],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[mTORC1_Deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[mTORC1_Deactivation],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[NIK_Deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[NIK_Deactivation],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Ras_Deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Ras_Deactivation],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TAB1:TAB2:TAB3:TAK1_Deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TAB1:TAB2:TAB3:TAK1_Deactivation],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[MAP3K8:NF-kB_Deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[MAP3K8:NF-kB_Deactivation],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TRADD:TRAF2:TRAF5:RIP1_Deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TRADD:TRAF2:TRAF5:RIP1_Deactivation],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TRAF1:TRAF2:TRAF3_Deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TRAF1:TRAF2:TRAF3_Deactivation],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TRADDComplex_Activation_bRafINH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TRADDComplex_Activation_bRafINH],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TRADDComplex_Activation_bRafINH],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TABComplex_Activation_bRafINH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TABComplex_Activation_bRafINH],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TABComplex_Activation_bRafINH],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[NIK_Activation_bRafINH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[NIK_Activation_bRafINH],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[NIK_Activation_bRafINH],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[IKKComplex_Activation_bRafINH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[IKKComplex_Activation_bRafINH],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[IKKComplex_Activation_bRafINH],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[MAP3K8Complex_Activation_bRafINH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[MAP3K8Complex_Activation_bRafINH],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[MAP3K8Complex_Activation_bRafINH],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TRAFComplex_Activation_bRafINH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TRAFComplex_Activation_bRafINH],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TRAFComplex_Activation_bRafINH],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[PLX4032_degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[PLX4032_degradation],ParameterGroup=Parameters,Parameter=k1" value="3.3778999999999999e-06" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[bRafMutated_Deactivation_PLX4032]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[bRafMutated_Deactivation_PLX4032],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[bRafMutated_Deactivation_PLX4032],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[bRafMutated_Activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[bRafMutated_Activation],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[MAP3K8Complex_Activation_RasINH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[MAP3K8Complex_Activation_RasINH],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[MAP3K8Complex_Activation_RasINH],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[mTORC2_Deactivation_bRafMutated]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[mTORC2_Deactivation_bRafMutated],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[mTORC2_Deactivation_bRafMutated],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[mTORC2_Activation_PI3K]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[mTORC2_Activation_PI3K],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[mTORC2_Activation_PI3K],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[MAP3K8Complex_pERK_bRafINH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[MAP3K8Complex_pERK_bRafINH],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[MAP3K8Complex_pERK_bRafINH],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TRADDComplex_pERK_bRafINH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TRADDComplex_pERK_bRafINH],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TRADDComplex_pERK_bRafINH],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[IKKComplex_pERK_bRafINH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[IKKComplex_pERK_bRafINH],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[IKKComplex_pERK_bRafINH],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[NIK_pERK_bRafINH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[NIK_pERK_bRafINH],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[NIK_pERK_bRafINH],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TABComplex_pERK_bRafINH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TABComplex_pERK_bRafINH],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TABComplex_pERK_bRafINH],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[EGF_Binding_Unbinding (forward)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[EGF_Binding_Unbinding (forward)],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[EGF_Binding_Unbinding (backward)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[EGF_Binding_Unbinding (backward)],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[FGF_Binding_Unbinding (forward)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[FGF_Binding_Unbinding (forward)],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[FGF_Binding_Unbinding (backward)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[FGF_Binding_Unbinding (backward)],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TNF_Binding_Unbinding_TNFR1 (forward)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TNF_Binding_Unbinding_TNFR1 (forward)],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TNF_Binding_Unbinding_TNFR1 (backward)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TNF_Binding_Unbinding_TNFR1 (backward)],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TNF_Binding_Unbinding_TNFR2 (forward)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TNF_Binding_Unbinding_TNFR2 (forward)],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TNF_Binding_Unbinding_TNFR2 (backward)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TNF_Binding_Unbinding_TNFR2 (backward)],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[MAP3K8:NF-kB_Deactivation_MAP3K8_inhibitor]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[MAP3K8:NF-kB_Deactivation_MAP3K8_inhibitor],ParameterGroup=Parameters,Parameter=k1" value="0.014999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_24"/>
      <StateTemplateVariable objectReference="Metabolite_28"/>
      <StateTemplateVariable objectReference="Metabolite_30"/>
      <StateTemplateVariable objectReference="Metabolite_37"/>
      <StateTemplateVariable objectReference="Metabolite_26"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_114"/>
      <StateTemplateVariable objectReference="Metabolite_116"/>
      <StateTemplateVariable objectReference="Metabolite_124"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_129"/>
      <StateTemplateVariable objectReference="Metabolite_34"/>
      <StateTemplateVariable objectReference="Metabolite_20"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_32"/>
      <StateTemplateVariable objectReference="Metabolite_118"/>
      <StateTemplateVariable objectReference="Metabolite_120"/>
      <StateTemplateVariable objectReference="Metabolite_122"/>
      <StateTemplateVariable objectReference="Metabolite_36"/>
      <StateTemplateVariable objectReference="Metabolite_126"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_115"/>
      <StateTemplateVariable objectReference="Metabolite_117"/>
      <StateTemplateVariable objectReference="Metabolite_38"/>
      <StateTemplateVariable objectReference="Metabolite_133"/>
      <StateTemplateVariable objectReference="Metabolite_136"/>
      <StateTemplateVariable objectReference="Metabolite_137"/>
      <StateTemplateVariable objectReference="Metabolite_139"/>
      <StateTemplateVariable objectReference="Metabolite_141"/>
      <StateTemplateVariable objectReference="Metabolite_27"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_143"/>
      <StateTemplateVariable objectReference="Metabolite_145"/>
      <StateTemplateVariable objectReference="Metabolite_128"/>
      <StateTemplateVariable objectReference="Metabolite_134"/>
      <StateTemplateVariable objectReference="Metabolite_142"/>
      <StateTemplateVariable objectReference="Metabolite_135"/>
      <StateTemplateVariable objectReference="Metabolite_140"/>
      <StateTemplateVariable objectReference="Metabolite_138"/>
      <StateTemplateVariable objectReference="Metabolite_33"/>
      <StateTemplateVariable objectReference="Metabolite_148"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_31"/>
      <StateTemplateVariable objectReference="Metabolite_132"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_147"/>
      <StateTemplateVariable objectReference="Metabolite_119"/>
      <StateTemplateVariable objectReference="Metabolite_121"/>
      <StateTemplateVariable objectReference="Metabolite_123"/>
      <StateTemplateVariable objectReference="Metabolite_35"/>
      <StateTemplateVariable objectReference="Metabolite_127"/>
      <StateTemplateVariable objectReference="Metabolite_29"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_149"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_146"/>
      <StateTemplateVariable objectReference="Metabolite_25"/>
      <StateTemplateVariable objectReference="Metabolite_125"/>
      <StateTemplateVariable objectReference="Metabolite_144"/>
      <StateTemplateVariable objectReference="Metabolite_22"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_18"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_130"/>
      <StateTemplateVariable objectReference="Metabolite_131"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 0 0 0 6022.1417899999997 0 6022.1417899999997 6022.1417899999997 6022.1417899999997 0 0 602.21417899999994 0 0 6022.1417899999997 0 0 60221.417900000015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6022.1417899999997 602214.179 0 0 0 903.32126850000077 903.32126850000077 903.32126850000077 903.32126850000077 903.32126850000077 6022.1417899999997 6022.1417899999997 6022.1417899999997 6022.1417899999997 6022.1417899999997 0 6022.1417899999997 6022.1417899999997 6022.1417899999997 6022.1417899999997 6022.1417899999997 6022.1417899999997 6022.1417899999997 6022.1417899999997 0 0 6022.1417899999997 1354.9819027500002 6022.1417899999997 6022.1417899999997 2709.9638055000005 6022141.790000001 3011.0708949999998 6022.1417899999997 6022.1417899999997 6022.1417899999997 6022.1417899999997 6022.1417899999997 6022141.790000001 3011.0708949999998 6022141.790000001 3011.0708949999998 3011.0708949999998 9.9999999999999998e-13 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_14" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_0" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="1.0000000000000001e-09"/>
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
    <Task key="Task_1" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_0" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="14400"/>
        <Parameter name="StepSize" type="float" value="1"/>
        <Parameter name="Duration" type="float" value="14400"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="0"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
        <Parameter name="Continue on Simultaneous Events" type="bool" value="1"/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_2" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Report reference="Report_9" target="treated.txt" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="1"/>
            <Parameter name="Type" type="unsignedInteger" value="1"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[MAP3K8_inhibitor],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0"/>
            <Parameter name="Maximum" type="float" value="10"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Use Values" type="bool" value="0"/>
            <Parameter name="Values" type="string" value=""/>
          </ParameterGroup>
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="1"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
        <Parameter name="Continue on Error" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_3" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_1" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_4" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_2" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_5" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_3" target="" append="1" confirmOverwrite="1"/>
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
      <Method name="Genetic Algorithm" type="GeneticAlgorithm">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Number of Generations" type="unsignedInteger" value="200"/>
        <Parameter name="Population Size" type="unsignedInteger" value="20"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
        <Parameter name="Mutation Variance" type="float" value="0.10000000000000001"/>
        <Parameter name="Stop after # Stalled Generations" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_6" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_4" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_14"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_7" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_5" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_8" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_6" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
      </Problem>
      <Method name="ILDM (LSODA,Deuflhard)" type="TimeScaleSeparation(ILDM,Deuflhard)">
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
      </Method>
    </Task>
    <Task key="Task_9" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_7" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="SubtaskType" type="unsignedInteger" value="1"/>
        <ParameterGroup name="TargetFunctions">
          <Parameter name="SingleObject" type="cn" value="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[pERK],Reference=Concentration"/>
          <Parameter name="ObjectListType" type="unsignedInteger" value="1"/>
        </ParameterGroup>
        <ParameterGroup name="ListOfVariables">
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="3"/>
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
    <Task key="Task_10" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Report reference="Report_21" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_11" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
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
        <Parameter name="ConvergenceTolerance" type="float" value="0"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="0"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
        <Parameter name="Continue on Simultaneous Events" type="bool" value="0"/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_12" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_8" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_14"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
    <Task key="Task_0" name="Time-Course Sensitivities" type="timeSensitivities" scheduled="false" updateModel="false">
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
    <Report key="Report_0" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_1" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_2" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
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
    <Report key="Report_3" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
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
    <Report key="Report_5" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
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
    <Report key="Report_6" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_7" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
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
    <Report key="Report_8" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
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
    <Report key="Report_9" name="Scan Parameters, Time, Concentrations, Volumes, and Global Quantity Values" taskType="scan" separator="&#x09;" precision="6">
      <Comment>
        A table of scan parameters, time, variable species concentrations, variable compartment volumes, and variable global quantity values.
      </Comment>
      <Table printTitle="1">
        <Object cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Reference=Time"/>
        <Object cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[pERK],Reference=Concentration"/>
      </Table>
    </Report>
    <Report key="Report_21" name="Moieties" taskType="moieties" separator="&#x09;" precision="6">
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
    <PlotSpecification name="pERK dynamics" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="pERK dynamics" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Giani2019 - Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[pERK],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="8505C_Spheres_V2.7_reproductive.xml">
    <SBMLMap SBMLid="Akt_Activation_PDK1" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="Akt_Activation_PIP3" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="Akt_Feedback_Activation_HSP90_Cdc37" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="Akt_Feedback_Activation_TCL1" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="Akt_Feedback_Activation_mTORC2" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="Akt_Feedback_Deactivation_CTMP" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="Akt_Feedback_Deactivation_PHLPP" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="CTMPActive" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="EGFR_Degradation_Free" COPASIkey="Reaction_111"/>
    <SBMLMap SBMLid="Erk_Feedback_Deactivation_Raf1" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="FGF" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="FGFR_Degradation" COPASIkey="Reaction_117"/>
    <SBMLMap SBMLid="FGFR_Degradation_Free" COPASIkey="Reaction_116"/>
    <SBMLMap SBMLid="FGFR_Production" COPASIkey="Reaction_115"/>
    <SBMLMap SBMLid="Grb2Active" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="Grb2Inactive" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="Grb2_Activation_pEGFR" COPASIkey="Reaction_113"/>
    <SBMLMap SBMLid="Grb2_Activation_pFGFR" COPASIkey="Reaction_118"/>
    <SBMLMap SBMLid="Grb2_Deactivation" COPASIkey="Reaction_114"/>
    <SBMLMap SBMLid="HMM_Modified" COPASIkey="Function_55"/>
    <SBMLMap SBMLid="HSP90_Cdc37Active" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="IKKComplex_Activation_bRafINH" COPASIkey="Reaction_147"/>
    <SBMLMap SBMLid="IKKbeta_IKKalfa_IKKgamma_Activation_NIK" COPASIkey="Reaction_125"/>
    <SBMLMap SBMLid="IKKbeta_IKKalfa_IKKgamma_Activation_TAB1_TAB2_TAB3_TAK1" COPASIkey="Reaction_126"/>
    <SBMLMap SBMLid="IKKbeta_IKKalfa_IKKgamma_Activation_TRADD_TRAF2_TRAF5_RIP1" COPASIkey="Reaction_124"/>
    <SBMLMap SBMLid="IKKbeta_IKKalfa_IKKgamma_Active" COPASIkey="Metabolite_124"/>
    <SBMLMap SBMLid="IKKbeta_IKKalfa_IKKgamma_Deactivation" COPASIkey="Reaction_135"/>
    <SBMLMap SBMLid="IKKbeta_IKKalfa_IKKgamma_Inactive" COPASIkey="Metabolite_125"/>
    <SBMLMap SBMLid="IKKbeta_IKKalfa_IKKgamma_bRafINH_Active" COPASIkey="Metabolite_139"/>
    <SBMLMap SBMLid="IKKbeta_IKKalfa_IKKgamma_bRafINH_Inactive" COPASIkey="Metabolite_140"/>
    <SBMLMap SBMLid="Mek_Activation__Tpl2_NF_kB" COPASIkey="Reaction_128"/>
    <SBMLMap SBMLid="Mek_Deactivation" COPASIkey="Reaction_136"/>
    <SBMLMap SBMLid="NIKActive" COPASIkey="Metabolite_122"/>
    <SBMLMap SBMLid="NIKInactive" COPASIkey="Metabolite_123"/>
    <SBMLMap SBMLid="NIK_Activation_TRADD_TRAF2_TRAF5_RIP1" COPASIkey="Reaction_122"/>
    <SBMLMap SBMLid="NIK_Activation_bRafINH" COPASIkey="Reaction_146"/>
    <SBMLMap SBMLid="NIK_Deactivation" COPASIkey="Reaction_138"/>
    <SBMLMap SBMLid="NIK_bRafINH_Active" COPASIkey="Metabolite_137"/>
    <SBMLMap SBMLid="NIK_bRafINH_Inactive" COPASIkey="Metabolite_138"/>
    <SBMLMap SBMLid="PDK1Active" COPASIkey="Metabolite_16"/>
    <SBMLMap SBMLid="PDK1Inactive" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="PDK1_Activation" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="PDK1_Deactivation" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="PHLPPActive" COPASIkey="Metabolite_14"/>
    <SBMLMap SBMLid="PI3K_Activation_TRAF1_TRAF2_TRAF3" COPASIkey="Reaction_121"/>
    <SBMLMap SBMLid="PIP3Active" COPASIkey="Metabolite_20"/>
    <SBMLMap SBMLid="PIP3Inactive" COPASIkey="Metabolite_19"/>
    <SBMLMap SBMLid="PIP3_Activation_PIP3" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="PIP3_Feedback_Deactivation_PTEN" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="PLX4032" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="PLX4032_degradation" COPASIkey="Reaction_150"/>
    <SBMLMap SBMLid="PTENActive" COPASIkey="Metabolite_18"/>
    <SBMLMap SBMLid="Ras_Deactivation" COPASIkey="Reaction_139"/>
    <SBMLMap SBMLid="Sos_Activation_Grb2" COPASIkey="Reaction_112"/>
    <SBMLMap SBMLid="Sos_Deactivation" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="TAB1_TAB2_TAB3_TAK1_Activation_TRADD_TRAF2_TRAF5_RIP1" COPASIkey="Reaction_123"/>
    <SBMLMap SBMLid="TAB1_TAB2_TAB3_TAK1_Active" COPASIkey="Metabolite_126"/>
    <SBMLMap SBMLid="TAB1_TAB2_TAB3_TAK1_Deactivation" COPASIkey="Reaction_140"/>
    <SBMLMap SBMLid="TAB1_TAB2_TAB3_TAK1_Inactive" COPASIkey="Metabolite_127"/>
    <SBMLMap SBMLid="TAB1_TAB2_TAB3_TAK1_bRafINH_Active" COPASIkey="Metabolite_136"/>
    <SBMLMap SBMLid="TAB1_TAB2_TAB3_TAK1_bRafINH_Inactive" COPASIkey="Metabolite_135"/>
    <SBMLMap SBMLid="TABComplex_Activation_bRafINH" COPASIkey="Reaction_145"/>
    <SBMLMap SBMLid="TCL1Active" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="TNF" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="TNFR1_Degradation" COPASIkey="Reaction_133"/>
    <SBMLMap SBMLid="TNFR1_Degradation_Free" COPASIkey="Reaction_131"/>
    <SBMLMap SBMLid="TNFR1_Production" COPASIkey="Reaction_129"/>
    <SBMLMap SBMLid="TNFR2_Degradation" COPASIkey="Reaction_134"/>
    <SBMLMap SBMLid="TNFR2_Degradation_Free" COPASIkey="Reaction_132"/>
    <SBMLMap SBMLid="TNFR2_Production" COPASIkey="Reaction_130"/>
    <SBMLMap SBMLid="TRADDComplex_Activation_bRafINH" COPASIkey="Reaction_144"/>
    <SBMLMap SBMLid="TRADD_TRAF2_TRAF5_RIP1_Activation_pTNFR1" COPASIkey="Reaction_119"/>
    <SBMLMap SBMLid="TRADD_TRAF2_TRAF5_RIP1_Active" COPASIkey="Metabolite_118"/>
    <SBMLMap SBMLid="TRADD_TRAF2_TRAF5_RIP1_Deactivation" COPASIkey="Reaction_142"/>
    <SBMLMap SBMLid="TRADD_TRAF2_TRAF5_RIP1_Inactive" COPASIkey="Metabolite_119"/>
    <SBMLMap SBMLid="TRADD_TRAF2_TRAF5_RIP1_bRafINH_Active" COPASIkey="Metabolite_133"/>
    <SBMLMap SBMLid="TRADD_TRAF2_TRAF5_RIP1_bRafINH_Inactive" COPASIkey="Metabolite_134"/>
    <SBMLMap SBMLid="TRAF1_TRAF2_TRAF3_Activation_pTNFR2" COPASIkey="Reaction_120"/>
    <SBMLMap SBMLid="TRAF1_TRAF2_TRAF3_Active" COPASIkey="Metabolite_120"/>
    <SBMLMap SBMLid="TRAF1_TRAF2_TRAF3_Deactivation" COPASIkey="Reaction_143"/>
    <SBMLMap SBMLid="TRAF1_TRAF2_TRAF3_Inactive" COPASIkey="Metabolite_121"/>
    <SBMLMap SBMLid="TRAF1_TRAF2_TRAF3_bRafINH_Active" COPASIkey="Metabolite_143"/>
    <SBMLMap SBMLid="TRAF1_TRAF2_TRAF3_bRafINH_Inactive" COPASIkey="Metabolite_144"/>
    <SBMLMap SBMLid="TRAFComplex_Activation_bRafINH" COPASIkey="Reaction_149"/>
    <SBMLMap SBMLid="Tpl2Complex_Activation_RasINH" COPASIkey="Reaction_153"/>
    <SBMLMap SBMLid="Tpl2Complex_Activation_bRafINH" COPASIkey="Reaction_148"/>
    <SBMLMap SBMLid="Tpl2_NF_kB_Activation_IKKbeta_IKKalfa" COPASIkey="Reaction_127"/>
    <SBMLMap SBMLid="Tpl2_NF_kB_Active" COPASIkey="Metabolite_128"/>
    <SBMLMap SBMLid="Tpl2_NF_kB_Deactivation" COPASIkey="Reaction_141"/>
    <SBMLMap SBMLid="Tpl2_NF_kB_Inactive" COPASIkey="Metabolite_129"/>
    <SBMLMap SBMLid="Tpl2_NF_kB_RasINH_Active" COPASIkey="Metabolite_145"/>
    <SBMLMap SBMLid="Tpl2_NF_kB_RasINH_Inactive" COPASIkey="Metabolite_146"/>
    <SBMLMap SBMLid="Tpl2_NF_kB_bRafINH_Active" COPASIkey="Metabolite_141"/>
    <SBMLMap SBMLid="Tpl2_NF_kB_bRafINH_Inactive" COPASIkey="Metabolite_142"/>
    <SBMLMap SBMLid="bRafMutated" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="bRafMutatedInactive" COPASIkey="Metabolite_132"/>
    <SBMLMap SBMLid="bRafMutated_Deactivation_PLX4032" COPASIkey="Reaction_151"/>
    <SBMLMap SBMLid="bRafMutated_Reconstitution" COPASIkey="Reaction_152"/>
    <SBMLMap SBMLid="compartment_0" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="freeFGFR" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="freeTNFR1" COPASIkey="Metabolite_114"/>
    <SBMLMap SBMLid="freeTNFR2" COPASIkey="Metabolite_116"/>
    <SBMLMap SBMLid="mTORC1Active" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="mTORC1Inactive" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="mTORC1_Activation_Akt" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="mTORC1_Deactivation" COPASIkey="Reaction_137"/>
    <SBMLMap SBMLid="mTORC2Active" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="mTORC2Inactive" COPASIkey="Metabolite_147"/>
    <SBMLMap SBMLid="mTORC2_Activation_PI3K" COPASIkey="Reaction_155"/>
    <SBMLMap SBMLid="mTORC2_Deactivation_bRafMutated" COPASIkey="Reaction_154"/>
    <SBMLMap SBMLid="pFGFR" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="pTNFR1" COPASIkey="Metabolite_115"/>
    <SBMLMap SBMLid="pTNFR2" COPASIkey="Metabolite_117"/>
    <SBMLMap SBMLid="proFGFR" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="proTNFR1" COPASIkey="Metabolite_130"/>
    <SBMLMap SBMLid="proTNFR2" COPASIkey="Metabolite_131"/>
    <SBMLMap SBMLid="reaction_14" COPASIkey="Reaction_21"/>
    <SBMLMap SBMLid="reaction_15" COPASIkey="Reaction_20"/>
    <SBMLMap SBMLid="reaction_16" COPASIkey="Reaction_19"/>
    <SBMLMap SBMLid="reaction_17" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="reaction_19" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="reaction_20" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="reaction_27" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="reaction_28" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="reaction_3" COPASIkey="Reaction_25"/>
    <SBMLMap SBMLid="reaction_5" COPASIkey="Reaction_24"/>
    <SBMLMap SBMLid="reaction_7" COPASIkey="Reaction_23"/>
    <SBMLMap SBMLid="reaction_9" COPASIkey="Reaction_22"/>
    <SBMLMap SBMLid="species_0" COPASIkey="Metabolite_38"/>
    <SBMLMap SBMLid="species_1" COPASIkey="Metabolite_37"/>
    <SBMLMap SBMLid="species_10" COPASIkey="Metabolite_28"/>
    <SBMLMap SBMLid="species_11" COPASIkey="Metabolite_27"/>
    <SBMLMap SBMLid="species_14" COPASIkey="Metabolite_26"/>
    <SBMLMap SBMLid="species_15" COPASIkey="Metabolite_25"/>
    <SBMLMap SBMLid="species_16" COPASIkey="Metabolite_24"/>
    <SBMLMap SBMLid="species_17" COPASIkey="Metabolite_23"/>
    <SBMLMap SBMLid="species_2" COPASIkey="Metabolite_36"/>
    <SBMLMap SBMLid="species_25" COPASIkey="Metabolite_22"/>
    <SBMLMap SBMLid="species_3" COPASIkey="Metabolite_35"/>
    <SBMLMap SBMLid="species_30" COPASIkey="Metabolite_21"/>
    <SBMLMap SBMLid="species_4" COPASIkey="Metabolite_34"/>
    <SBMLMap SBMLid="species_5" COPASIkey="Metabolite_33"/>
    <SBMLMap SBMLid="species_6" COPASIkey="Metabolite_32"/>
    <SBMLMap SBMLid="species_7" COPASIkey="Metabolite_31"/>
    <SBMLMap SBMLid="species_8" COPASIkey="Metabolite_30"/>
    <SBMLMap SBMLid="species_9" COPASIkey="Metabolite_29"/>
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
<dcterms:W3CDTF>2019-12-05T10:27:40Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2019-12-05T10:27:40Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2019-12-05T10:27:40Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2019-12-05T10:27:40Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2019-12-05T10:27:40Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2019-12-05T10:27:40Z</dcterms:W3CDTF>
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
