<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.24 (Build 197) (http://www.copasi.org) at 2019-07-01 13:15:08 UTC -->
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
    <Function key="Function_14" name="Mass action (reversible)" type="MassAction" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
   <rdf:Description rdf:about="#Function_14">
   <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000042" />
   </rdf:Description>
   </rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
<b>Mass action rate law for reversible reactions</b>
<p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does include a reverse process that creates the reactants from the products.
</p>
</body>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i>-k2*PRODUCT&lt;product_j>
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_69" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_68" name="substrate" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_78" name="k2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_79" name="product" order="3" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="Bravo2012 - Modelling blood coagulation factor Va inactivation by APC" simulationType="time" timeUnit="s" volumeUnit="ml" areaUnit="m²" lengthUnit="m" quantityUnit="mol" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:mamo:MAMO_0000046"/>
    <bqbiol:hasTaxon rdf:resource="urn:miriam:taxonomy:9606"/>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>model for APC regulation of factor V</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:22607732"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-07T16:48:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>mroberts@ebi.ac.uk</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Roberts</vCard:Family>
            <vCard:Given>Matthew Grant</vCard:Given>
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
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0007596"/>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="compartment" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-06-28T15:32:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="APC" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-07T17:21:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C102826"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="APC:Va" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-08T11:51:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:C102826" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:C91335" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="Va" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-07T17:21:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C91335" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="Va_i_506" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-08T11:52:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasVersion rdf:resource="urn:miriam:ncit:C91335" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="Va_i_306" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <bqmodel:isDerivedFrom rdf:resource="urn:miriam:ncit:C91335" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-08T11:52:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="APC:Va_i_506" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-08T11:51:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:C102826" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:C91335" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="APC:Va_i_306" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-08T11:51:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:C102826" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:C91335" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="Va_i_306/506" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-08T11:52:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasVersion rdf:resource="urn:miriam:ncit:C91335" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="Va_1-306:Va_LC" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_8">
    <bqmodel:isDerivedFrom rdf:resource="urn:miriam:ncit:C91335" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-07T17:21:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="Va_307-506" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <bqmodel:isDerivedFrom rdf:resource="urn:miriam:ncit:C91335" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-08T11:51:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="Va_507-679/709" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_10">
    <bqmodel:isDerivedFrom rdf:resource="urn:miriam:ncit:C91335" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-07T17:19:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="APC:Va_1-306:Va_LC" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-08T11:51:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:C102826" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:C91335" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="Xa" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-08T11:52:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C98727"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="Xa:Va" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-29T15:04:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:C91335" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:C98727" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="Xa:Va_i_506" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-29T17:06:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:C91335"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:C98727"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="Xa:Va_i_306/506" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-08T12:21:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:C91335" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:C98727" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_16" name="Xa:Va_i_306" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-06-27T15:45:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:C91335" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:C98727" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="Va_307-679/709" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_17">
    <bqbiol:hasTaxon rdf:resource="urn:miriam:ncit:C91335" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-06-27T15:45:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_18" name="PT" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-08T11:51:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C82273"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="Va:PT" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-08T11:51:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:C82273" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:C91335" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_20" name="Xa:Va:PT" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-06-27T15:45:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:C82273"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:C91335"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:C98727"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_21" name="Xa:Va_i_506:PT" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-06-27T15:46:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:C82273"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:C91335"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:C98727"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_22" name="Xa:Va_i_306:PT" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-06-27T15:46:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:C82273" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:C91335" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:C98727" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_23" name="Xa:Va_i_306/506:PT" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-06-27T15:46:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:C82273" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:C91335" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:C98727" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="R01_koff" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-06-27T15:44:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="R01_kon" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-06-27T15:44:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="R02_kcat" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_3" name="R03_kcat" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_4" name="R04_koff" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_5" name="R04_kon" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_6" name="R05_koff" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_7" name="R05_kon" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_8" name="R06_kcat" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_9" name="R07_kcat" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_10" name="R08_kdis" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_11" name="R09_kdis" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_12" name="R10_koff" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_13" name="R10_kon" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_14" name="R11_koff" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_15" name="R11_kon" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_16" name="R12_koff" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_17" name="R12_kon" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-06-27T17:16:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_18" name="R13_koff" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_19" name="R13_kon" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_20" name="R14_koff" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_21" name="R14_kon" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_22" name="R15_kdis" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_23" name="R16_kdis" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_24" name="R17_koff" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_25" name="R17_kon" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_26" name="R19_koff" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_27" name="R19_kon" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_28" name="R20_koff" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_29" name="R20_kon" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_30" name="R21_koff" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_31" name="R21_kon" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_32" name="R22_koff" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_33" name="R22_kon" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_34" name="R23_dis" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_35" name="R24_dis" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_36" name="time_minutes" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_36">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-29T11:54:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Reference=Time>/60
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_37" name="Curve_Va:Xa" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-29T14:46:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment],Vector=Metabolites[Xa:Va],Reference=Concentration>/&lt;CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment],Vector=Metabolites[Xa:Va],Reference=InitialConcentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_38" name="Curve_Va" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_38">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-02T09:17:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment],Vector=Metabolites[Va],Reference=Concentration>/&lt;CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment],Vector=Metabolites[Va],Reference=InitialConcentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_39" name="Curve_va_i_506" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-02T09:39:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment],Vector=Metabolites[Va_i_506],Reference=Concentration>/&lt;CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[param_for_curve_va_i_506_normalise],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_40" name="param_for_curve_va_i_506_normalise" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-02T09:38:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          if(&lt;CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment],Vector=Metabolites[Va:PT],Reference=InitialConcentration> &lt; 300e-9,5.9e-9,if(&lt;CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment],Vector=Metabolites[Va:PT],Reference=InitialConcentration> &lt; 600e-9,1.08e-7,2.01e-7))
        </Expression>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="R01" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-07T16:49:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5013" name="k1" value="1e+08"/>
          <Constant key="Parameter_5012" name="k2" value="0.7"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_0"/>
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="R02" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-07T17:11:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5011" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment]">
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
      <Reaction key="Reaction_2" name="R03" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-07T17:12:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5010" name="k1" value="0.192"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="R04" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-07T17:13:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5009" name="k1" value="1e+08"/>
          <Constant key="Parameter_5008" name="k2" value="0.7"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_0"/>
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="R05" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-07T17:14:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5007" name="k1" value="1e+08"/>
          <Constant key="Parameter_5006" name="k2" value="0.7"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_0"/>
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="R06" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-07T17:15:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5005" name="k1" value="0.192"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="R07" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-07T17:15:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5004" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="R08" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-07T17:16:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5003" name="k1" value="0.028"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment]">
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
      <Reaction key="Reaction_8" name="R09" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-07T17:17:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5002" name="k1" value="0.028"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="R10" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-07T17:18:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5001" name="k1" value="1e+08"/>
          <Constant key="Parameter_5000" name="k2" value="0.7"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_0"/>
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="R11" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-08T11:50:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4999" name="k1" value="1.5e+08"/>
          <Constant key="Parameter_4998" name="k2" value="0.075"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_12"/>
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="R12" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-08T11:50:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4997" name="k1" value="1.5e+08"/>
          <Constant key="Parameter_4996" name="k2" value="0.15"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_12"/>
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="R13" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-08T11:50:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4995" name="k1" value="1.5e+08"/>
          <Constant key="Parameter_4994" name="k2" value="0.15"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_12"/>
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="R14" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-08T11:50:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4993" name="k1" value="1.5e+08"/>
          <Constant key="Parameter_4992" name="k2" value="0.15"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_12"/>
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="R15" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-08T11:50:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4991" name="k1" value="0.0035"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="R16" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-08T11:50:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4990" name="k1" value="0.0035"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="R17" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-08T11:50:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4989" name="k1" value="1e+08"/>
          <Constant key="Parameter_4988" name="k2" value="70"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_2"/>
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="R19" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-08T14:00:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4987" name="k1" value="1e+08"/>
          <Constant key="Parameter_4986" name="k2" value="103"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_13"/>
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="R20" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-08T14:00:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4985" name="k1" value="1e+08"/>
          <Constant key="Parameter_4984" name="k2" value="103"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_14"/>
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="R21" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-08T14:03:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4983" name="k1" value="1e+08"/>
          <Constant key="Parameter_4982" name="k2" value="103"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_16"/>
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="R22" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-08T14:05:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4981" name="k1" value="1e+08"/>
          <Constant key="Parameter_4980" name="k2" value="1e+08"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_15"/>
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="R23" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-08T14:06:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4979" name="k1" value="0.0035"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="R24" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-08T14:19:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4978" name="k1" value="0.0035"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment],Vector=Metabolites[APC]" value="1204428171400000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment],Vector=Metabolites[APC:Va]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment],Vector=Metabolites[Va]" value="12044281714000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment],Vector=Metabolites[Va_i_506]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment],Vector=Metabolites[Va_i_306]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment],Vector=Metabolites[APC:Va_i_506]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment],Vector=Metabolites[APC:Va_i_306]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment],Vector=Metabolites[Va_i_306/506]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment],Vector=Metabolites[Va_1-306:Va_LC]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment],Vector=Metabolites[Va_307-506]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment],Vector=Metabolites[Va_507-679/709]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment],Vector=Metabolites[APC:Va_1-306:Va_LC]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment],Vector=Metabolites[Xa]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment],Vector=Metabolites[Xa:Va]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment],Vector=Metabolites[Xa:Va_i_506]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment],Vector=Metabolites[Xa:Va_i_306/506]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment],Vector=Metabolites[Xa:Va_i_306]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment],Vector=Metabolites[Va_307-679/709]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment],Vector=Metabolites[PT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment],Vector=Metabolites[Va:PT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment],Vector=Metabolites[Xa:Va:PT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment],Vector=Metabolites[Xa:Va_i_506:PT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment],Vector=Metabolites[Xa:Va_i_306:PT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment],Vector=Metabolites[Xa:Va_i_306/506:PT]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R01_koff]" value="0.69999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R01_kon]" value="100000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R02_kcat]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R03_kcat]" value="0.192" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R04_koff]" value="0.69999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R04_kon]" value="100000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R05_koff]" value="0.69999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R05_kon]" value="100000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R06_kcat]" value="0.192" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R07_kcat]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R08_kdis]" value="0.028000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R09_kdis]" value="0.028000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R10_koff]" value="0.69999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R10_kon]" value="100000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R11_koff]" value="0.074999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R11_kon]" value="150000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R12_koff]" value="0.14999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R12_kon]" value="150000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R13_koff]" value="0.14999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R13_kon]" value="150000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R14_koff]" value="0.14999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R14_kon]" value="150000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R15_kdis]" value="0.0035000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R16_kdis]" value="0.0035000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R17_koff]" value="70" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R17_kon]" value="100000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R19_koff]" value="103" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R19_kon]" value="100000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R20_koff]" value="103" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R20_kon]" value="100000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R21_koff]" value="103" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R21_kon]" value="100000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R22_koff]" value="103" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R22_kon]" value="100000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R23_dis]" value="0.0035000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R24_dis]" value="0.0035000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[time_minutes]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[Curve_Va:Xa]" value="NaN" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[Curve_Va]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[Curve_va_i_506]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[param_for_curve_va_i_506_normalise]" value="5.8999999999999999e-09" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Reactions[R01]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Reactions[R01],ParameterGroup=Parameters,Parameter=k1" value="100000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R01_kon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Reactions[R01],ParameterGroup=Parameters,Parameter=k2" value="0.69999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R01_koff],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Reactions[R02]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Reactions[R02],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R02_kcat],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Reactions[R03]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Reactions[R03],ParameterGroup=Parameters,Parameter=k1" value="0.192" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R03_kcat],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Reactions[R04]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Reactions[R04],ParameterGroup=Parameters,Parameter=k1" value="100000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R04_kon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Reactions[R04],ParameterGroup=Parameters,Parameter=k2" value="0.69999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R04_koff],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Reactions[R05]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Reactions[R05],ParameterGroup=Parameters,Parameter=k1" value="100000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R05_kon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Reactions[R05],ParameterGroup=Parameters,Parameter=k2" value="0.69999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R05_koff],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Reactions[R06]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Reactions[R06],ParameterGroup=Parameters,Parameter=k1" value="0.192" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R06_kcat],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Reactions[R07]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Reactions[R07],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R07_kcat],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Reactions[R08]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Reactions[R08],ParameterGroup=Parameters,Parameter=k1" value="0.028000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R08_kdis],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Reactions[R09]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Reactions[R09],ParameterGroup=Parameters,Parameter=k1" value="0.028000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R09_kdis],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Reactions[R10]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Reactions[R10],ParameterGroup=Parameters,Parameter=k1" value="100000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R10_kon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Reactions[R10],ParameterGroup=Parameters,Parameter=k2" value="0.69999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R10_koff],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Reactions[R11]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Reactions[R11],ParameterGroup=Parameters,Parameter=k1" value="150000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R11_kon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Reactions[R11],ParameterGroup=Parameters,Parameter=k2" value="0.074999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R11_koff],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Reactions[R12]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Reactions[R12],ParameterGroup=Parameters,Parameter=k1" value="150000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R12_kon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Reactions[R12],ParameterGroup=Parameters,Parameter=k2" value="0.14999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R12_koff],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Reactions[R13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Reactions[R13],ParameterGroup=Parameters,Parameter=k1" value="150000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R13_kon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Reactions[R13],ParameterGroup=Parameters,Parameter=k2" value="0.14999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R13_koff],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Reactions[R14]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Reactions[R14],ParameterGroup=Parameters,Parameter=k1" value="150000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R14_kon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Reactions[R14],ParameterGroup=Parameters,Parameter=k2" value="0.14999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R14_koff],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Reactions[R15]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Reactions[R15],ParameterGroup=Parameters,Parameter=k1" value="0.0035000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R15_kdis],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Reactions[R16]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Reactions[R16],ParameterGroup=Parameters,Parameter=k1" value="0.0035000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R16_kdis],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Reactions[R17]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Reactions[R17],ParameterGroup=Parameters,Parameter=k1" value="100000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R17_kon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Reactions[R17],ParameterGroup=Parameters,Parameter=k2" value="70" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R17_koff],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Reactions[R19]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Reactions[R19],ParameterGroup=Parameters,Parameter=k1" value="100000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R19_kon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Reactions[R19],ParameterGroup=Parameters,Parameter=k2" value="103" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R19_koff],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Reactions[R20]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Reactions[R20],ParameterGroup=Parameters,Parameter=k1" value="100000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R20_kon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Reactions[R20],ParameterGroup=Parameters,Parameter=k2" value="103" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R20_koff],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Reactions[R21]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Reactions[R21],ParameterGroup=Parameters,Parameter=k1" value="100000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R21_kon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Reactions[R21],ParameterGroup=Parameters,Parameter=k2" value="103" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R21_koff],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Reactions[R22]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Reactions[R22],ParameterGroup=Parameters,Parameter=k1" value="100000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R22_kon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Reactions[R22],ParameterGroup=Parameters,Parameter=k2" value="100000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R22_kon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Reactions[R23]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Reactions[R23],ParameterGroup=Parameters,Parameter=k1" value="0.0035000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R23_dis],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Reactions[R24]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Reactions[R24],ParameterGroup=Parameters,Parameter=k1" value="0.0035000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[R24_dis],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_18"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_20"/>
      <StateTemplateVariable objectReference="Metabolite_22"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="ModelValue_36"/>
      <StateTemplateVariable objectReference="ModelValue_37"/>
      <StateTemplateVariable objectReference="ModelValue_38"/>
      <StateTemplateVariable objectReference="ModelValue_39"/>
      <StateTemplateVariable objectReference="ModelValue_40"/>
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
      <StateTemplateVariable objectReference="ModelValue_28"/>
      <StateTemplateVariable objectReference="ModelValue_29"/>
      <StateTemplateVariable objectReference="ModelValue_30"/>
      <StateTemplateVariable objectReference="ModelValue_31"/>
      <StateTemplateVariable objectReference="ModelValue_32"/>
      <StateTemplateVariable objectReference="ModelValue_33"/>
      <StateTemplateVariable objectReference="ModelValue_34"/>
      <StateTemplateVariable objectReference="ModelValue_35"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 1204428171400000 0 0 0 0 12044281714000000 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 NaN 1 0 5.8999999999999999e-09 1 0.69999999999999996 100000000 1 0.192 0.69999999999999996 100000000 0.69999999999999996 100000000 0.192 1 0.028000000000000001 0.028000000000000001 0.69999999999999996 100000000 0.074999999999999997 150000000 0.14999999999999999 150000000 0.14999999999999999 150000000 0.14999999999999999 150000000 0.0035000000000000001 0.0035000000000000001 70 100000000 103 100000000 103 100000000 103 100000000 103 100000000 0.0035000000000000001 0.0035000000000000001 
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
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="12"/>
        <Parameter name="Duration" type="float" value="1200"/>
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
        <Parameter name="ConvergenceTolerance" type="float" value="0"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="0"/>
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
  </ListOfReports>
  <ListOfPlots>
    <PlotSpecification name="Figure 3C - Va" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[Curve_Va]|Values[time_minutes]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[time_minutes],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[Curve_Va],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Figure 3D - Va_i_506" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[Va_i_506]|Values[time_minutes]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[time_minutes],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment],Vector=Metabolites[Va_i_506],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Figure 3E - Va_307-506" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[Va_307-506]|Values[time_minutes]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[time_minutes],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment],Vector=Metabolites[Va_307-506],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Figure 4B - Va:Xa" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[Curve_Va:Xa]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[Curve_Va:Xa],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Xa:Va]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment],Vector=Metabolites[Xa:Va],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Figure 7A - Va" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[Curve_Va]|Values[time_minutes]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[time_minutes],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[Curve_Va],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Va]|Values[time_minutes]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[time_minutes],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment],Vector=Metabolites[Va],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Figure 7B - Va_i_506" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[Curve_va_i_506]|Values[time_minutes]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[time_minutes],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[Curve_va_i_506],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Va_i_506]|Values[time_minutes]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[time_minutes],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment],Vector=Metabolites[Va_i_506],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Figure 7C - Va-307-679/709" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[Va_307-679/709]|Values[time_minutes]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[time_minutes],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment],Vector=Metabolites[Va_307-679/709],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Figure 7D - Va_307-506" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[Va_307-506]|Values[time_minutes]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Values[time_minutes],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Bravo2012 - Modelling blood coagulation factor Va inactivation by APC,Vector=Compartments[compartment],Vector=Metabolites[Va_307-506],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
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
