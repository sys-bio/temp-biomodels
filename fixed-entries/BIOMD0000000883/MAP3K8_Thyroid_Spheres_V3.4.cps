<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.24 (Build 197) (http://www.copasi.org) at 2018-09-06 15:09:15 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="24" versionDevel="197" copasiSourcesModified="0">
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
    <Function key="Function_40" name="HMM_Modified" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_40">
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
        <ParameterDescription key="FunctionParameter_264" name="Kcat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_263" name="km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_262" name="species_14" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_261" name="species_17" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="HMM_Modified_Inverted" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_41">
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
        <ParameterDescription key="FunctionParameter_267" name="species_14" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_266" name="Kcat" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_265" name="species_17" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_250" name="km" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells" simulationType="time" timeUnit="s" volumeUnit="ml" areaUnit="m²" lengthUnit="m" quantityUnit="nmol" type="deterministic" avogadroConstant="6.0221417899999999e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
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
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      <body xmlns="http://www.w3.org/1999/xhtml" />
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="Sphere (thyroid cancer cell)" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
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
      <Metabolite key="Metabolite_0" name="pEGFR" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T09:35:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          pEGFR= boundEGFR
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="freeEGFR" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T09:36:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="SosActive" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T11:50:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="SosInactive" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T13:15:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="RasActive" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T10:59:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="RasInactive" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T10:59:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="Raf1Active" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T10:58:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="Raf1Inactive" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T11:00:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="MekActive" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T10:57:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="MekInactive" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T11:56:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="pERK" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T09:51:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="ERK" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T09:52:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="PI3KActive" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T09:53:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="PI3KInactive" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T10:57:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="pAKT" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T09:35:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="AKT" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T11:00:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_16" name="EGF" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T11:45:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="proEGFR" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T09:52:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_18" name="PIP3Active" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T12:04:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="PIP3Inactive" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T12:04:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_20" name="PTENActive" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T11:59:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_21" name="PDK1Inactive" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-28T10:45:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_22" name="PDK1Active" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-28T10:45:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_23" name="HSP90-Cdc37Active" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-10-06T10:16:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_24" name="PHLPPActive" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-10-06T10:24:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_25" name="mTORC2Active" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-10-06T10:27:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_26" name="TCL1Active" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-10-06T10:28:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_27" name="CTMPActive" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-10-06T10:30:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_28" name="mTORC1Active" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-10-06T11:24:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_29" name="mTORC1Inactive" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-10-06T11:24:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_30" name="bRafMutated" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-10-13T11:05:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
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
      <Metabolite key="Metabolite_31" name="PLX4032" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-01-13T11:19:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Vemurafenib (iBRAF)

Treatment with the RAF inhibitors have opposing effects on AKT phosphorylation depending on the mutational status of two important oncogenes, KRAS and BRAF. If these two genes are in wildtype configuration, RAF inhibitors reduce AKT phosphorylation. In contrast, if BRAF or KRAS are mutant, RAF inhibitors will leave AKT phosphorylation unaffected or lead to an increase of AKT phosphorylation. (doi:  10.18632/oncotarget.6959)


1uM = 1000nmol/l
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_32" name="Grb2Active" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-05T17:07:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_33" name="Grb2Inactive" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-05T17:10:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_34" name="FGF" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_34">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-06T09:37:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_35" name="freeFGFR" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-06T09:37:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_36" name="pFGFR" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_36">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-06T09:37:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_37" name="proFGFR" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-06T09:39:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_38" name="TNF" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_38">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T09:53:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_39" name="freeTNFR1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T09:54:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_40" name="pTNFR1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T09:54:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_41" name="freeTNFR2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T09:58:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_42" name="pTNFR2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T09:59:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_43" name="TRADD:TRAF2:TRAF5:RIP1_Active" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T10:06:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_44" name="TRADD:TRAF2:TRAF5:RIP1_Inactive" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T10:06:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_45" name="TRAF1:TRAF2:TRAF3_Active" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T10:08:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_46" name="TRAF1:TRAF2:TRAF3_Inactive" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T10:08:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_47" name="NIKActive" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T10:18:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_48" name="NIKInactive" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T10:19:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_49" name="IKKbeta:IKKalfa:IKKgamma_Active" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T10:24:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_50" name="IKKbeta:IKKalfa:IKKgamma_Inactive" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_50">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T10:24:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_51" name="TAB1:TAB2:TAB3:TAK1_Active" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T10:29:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_52" name="TAB1:TAB2:TAB3:TAK1_Inactive" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_52">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T10:29:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_53" name="MAP3K8:NF-kB_Active" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_53">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T10:41:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_54" name="MAP3K8:NF-kB_Inactive" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_54">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T10:41:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_55" name="proTNFR1" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_55">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T10:51:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_56" name="proTNFR2" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_56">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T10:51:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_57" name="bRafMutatedInactive" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_57">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-12T12:46:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_58" name="TRADD:TRAF2:TRAF5:RIP1_bRafINH_Active" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_58">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-12T12:57:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_59" name="TRADD:TRAF2:TRAF5:RIP1_bRafINH_Inactive" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_59">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-12T13:17:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_60" name="TAB1:TAB2:TAB3:TAK1_bRafINH_Inactive" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_60">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-12T17:27:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_61" name="TAB1:TAB2:TAB3:TAK1_bRafINH_Active" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_61">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-12T17:27:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_62" name="NIK_bRafINH_Active" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_62">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-12T17:38:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_63" name="NIK_bRafINH_Inactive" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_63">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-12T17:38:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_64" name="IKKbeta:IKKalfa:IKKgamma_bRafINH_Active" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_64">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-12T17:47:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_65" name="IKKbeta:IKKalfa:IKKgamma_bRafINH_Inactive" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_65">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-12T17:47:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_66" name="MAP3K8:NF-kB_bRafINH_Active" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_66">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-12T17:53:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_67" name="MAP3K8:NF-kB_bRafINH_Inactive" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_67">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-12T17:53:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_68" name="TRAF1:TRAF2:TRAF3_bRafINH_Active" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_68">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-13T11:32:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_69" name="TRAF1:TRAF2:TRAF3_bRafINH_Inactive" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_69">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-13T11:33:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_70" name="MAP3K8:NF-kB_RasINH_Active" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_70">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-14T12:57:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_71" name="MAP3K8:NF-kB_RasINH_Inactive" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_71">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-14T12:57:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_72" name="mTORC2Inactive" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_72">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-16T11:22:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_73" name="MAP3K8_inhibitor" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_73">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-29T17:37:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_74" name="MAP3K8:NF-kB_inhibited" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_74">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-29T18:04:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="Ras_Activation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T10:59:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5013" name="Kcat" value="0.1"/>
          <Constant key="Parameter_5012" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_5013"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Parameter_5012"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="Raf1_Activation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T13:17:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5011" name="Kcat" value="0.12"/>
          <Constant key="Parameter_5010" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_5011"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Parameter_5010"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="Mek_Activation_Raf1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-10-06T11:47:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5009" name="Kcat" value="0.096"/>
          <Constant key="Parameter_5008" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_5009"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Parameter_5008"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="Erk_Activation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-10-06T10:30:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
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
          <Constant key="Parameter_5007" name="Kcat" value="0.1"/>
          <Constant key="Parameter_5006" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_5007"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Parameter_5006"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="PI3K_Activation_pEGFR" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T13:14:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5005" name="Kcat" value="0.1"/>
          <Constant key="Parameter_5004" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_5005"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Parameter_5004"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="PI3K_Activation_Ras" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T13:14:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5003" name="Kcat" value="0.1"/>
          <Constant key="Parameter_5002" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_5003"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Parameter_5002"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="PI3K_Deactivation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T13:13:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5001" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5001"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="Akt_Activation_PI3K" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-24T12:43:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5000" name="Kcat" value="0.1"/>
          <Constant key="Parameter_4999" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_5000"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Parameter_4999"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="Raf1_Deactivation_Akt" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-10-06T10:45:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4998" name="Kcat" value="0.1"/>
          <Constant key="Parameter_4997" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_4998"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Parameter_4997"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="EGFR_Degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T11:51:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4996" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4996"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="Mek_Activation_bRafMutated" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-10-06T11:54:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4995" name="km" value="0.1"/>
          <Constant key="Parameter_4994" name="Kcat" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_4994"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Parameter_4995"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="EGFR_Production" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T09:53:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4993" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4993"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="PIP3_Activation_PIP3" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
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
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4992" name="Kcat" value="0.1"/>
          <Constant key="Parameter_4991" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_4992"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Parameter_4991"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="PIP3_Feedback_Deactivation_PTEN" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T13:07:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4990" name="Kcat" value="0.1"/>
          <Constant key="Parameter_4989" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_4990"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Parameter_4989"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="Akt_Activation_PIP3" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-24T12:43:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4988" name="Kcat" value="0.1"/>
          <Constant key="Parameter_4987" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_4988"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Parameter_4987"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="PDK1_Activation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T13:14:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4986" name="Kcat" value="0.1"/>
          <Constant key="Parameter_4985" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_4986"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Parameter_4985"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="PDK1_Deactivation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T13:16:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4984" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4984"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="Akt_Activation_PDK1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-24T12:43:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4983" name="Kcat" value="0.1"/>
          <Constant key="Parameter_4982" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_4983"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Parameter_4982"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="Akt_Feedback_Activation_HSP90-Cdc37" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T13:07:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4981" name="Kcat" value="0.1"/>
          <Constant key="Parameter_4980" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_4981"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Parameter_4980"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="Akt_Feedback_Deactivation_PHLPP" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T13:07:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4979" name="km" value="0.1"/>
          <Constant key="Parameter_4978" name="Kcat" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_4978"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Parameter_4979"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="Akt_Feedback_Activation_mTORC2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T13:07:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4977" name="Kcat" value="0.1"/>
          <Constant key="Parameter_4976" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_4977"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Parameter_4976"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="Akt_Feedback_Activation_TCL1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T13:07:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4975" name="Kcat" value="0.1"/>
          <Constant key="Parameter_4974" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_4975"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Parameter_4974"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="Akt_Feedback_Deactivation_CTMP" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-23T13:07:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4973" name="Kcat" value="0.1"/>
          <Constant key="Parameter_4972" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_4973"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Parameter_4972"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="Erk_Feedback_Deactivation_Raf1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_23">
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
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4971" name="Kcat" value="0.1"/>
          <Constant key="Parameter_4970" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_4971"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Parameter_4970"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="Sos_Deactivation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_24">
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
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4969" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4969"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="mTORC1_Activation_Akt" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-09-24T12:43:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4968" name="Kcat" value="0.1"/>
          <Constant key="Parameter_4967" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_4968"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Parameter_4967"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_26" name="EGFR_Degradation_Free" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-05T10:11:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4966" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4966"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_27" name="Sos_Activation_Grb2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-05T17:07:23Z</dcterms:W3CDTF>
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
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4965" name="Kcat" value="0.1"/>
          <Constant key="Parameter_4964" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_4965"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Parameter_4964"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_28" name="Grb2_Activation_pEGFR" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-05T17:09:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4963" name="Kcat" value="0.1"/>
          <Constant key="Parameter_4962" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_4963"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Parameter_4962"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_29" name="Grb2_Deactivation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-05T17:10:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4961" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4961"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_30" name="FGFR_Production" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-01-20T12:06:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4960" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4960"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_31" name="FGFR_Degradation_Free" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-01-20T12:06:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4959" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4959"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_32" name="FGFR_Degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-06T09:48:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4958" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4958"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_33" name="Grb2_Activation_pFGFR" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-06T09:56:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4957" name="Kcat" value="0.1"/>
          <Constant key="Parameter_4956" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_4957"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Parameter_4956"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_34" name="TRADD:TRAF2:TRAF5:RIP1_Activation_pTNFR1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_34">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T10:05:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4955" name="Kcat" value="0.1"/>
          <Constant key="Parameter_4954" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_4955"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Parameter_4954"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_35" name="TRAF1:TRAF2:TRAF3_Activation_pTNFR2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T10:08:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_46" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4953" name="Kcat" value="0.1"/>
          <Constant key="Parameter_4952" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_4953"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Parameter_4952"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_46"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_36" name="PI3K_Activation_TRAF1:TRAF2:TRAF3" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_36">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T10:13:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4951" name="Kcat" value="0.1"/>
          <Constant key="Parameter_4950" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_4951"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Parameter_4950"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_37" name="NIK_Activation_TRADD:TRAF2:TRAF5:RIP1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T10:18:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_48" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4949" name="Kcat" value="0.1"/>
          <Constant key="Parameter_4948" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_4949"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Parameter_4948"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_48"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_38" name="TAB1:TAB2:TAB3:TAK1_Activation_TRADD:TRAF2:TRAF5:RIP1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_38">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T10:21:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_52" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4947" name="Kcat" value="0.1"/>
          <Constant key="Parameter_4946" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_4947"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Parameter_4946"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_52"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_39" name="IKKbeta:IKKalfa:IKKgamma_Activation_TRADD:TRAF2:TRAF5:RIP1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T10:23:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4945" name="Kcat" value="0.1"/>
          <Constant key="Parameter_4944" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_4945"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Parameter_4944"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_40" name="IKKbeta:IKKalfa:IKKgamma_Activation_NIK" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T10:26:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4943" name="Kcat" value="0.1"/>
          <Constant key="Parameter_4942" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_4943"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Parameter_4942"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_41" name="IKKbeta:IKKalfa:IKKgamma_Activation_TAB1:TAB2:TAB3:TAK1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T10:36:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4941" name="Kcat" value="0.1"/>
          <Constant key="Parameter_4940" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_4941"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Parameter_4940"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_42" name="MAP3K8:NF-kB_Activation_IKKbeta:IKKalfa" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T10:40:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_53" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4939" name="Kcat" value="0.1"/>
          <Constant key="Parameter_4938" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_4939"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Parameter_4938"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_54"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_43" name="Mek_Activation_MAP3K8:NF-kB" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T10:43:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_53" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4937" name="Kcat" value="0.1"/>
          <Constant key="Parameter_4936" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_4937"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Parameter_4936"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_53"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_44" name="TNFR1_Production" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-01-20T12:08:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_55" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4935" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4935"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_55"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_45" name="TNFR2_Production" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-01-20T12:08:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_56" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4934" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4934"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_56"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_46" name="TNFR1_Degradation_Free" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-01-20T12:08:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4933" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4933"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_47" name="TNFR2_Degradation_Free" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-01-20T12:08:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4932" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4932"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_48" name="TNFR1_Degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-01-20T12:08:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4931" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4931"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_49" name="TNFR2_Degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-01-20T12:08:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4930" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4930"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_50" name="IKKbeta:IKKalfa:IKKgamma_Deactivation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_50">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T11:33:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4929" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4929"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_51" name="Mek_Deactivation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T11:38:12Z</dcterms:W3CDTF>
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
        <ListOfConstants>
          <Constant key="Parameter_4928" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4928"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_52" name="mTORC1_Deactivation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_52">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-01-20T12:07:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4927" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4927"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_53" name="NIK_Deactivation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_53">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-12T17:49:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_48" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4926" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4926"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_47"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_54" name="Ras_Deactivation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_54">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-01-20T12:07:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4925" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4925"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_55" name="TAB1:TAB2:TAB3:TAK1_Deactivation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_55">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-14T16:53:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_52" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4924" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4924"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_51"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_56" name="MAP3K8:NF-kB_Deactivation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_56">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T11:58:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_53" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4923" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4923"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_53"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_57" name="TRADD:TRAF2:TRAF5:RIP1_Deactivation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_57">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-12T13:25:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4922" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4922"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_58" name="TRAF1:TRAF2:TRAF3_Deactivation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_58">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-08T12:01:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_46" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4921" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4921"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_59" name="TRADDComplex_Activation_bRafINH" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_59">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-12T13:15:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_59" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_58" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4920" name="Kcat" value="0.1"/>
          <Constant key="Parameter_4919" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_4920"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Parameter_4919"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_59"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_60" name="TABComplex_Activation_bRafINH" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_60">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-12T17:33:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_60" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_52" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4918" name="Kcat" value="0.1"/>
          <Constant key="Parameter_4917" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_4918"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Parameter_4917"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_52"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_60"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_61" name="NIK_Activation_bRafINH" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_61">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-12T17:36:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_63" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_62" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_48" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4916" name="Kcat" value="0.1"/>
          <Constant key="Parameter_4915" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_4916"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Parameter_4915"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_63"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_62" name="IKKComplex_Activation_bRafINH" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_62">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-12T17:46:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_65" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_64" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4914" name="Kcat" value="0.1"/>
          <Constant key="Parameter_4913" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_4914"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Parameter_4913"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_65"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_63" name="MAP3K8Complex_Activation_bRafINH" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_63">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-12T17:52:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_67" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_66" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4912" name="Kcat" value="0.1"/>
          <Constant key="Parameter_4911" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_4912"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Parameter_4911"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_67"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_64" name="TRAFComplex_Activation_bRafINH" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_64">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-13T11:33:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_68" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_46" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4910" name="Kcat" value="0.1"/>
          <Constant key="Parameter_4909" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_4910"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Parameter_4909"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_69"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_65" name="PLX4032_degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_65">
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
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4908" name="k1" value="3.3779e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4908"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_66" name="bRafMutated_Deactivation_PLX4032" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_66">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-13T12:22:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_57" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4907" name="Kcat" value="0.1"/>
          <Constant key="Parameter_4906" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_4907"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Parameter_4906"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_67" name="bRafMutated_Reconstitution" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_67">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-13T12:23:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_57" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4905" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4905"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_57"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_68" name="MAP3K8Complex_Activation_RasINH" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_68">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-12T17:52:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_71" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_70" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4904" name="Kcat" value="0.1"/>
          <Constant key="Parameter_4903" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_4904"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Parameter_4903"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_71"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_69" name="mTORC2_Deactivation_bRafMutated" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_69">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-16T11:20:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_72" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4902" name="Kcat" value="0.1"/>
          <Constant key="Parameter_4901" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_4902"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Parameter_4901"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_70" name="mTORC2_Activation_PI3K" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_70">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-16T11:24:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_72" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4900" name="Kcat" value="0.1"/>
          <Constant key="Parameter_4899" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_4900"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Parameter_4899"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_72"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_71" name="MAP3K8Complex_pERK_bRafINH" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_71">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-23T13:38:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_66" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4898" name="Kcat" value="0.1"/>
          <Constant key="Parameter_4897" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Parameter_4898"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Metabolite_66"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Parameter_4897"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_72" name="TRADDComplex_pERK_bRafINH" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_72">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-23T13:48:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_58" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4896" name="Kcat" value="0.1"/>
          <Constant key="Parameter_4895" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Parameter_4896"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Metabolite_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Parameter_4895"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_73" name="IKKComplex_pERK_bRafINH" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_73">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-23T13:56:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_64" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4894" name="Kcat" value="0.1"/>
          <Constant key="Parameter_4893" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Parameter_4894"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Metabolite_64"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Parameter_4893"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_74" name="NIK_pERK_bRafINH" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_74">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-23T13:58:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_62" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4892" name="Kcat" value="0.1"/>
          <Constant key="Parameter_4891" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Parameter_4892"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Metabolite_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Parameter_4891"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_75" name="TABComplex_pERK_bRafINH" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_75">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-23T13:59:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4890" name="Kcat" value="0.1"/>
          <Constant key="Parameter_4889" name="km" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Parameter_4890"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Metabolite_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Parameter_4889"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_76" name="EGF_Binding_Unbinding (forward)" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4888" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4888"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_16"/>
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_77" name="EGF_Binding_Unbinding (backward)" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4887" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4887"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_78" name="FGF_Binding_Unbinding (forward)" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_34" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4886" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4886"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_34"/>
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_79" name="FGF_Binding_Unbinding (backward)" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_34" stoichiometry="1"/>
          <Product metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4885" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4885"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_80" name="TNF_Binding_Unbinding_TNFR1 (forward)" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_38" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4884" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4884"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_38"/>
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_81" name="TNF_Binding_Unbinding_TNFR1 (backward)" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_38" stoichiometry="1"/>
          <Product metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4883" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4883"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_82" name="TNF_Binding_Unbinding_TNFR2 (forward)" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_38" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4882" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4882"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_38"/>
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_83" name="TNF_Binding_Unbinding_TNFR2 (backward)" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_38" stoichiometry="1"/>
          <Product metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4881" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4881"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_84" name="MAP3K8:NF-kB_Deactivation_MAP3K8_inhibitor" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_84">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-29T17:39:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_54" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_73" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_74" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4880" name="k1" value="0.015"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4880"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_54"/>
              <SourceParameter reference="Metabolite_73"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)]" value="9.9999999999999998e-13" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[pEGFR]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[freeEGFR]" value="6022.1417899999997" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[SosActive]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[SosInactive]" value="6022.1417899999997" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[RasActive]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[RasInactive]" value="6022.1417899999997" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[Raf1Active]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[Raf1Inactive]" value="6022.1417899999997" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[MekActive]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[MekInactive]" value="6022.1417899999997" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[pERK]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[ERK]" value="6022.1417899999997" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[PI3KActive]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[PI3KInactive]" value="6022.1417899999997" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[pAKT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[AKT]" value="6022.1417899999997" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[EGF]" value="6022141.790000001" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[proEGFR]" value="3011.0708949999998" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[PIP3Active]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[PIP3Inactive]" value="6022.1417899999997" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[PTENActive]" value="6022.1417899999997" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[PDK1Inactive]" value="6022.1417899999997" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[PDK1Active]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[HSP90-Cdc37Active]" value="6022.1417899999997" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[PHLPPActive]" value="6022.1417899999997" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[mTORC2Active]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[TCL1Active]" value="6022.1417899999997" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[CTMPActive]" value="6022.1417899999997" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[mTORC1Active]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[mTORC1Inactive]" value="6022.1417899999997" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[bRafMutated]" value="60221.417900000015" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[PLX4032]" value="602214.179" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[Grb2Active]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[Grb2Inactive]" value="6022.1417899999997" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[FGF]" value="6022141.790000001" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[freeFGFR]" value="6022.1417899999997" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[pFGFR]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[proFGFR]" value="3011.0708949999998" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[TNF]" value="6022141.790000001" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[freeTNFR1]" value="6022.1417899999997" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[pTNFR1]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[freeTNFR2]" value="6022.1417899999997" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[pTNFR2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[TRADD:TRAF2:TRAF5:RIP1_Active]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[TRADD:TRAF2:TRAF5:RIP1_Inactive]" value="6022.1417899999997" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[TRAF1:TRAF2:TRAF3_Active]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[TRAF1:TRAF2:TRAF3_Inactive]" value="6022.1417899999997" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[NIKActive]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[NIKInactive]" value="6022.1417899999997" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[IKKbeta:IKKalfa:IKKgamma_Active]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[IKKbeta:IKKalfa:IKKgamma_Inactive]" value="6022.1417899999997" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[TAB1:TAB2:TAB3:TAK1_Active]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[TAB1:TAB2:TAB3:TAK1_Inactive]" value="6022.1417899999997" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[MAP3K8:NF-kB_Active]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[MAP3K8:NF-kB_Inactive]" value="602.21417899999994" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[proTNFR1]" value="3011.0708949999998" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[proTNFR2]" value="3011.0708949999998" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[bRafMutatedInactive]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[TRADD:TRAF2:TRAF5:RIP1_bRafINH_Active]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[TRADD:TRAF2:TRAF5:RIP1_bRafINH_Inactive]" value="903.32126850000077" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[TAB1:TAB2:TAB3:TAK1_bRafINH_Inactive]" value="903.32126850000077" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[TAB1:TAB2:TAB3:TAK1_bRafINH_Active]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[NIK_bRafINH_Active]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[NIK_bRafINH_Inactive]" value="903.32126850000077" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[IKKbeta:IKKalfa:IKKgamma_bRafINH_Active]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[IKKbeta:IKKalfa:IKKgamma_bRafINH_Inactive]" value="903.32126850000077" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[MAP3K8:NF-kB_bRafINH_Active]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[MAP3K8:NF-kB_bRafINH_Inactive]" value="903.32126850000077" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[TRAF1:TRAF2:TRAF3_bRafINH_Active]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[TRAF1:TRAF2:TRAF3_bRafINH_Inactive]" value="2709.9638055000005" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[MAP3K8:NF-kB_RasINH_Active]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[MAP3K8:NF-kB_RasINH_Inactive]" value="1354.9819027500002" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[mTORC2Inactive]" value="6022.1417899999997" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[MAP3K8_inhibitor]" value="6022.1417899999997" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[MAP3K8:NF-kB_inhibited]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Ras_Activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Ras_Activation],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Ras_Activation],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Raf1_Activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Raf1_Activation],ParameterGroup=Parameters,Parameter=Kcat" value="0.12" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Raf1_Activation],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Mek_Activation_Raf1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Mek_Activation_Raf1],ParameterGroup=Parameters,Parameter=Kcat" value="0.096000000000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Mek_Activation_Raf1],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Erk_Activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Erk_Activation],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Erk_Activation],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[PI3K_Activation_pEGFR]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[PI3K_Activation_pEGFR],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[PI3K_Activation_pEGFR],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[PI3K_Activation_Ras]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[PI3K_Activation_Ras],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[PI3K_Activation_Ras],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[PI3K_Deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[PI3K_Deactivation],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Akt_Activation_PI3K]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Akt_Activation_PI3K],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Akt_Activation_PI3K],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Raf1_Deactivation_Akt]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Raf1_Deactivation_Akt],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Raf1_Deactivation_Akt],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[EGFR_Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[EGFR_Degradation],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Mek_Activation_bRafMutated]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Mek_Activation_bRafMutated],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Mek_Activation_bRafMutated],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[EGFR_Production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[EGFR_Production],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[PIP3_Activation_PIP3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[PIP3_Activation_PIP3],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[PIP3_Activation_PIP3],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[PIP3_Feedback_Deactivation_PTEN]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[PIP3_Feedback_Deactivation_PTEN],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[PIP3_Feedback_Deactivation_PTEN],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Akt_Activation_PIP3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Akt_Activation_PIP3],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Akt_Activation_PIP3],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[PDK1_Activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[PDK1_Activation],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[PDK1_Activation],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[PDK1_Deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[PDK1_Deactivation],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Akt_Activation_PDK1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Akt_Activation_PDK1],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Akt_Activation_PDK1],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Akt_Feedback_Activation_HSP90-Cdc37]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Akt_Feedback_Activation_HSP90-Cdc37],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Akt_Feedback_Activation_HSP90-Cdc37],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Akt_Feedback_Deactivation_PHLPP]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Akt_Feedback_Deactivation_PHLPP],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Akt_Feedback_Deactivation_PHLPP],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Akt_Feedback_Activation_mTORC2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Akt_Feedback_Activation_mTORC2],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Akt_Feedback_Activation_mTORC2],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Akt_Feedback_Activation_TCL1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Akt_Feedback_Activation_TCL1],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Akt_Feedback_Activation_TCL1],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Akt_Feedback_Deactivation_CTMP]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Akt_Feedback_Deactivation_CTMP],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Akt_Feedback_Deactivation_CTMP],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Erk_Feedback_Deactivation_Raf1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Erk_Feedback_Deactivation_Raf1],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Erk_Feedback_Deactivation_Raf1],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Sos_Deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Sos_Deactivation],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[mTORC1_Activation_Akt]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[mTORC1_Activation_Akt],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[mTORC1_Activation_Akt],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[EGFR_Degradation_Free]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[EGFR_Degradation_Free],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Sos_Activation_Grb2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Sos_Activation_Grb2],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Sos_Activation_Grb2],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Grb2_Activation_pEGFR]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Grb2_Activation_pEGFR],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Grb2_Activation_pEGFR],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Grb2_Deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Grb2_Deactivation],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[FGFR_Production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[FGFR_Production],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[FGFR_Degradation_Free]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[FGFR_Degradation_Free],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[FGFR_Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[FGFR_Degradation],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Grb2_Activation_pFGFR]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Grb2_Activation_pFGFR],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Grb2_Activation_pFGFR],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TRADD:TRAF2:TRAF5:RIP1_Activation_pTNFR1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TRADD:TRAF2:TRAF5:RIP1_Activation_pTNFR1],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TRADD:TRAF2:TRAF5:RIP1_Activation_pTNFR1],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TRAF1:TRAF2:TRAF3_Activation_pTNFR2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TRAF1:TRAF2:TRAF3_Activation_pTNFR2],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TRAF1:TRAF2:TRAF3_Activation_pTNFR2],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[PI3K_Activation_TRAF1:TRAF2:TRAF3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[PI3K_Activation_TRAF1:TRAF2:TRAF3],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[PI3K_Activation_TRAF1:TRAF2:TRAF3],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[NIK_Activation_TRADD:TRAF2:TRAF5:RIP1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[NIK_Activation_TRADD:TRAF2:TRAF5:RIP1],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[NIK_Activation_TRADD:TRAF2:TRAF5:RIP1],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TAB1:TAB2:TAB3:TAK1_Activation_TRADD:TRAF2:TRAF5:RIP1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TAB1:TAB2:TAB3:TAK1_Activation_TRADD:TRAF2:TRAF5:RIP1],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TAB1:TAB2:TAB3:TAK1_Activation_TRADD:TRAF2:TRAF5:RIP1],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[IKKbeta:IKKalfa:IKKgamma_Activation_TRADD:TRAF2:TRAF5:RIP1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[IKKbeta:IKKalfa:IKKgamma_Activation_TRADD:TRAF2:TRAF5:RIP1],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[IKKbeta:IKKalfa:IKKgamma_Activation_TRADD:TRAF2:TRAF5:RIP1],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[IKKbeta:IKKalfa:IKKgamma_Activation_NIK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[IKKbeta:IKKalfa:IKKgamma_Activation_NIK],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[IKKbeta:IKKalfa:IKKgamma_Activation_NIK],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[IKKbeta:IKKalfa:IKKgamma_Activation_TAB1:TAB2:TAB3:TAK1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[IKKbeta:IKKalfa:IKKgamma_Activation_TAB1:TAB2:TAB3:TAK1],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[IKKbeta:IKKalfa:IKKgamma_Activation_TAB1:TAB2:TAB3:TAK1],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[MAP3K8:NF-kB_Activation_IKKbeta:IKKalfa]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[MAP3K8:NF-kB_Activation_IKKbeta:IKKalfa],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[MAP3K8:NF-kB_Activation_IKKbeta:IKKalfa],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Mek_Activation_MAP3K8:NF-kB]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Mek_Activation_MAP3K8:NF-kB],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Mek_Activation_MAP3K8:NF-kB],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TNFR1_Production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TNFR1_Production],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TNFR2_Production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TNFR2_Production],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TNFR1_Degradation_Free]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TNFR1_Degradation_Free],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TNFR2_Degradation_Free]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TNFR2_Degradation_Free],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TNFR1_Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TNFR1_Degradation],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TNFR2_Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TNFR2_Degradation],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[IKKbeta:IKKalfa:IKKgamma_Deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[IKKbeta:IKKalfa:IKKgamma_Deactivation],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Mek_Deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Mek_Deactivation],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[mTORC1_Deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[mTORC1_Deactivation],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[NIK_Deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[NIK_Deactivation],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Ras_Deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[Ras_Deactivation],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TAB1:TAB2:TAB3:TAK1_Deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TAB1:TAB2:TAB3:TAK1_Deactivation],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[MAP3K8:NF-kB_Deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[MAP3K8:NF-kB_Deactivation],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TRADD:TRAF2:TRAF5:RIP1_Deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TRADD:TRAF2:TRAF5:RIP1_Deactivation],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TRAF1:TRAF2:TRAF3_Deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TRAF1:TRAF2:TRAF3_Deactivation],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TRADDComplex_Activation_bRafINH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TRADDComplex_Activation_bRafINH],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TRADDComplex_Activation_bRafINH],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TABComplex_Activation_bRafINH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TABComplex_Activation_bRafINH],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TABComplex_Activation_bRafINH],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[NIK_Activation_bRafINH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[NIK_Activation_bRafINH],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[NIK_Activation_bRafINH],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[IKKComplex_Activation_bRafINH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[IKKComplex_Activation_bRafINH],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[IKKComplex_Activation_bRafINH],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[MAP3K8Complex_Activation_bRafINH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[MAP3K8Complex_Activation_bRafINH],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[MAP3K8Complex_Activation_bRafINH],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TRAFComplex_Activation_bRafINH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TRAFComplex_Activation_bRafINH],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TRAFComplex_Activation_bRafINH],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[PLX4032_degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[PLX4032_degradation],ParameterGroup=Parameters,Parameter=k1" value="3.3778999999999999e-06" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[bRafMutated_Deactivation_PLX4032]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[bRafMutated_Deactivation_PLX4032],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[bRafMutated_Deactivation_PLX4032],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[bRafMutated_Reconstitution]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[bRafMutated_Reconstitution],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[MAP3K8Complex_Activation_RasINH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[MAP3K8Complex_Activation_RasINH],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[MAP3K8Complex_Activation_RasINH],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[mTORC2_Deactivation_bRafMutated]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[mTORC2_Deactivation_bRafMutated],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[mTORC2_Deactivation_bRafMutated],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[mTORC2_Activation_PI3K]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[mTORC2_Activation_PI3K],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[mTORC2_Activation_PI3K],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[MAP3K8Complex_pERK_bRafINH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[MAP3K8Complex_pERK_bRafINH],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[MAP3K8Complex_pERK_bRafINH],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TRADDComplex_pERK_bRafINH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TRADDComplex_pERK_bRafINH],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TRADDComplex_pERK_bRafINH],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[IKKComplex_pERK_bRafINH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[IKKComplex_pERK_bRafINH],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[IKKComplex_pERK_bRafINH],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[NIK_pERK_bRafINH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[NIK_pERK_bRafINH],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[NIK_pERK_bRafINH],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TABComplex_pERK_bRafINH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TABComplex_pERK_bRafINH],ParameterGroup=Parameters,Parameter=Kcat" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TABComplex_pERK_bRafINH],ParameterGroup=Parameters,Parameter=km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[EGF_Binding_Unbinding (forward)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[EGF_Binding_Unbinding (forward)],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[EGF_Binding_Unbinding (backward)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[EGF_Binding_Unbinding (backward)],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[FGF_Binding_Unbinding (forward)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[FGF_Binding_Unbinding (forward)],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[FGF_Binding_Unbinding (backward)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[FGF_Binding_Unbinding (backward)],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TNF_Binding_Unbinding_TNFR1 (forward)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TNF_Binding_Unbinding_TNFR1 (forward)],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TNF_Binding_Unbinding_TNFR1 (backward)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TNF_Binding_Unbinding_TNFR1 (backward)],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TNF_Binding_Unbinding_TNFR2 (forward)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TNF_Binding_Unbinding_TNFR2 (forward)],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TNF_Binding_Unbinding_TNFR2 (backward)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[TNF_Binding_Unbinding_TNFR2 (backward)],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[MAP3K8:NF-kB_Deactivation_MAP3K8_inhibitor]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Reactions[MAP3K8:NF-kB_Deactivation_MAP3K8_inhibitor],ParameterGroup=Parameters,Parameter=k1" value="0.014999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_35"/>
      <StateTemplateVariable objectReference="Metabolite_39"/>
      <StateTemplateVariable objectReference="Metabolite_41"/>
      <StateTemplateVariable objectReference="Metabolite_49"/>
      <StateTemplateVariable objectReference="Metabolite_32"/>
      <StateTemplateVariable objectReference="Metabolite_54"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_18"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_25"/>
      <StateTemplateVariable objectReference="Metabolite_28"/>
      <StateTemplateVariable objectReference="Metabolite_30"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_43"/>
      <StateTemplateVariable objectReference="Metabolite_45"/>
      <StateTemplateVariable objectReference="Metabolite_47"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_51"/>
      <StateTemplateVariable objectReference="Metabolite_36"/>
      <StateTemplateVariable objectReference="Metabolite_40"/>
      <StateTemplateVariable objectReference="Metabolite_42"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_58"/>
      <StateTemplateVariable objectReference="Metabolite_61"/>
      <StateTemplateVariable objectReference="Metabolite_62"/>
      <StateTemplateVariable objectReference="Metabolite_64"/>
      <StateTemplateVariable objectReference="Metabolite_66"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_31"/>
      <StateTemplateVariable objectReference="Metabolite_68"/>
      <StateTemplateVariable objectReference="Metabolite_70"/>
      <StateTemplateVariable objectReference="Metabolite_53"/>
      <StateTemplateVariable objectReference="Metabolite_59"/>
      <StateTemplateVariable objectReference="Metabolite_67"/>
      <StateTemplateVariable objectReference="Metabolite_60"/>
      <StateTemplateVariable objectReference="Metabolite_65"/>
      <StateTemplateVariable objectReference="Metabolite_63"/>
      <StateTemplateVariable objectReference="Metabolite_73"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_33"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_57"/>
      <StateTemplateVariable objectReference="Metabolite_29"/>
      <StateTemplateVariable objectReference="Metabolite_46"/>
      <StateTemplateVariable objectReference="Metabolite_44"/>
      <StateTemplateVariable objectReference="Metabolite_52"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_48"/>
      <StateTemplateVariable objectReference="Metabolite_72"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_22"/>
      <StateTemplateVariable objectReference="Metabolite_74"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_50"/>
      <StateTemplateVariable objectReference="Metabolite_71"/>
      <StateTemplateVariable objectReference="Metabolite_69"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_20"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_24"/>
      <StateTemplateVariable objectReference="Metabolite_26"/>
      <StateTemplateVariable objectReference="Metabolite_27"/>
      <StateTemplateVariable objectReference="Metabolite_34"/>
      <StateTemplateVariable objectReference="Metabolite_37"/>
      <StateTemplateVariable objectReference="Metabolite_38"/>
      <StateTemplateVariable objectReference="Metabolite_55"/>
      <StateTemplateVariable objectReference="Metabolite_56"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 0 0 0 6022.1417899999997 0 6022.1417899999997 6022.1417899999997 6022.1417899999997 0 0 602.21417899999994 0 0 6022.1417899999997 0 0 60221.417900000015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6022.1417899999997 602214.179 0 0 0 903.32126850000077 903.32126850000077 903.32126850000077 903.32126850000077 903.32126850000077 6022.1417899999997 6022.1417899999997 6022.1417899999997 6022.1417899999997 6022.1417899999997 0 6022.1417899999997 6022.1417899999997 6022.1417899999997 6022.1417899999997 6022.1417899999997 6022.1417899999997 6022.1417899999997 6022.1417899999997 6022.1417899999997 0 0 6022.1417899999997 6022.1417899999997 1354.9819027500002 2709.9638055000005 6022141.790000001 3011.0708949999998 6022.1417899999997 6022.1417899999997 6022.1417899999997 6022.1417899999997 6022.1417899999997 6022141.790000001 3011.0708949999998 6022141.790000001 3011.0708949999998 3011.0708949999998 9.9999999999999998e-13 
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
        <Parameter name="Use Back Integration" type="bool" value="1"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000"/>
      </Method>
    </Task>
    <Task key="Task_15" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_9" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="14400"/>
        <Parameter name="StepSize" type="float" value="1"/>
        <Parameter name="Duration" type="float" value="14400"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="0"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
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
    <Task key="Task_16" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Report reference="Report_18" target="treated.txt" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="30"/>
            <Parameter name="Type" type="unsignedInteger" value="1"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[MAP3K8_inhibitor],Reference=InitialConcentration"/>
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
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
      </Method>
    </Task>
    <Task key="Task_23" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_16" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="SubtaskType" type="unsignedInteger" value="1"/>
        <ParameterGroup name="TargetFunctions">
          <Parameter name="SingleObject" type="cn" value="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[pERK],Reference=Concentration"/>
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
    <Task key="Task_26" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_17" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_14"/>
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
    <Report key="Report_18" name="Scan Parameters, Time, Concentrations, Volumes, and Global Quantity Values" taskType="scan" separator="&#x09;" precision="6">
      <Comment>
        A table of scan parameters, time, variable species concentrations, variable compartment volumes, and variable global quantity values.
      </Comment>
      <Table printTitle="1">
        <Object cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Reference=Time"/>
        <Object cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[pERK],Reference=Concentration"/>
      </Table>
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
            <ChannelSpec cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Computational modeling to predict MAP3K8 effects as mediator of resistance to vemurafenib in thyroid cancer stem cells,Vector=Compartments[Sphere (thyroid cancer cell)],Vector=Metabolites[pERK],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="8505C_Spheres_V2.7_reproductive.xml">
    <SBMLMap SBMLid="Akt_Activation_PDK1" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="Akt_Activation_PIP3" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="Akt_Feedback_Activation_HSP90_Cdc37" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="Akt_Feedback_Activation_TCL1" COPASIkey="Reaction_21"/>
    <SBMLMap SBMLid="Akt_Feedback_Activation_mTORC2" COPASIkey="Reaction_20"/>
    <SBMLMap SBMLid="Akt_Feedback_Deactivation_CTMP" COPASIkey="Reaction_22"/>
    <SBMLMap SBMLid="Akt_Feedback_Deactivation_PHLPP" COPASIkey="Reaction_19"/>
    <SBMLMap SBMLid="CTMPActive" COPASIkey="Metabolite_27"/>
    <SBMLMap SBMLid="EGFR_Degradation_Free" COPASIkey="Reaction_26"/>
    <SBMLMap SBMLid="Erk_Feedback_Deactivation_Raf1" COPASIkey="Reaction_23"/>
    <SBMLMap SBMLid="FGF" COPASIkey="Metabolite_34"/>
    <SBMLMap SBMLid="FGFR_Degradation" COPASIkey="Reaction_32"/>
    <SBMLMap SBMLid="FGFR_Degradation_Free" COPASIkey="Reaction_31"/>
    <SBMLMap SBMLid="FGFR_Production" COPASIkey="Reaction_30"/>
    <SBMLMap SBMLid="Grb2Active" COPASIkey="Metabolite_32"/>
    <SBMLMap SBMLid="Grb2Inactive" COPASIkey="Metabolite_33"/>
    <SBMLMap SBMLid="Grb2_Activation_pEGFR" COPASIkey="Reaction_28"/>
    <SBMLMap SBMLid="Grb2_Activation_pFGFR" COPASIkey="Reaction_33"/>
    <SBMLMap SBMLid="Grb2_Deactivation" COPASIkey="Reaction_29"/>
    <SBMLMap SBMLid="HMM_Modified" COPASIkey="Function_40"/>
    <SBMLMap SBMLid="HSP90_Cdc37Active" COPASIkey="Metabolite_23"/>
    <SBMLMap SBMLid="IKKComplex_Activation_bRafINH" COPASIkey="Reaction_62"/>
    <SBMLMap SBMLid="IKKbeta_IKKalfa_IKKgamma_Activation_NIK" COPASIkey="Reaction_40"/>
    <SBMLMap SBMLid="IKKbeta_IKKalfa_IKKgamma_Activation_TAB1_TAB2_TAB3_TAK1" COPASIkey="Reaction_41"/>
    <SBMLMap SBMLid="IKKbeta_IKKalfa_IKKgamma_Activation_TRADD_TRAF2_TRAF5_RIP1" COPASIkey="Reaction_39"/>
    <SBMLMap SBMLid="IKKbeta_IKKalfa_IKKgamma_Active" COPASIkey="Metabolite_49"/>
    <SBMLMap SBMLid="IKKbeta_IKKalfa_IKKgamma_Deactivation" COPASIkey="Reaction_50"/>
    <SBMLMap SBMLid="IKKbeta_IKKalfa_IKKgamma_Inactive" COPASIkey="Metabolite_50"/>
    <SBMLMap SBMLid="IKKbeta_IKKalfa_IKKgamma_bRafINH_Active" COPASIkey="Metabolite_64"/>
    <SBMLMap SBMLid="IKKbeta_IKKalfa_IKKgamma_bRafINH_Inactive" COPASIkey="Metabolite_65"/>
    <SBMLMap SBMLid="Mek_Activation__Tpl2_NF_kB" COPASIkey="Reaction_43"/>
    <SBMLMap SBMLid="Mek_Deactivation" COPASIkey="Reaction_51"/>
    <SBMLMap SBMLid="NIKActive" COPASIkey="Metabolite_47"/>
    <SBMLMap SBMLid="NIKInactive" COPASIkey="Metabolite_48"/>
    <SBMLMap SBMLid="NIK_Activation_TRADD_TRAF2_TRAF5_RIP1" COPASIkey="Reaction_37"/>
    <SBMLMap SBMLid="NIK_Activation_bRafINH" COPASIkey="Reaction_61"/>
    <SBMLMap SBMLid="NIK_Deactivation" COPASIkey="Reaction_53"/>
    <SBMLMap SBMLid="NIK_bRafINH_Active" COPASIkey="Metabolite_62"/>
    <SBMLMap SBMLid="NIK_bRafINH_Inactive" COPASIkey="Metabolite_63"/>
    <SBMLMap SBMLid="PDK1Active" COPASIkey="Metabolite_22"/>
    <SBMLMap SBMLid="PDK1Inactive" COPASIkey="Metabolite_21"/>
    <SBMLMap SBMLid="PDK1_Activation" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="PDK1_Deactivation" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="PHLPPActive" COPASIkey="Metabolite_24"/>
    <SBMLMap SBMLid="PI3K_Activation_TRAF1_TRAF2_TRAF3" COPASIkey="Reaction_36"/>
    <SBMLMap SBMLid="PIP3Active" COPASIkey="Metabolite_18"/>
    <SBMLMap SBMLid="PIP3Inactive" COPASIkey="Metabolite_19"/>
    <SBMLMap SBMLid="PIP3_Activation_PIP3" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="PIP3_Feedback_Deactivation_PTEN" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="PLX4032" COPASIkey="Metabolite_31"/>
    <SBMLMap SBMLid="PLX4032_degradation" COPASIkey="Reaction_65"/>
    <SBMLMap SBMLid="PTENActive" COPASIkey="Metabolite_20"/>
    <SBMLMap SBMLid="Ras_Deactivation" COPASIkey="Reaction_54"/>
    <SBMLMap SBMLid="Sos_Activation_Grb2" COPASIkey="Reaction_27"/>
    <SBMLMap SBMLid="Sos_Deactivation" COPASIkey="Reaction_24"/>
    <SBMLMap SBMLid="TAB1_TAB2_TAB3_TAK1_Activation_TRADD_TRAF2_TRAF5_RIP1" COPASIkey="Reaction_38"/>
    <SBMLMap SBMLid="TAB1_TAB2_TAB3_TAK1_Active" COPASIkey="Metabolite_51"/>
    <SBMLMap SBMLid="TAB1_TAB2_TAB3_TAK1_Deactivation" COPASIkey="Reaction_55"/>
    <SBMLMap SBMLid="TAB1_TAB2_TAB3_TAK1_Inactive" COPASIkey="Metabolite_52"/>
    <SBMLMap SBMLid="TAB1_TAB2_TAB3_TAK1_bRafINH_Active" COPASIkey="Metabolite_61"/>
    <SBMLMap SBMLid="TAB1_TAB2_TAB3_TAK1_bRafINH_Inactive" COPASIkey="Metabolite_60"/>
    <SBMLMap SBMLid="TABComplex_Activation_bRafINH" COPASIkey="Reaction_60"/>
    <SBMLMap SBMLid="TCL1Active" COPASIkey="Metabolite_26"/>
    <SBMLMap SBMLid="TNF" COPASIkey="Metabolite_38"/>
    <SBMLMap SBMLid="TNFR1_Degradation" COPASIkey="Reaction_48"/>
    <SBMLMap SBMLid="TNFR1_Degradation_Free" COPASIkey="Reaction_46"/>
    <SBMLMap SBMLid="TNFR1_Production" COPASIkey="Reaction_44"/>
    <SBMLMap SBMLid="TNFR2_Degradation" COPASIkey="Reaction_49"/>
    <SBMLMap SBMLid="TNFR2_Degradation_Free" COPASIkey="Reaction_47"/>
    <SBMLMap SBMLid="TNFR2_Production" COPASIkey="Reaction_45"/>
    <SBMLMap SBMLid="TRADDComplex_Activation_bRafINH" COPASIkey="Reaction_59"/>
    <SBMLMap SBMLid="TRADD_TRAF2_TRAF5_RIP1_Activation_pTNFR1" COPASIkey="Reaction_34"/>
    <SBMLMap SBMLid="TRADD_TRAF2_TRAF5_RIP1_Active" COPASIkey="Metabolite_43"/>
    <SBMLMap SBMLid="TRADD_TRAF2_TRAF5_RIP1_Deactivation" COPASIkey="Reaction_57"/>
    <SBMLMap SBMLid="TRADD_TRAF2_TRAF5_RIP1_Inactive" COPASIkey="Metabolite_44"/>
    <SBMLMap SBMLid="TRADD_TRAF2_TRAF5_RIP1_bRafINH_Active" COPASIkey="Metabolite_58"/>
    <SBMLMap SBMLid="TRADD_TRAF2_TRAF5_RIP1_bRafINH_Inactive" COPASIkey="Metabolite_59"/>
    <SBMLMap SBMLid="TRAF1_TRAF2_TRAF3_Activation_pTNFR2" COPASIkey="Reaction_35"/>
    <SBMLMap SBMLid="TRAF1_TRAF2_TRAF3_Active" COPASIkey="Metabolite_45"/>
    <SBMLMap SBMLid="TRAF1_TRAF2_TRAF3_Deactivation" COPASIkey="Reaction_58"/>
    <SBMLMap SBMLid="TRAF1_TRAF2_TRAF3_Inactive" COPASIkey="Metabolite_46"/>
    <SBMLMap SBMLid="TRAF1_TRAF2_TRAF3_bRafINH_Active" COPASIkey="Metabolite_68"/>
    <SBMLMap SBMLid="TRAF1_TRAF2_TRAF3_bRafINH_Inactive" COPASIkey="Metabolite_69"/>
    <SBMLMap SBMLid="TRAFComplex_Activation_bRafINH" COPASIkey="Reaction_64"/>
    <SBMLMap SBMLid="Tpl2Complex_Activation_RasINH" COPASIkey="Reaction_68"/>
    <SBMLMap SBMLid="Tpl2Complex_Activation_bRafINH" COPASIkey="Reaction_63"/>
    <SBMLMap SBMLid="Tpl2_NF_kB_Activation_IKKbeta_IKKalfa" COPASIkey="Reaction_42"/>
    <SBMLMap SBMLid="Tpl2_NF_kB_Active" COPASIkey="Metabolite_53"/>
    <SBMLMap SBMLid="Tpl2_NF_kB_Deactivation" COPASIkey="Reaction_56"/>
    <SBMLMap SBMLid="Tpl2_NF_kB_Inactive" COPASIkey="Metabolite_54"/>
    <SBMLMap SBMLid="Tpl2_NF_kB_RasINH_Active" COPASIkey="Metabolite_70"/>
    <SBMLMap SBMLid="Tpl2_NF_kB_RasINH_Inactive" COPASIkey="Metabolite_71"/>
    <SBMLMap SBMLid="Tpl2_NF_kB_bRafINH_Active" COPASIkey="Metabolite_66"/>
    <SBMLMap SBMLid="Tpl2_NF_kB_bRafINH_Inactive" COPASIkey="Metabolite_67"/>
    <SBMLMap SBMLid="bRafMutated" COPASIkey="Metabolite_30"/>
    <SBMLMap SBMLid="bRafMutatedInactive" COPASIkey="Metabolite_57"/>
    <SBMLMap SBMLid="bRafMutated_Deactivation_PLX4032" COPASIkey="Reaction_66"/>
    <SBMLMap SBMLid="bRafMutated_Reconstitution" COPASIkey="Reaction_67"/>
    <SBMLMap SBMLid="compartment_0" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="freeFGFR" COPASIkey="Metabolite_35"/>
    <SBMLMap SBMLid="freeTNFR1" COPASIkey="Metabolite_39"/>
    <SBMLMap SBMLid="freeTNFR2" COPASIkey="Metabolite_41"/>
    <SBMLMap SBMLid="mTORC1Active" COPASIkey="Metabolite_28"/>
    <SBMLMap SBMLid="mTORC1Inactive" COPASIkey="Metabolite_29"/>
    <SBMLMap SBMLid="mTORC1_Activation_Akt" COPASIkey="Reaction_25"/>
    <SBMLMap SBMLid="mTORC1_Deactivation" COPASIkey="Reaction_52"/>
    <SBMLMap SBMLid="mTORC2Active" COPASIkey="Metabolite_25"/>
    <SBMLMap SBMLid="mTORC2Inactive" COPASIkey="Metabolite_72"/>
    <SBMLMap SBMLid="mTORC2_Activation_PI3K" COPASIkey="Reaction_70"/>
    <SBMLMap SBMLid="mTORC2_Deactivation_bRafMutated" COPASIkey="Reaction_69"/>
    <SBMLMap SBMLid="pFGFR" COPASIkey="Metabolite_36"/>
    <SBMLMap SBMLid="pTNFR1" COPASIkey="Metabolite_40"/>
    <SBMLMap SBMLid="pTNFR2" COPASIkey="Metabolite_42"/>
    <SBMLMap SBMLid="proFGFR" COPASIkey="Metabolite_37"/>
    <SBMLMap SBMLid="proTNFR1" COPASIkey="Metabolite_55"/>
    <SBMLMap SBMLid="proTNFR2" COPASIkey="Metabolite_56"/>
    <SBMLMap SBMLid="reaction_14" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="reaction_15" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="reaction_16" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="reaction_17" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="reaction_19" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="reaction_20" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="reaction_27" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="reaction_28" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="reaction_3" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="reaction_5" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="reaction_7" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="reaction_9" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="species_0" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="species_1" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="species_10" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="species_11" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="species_14" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="species_15" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="species_16" COPASIkey="Metabolite_14"/>
    <SBMLMap SBMLid="species_17" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="species_2" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="species_25" COPASIkey="Metabolite_16"/>
    <SBMLMap SBMLid="species_3" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="species_30" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="species_4" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="species_5" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="species_6" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="species_7" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="species_8" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="species_9" COPASIkey="Metabolite_9"/>
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
  </ListOfUnitDefinitions>
</COPASI>
