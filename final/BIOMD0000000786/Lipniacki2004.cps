<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.24 (Build 197) (http://www.copasi.org) at 2019-08-09 15:26:10 UTC -->
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
    <Function key="Function_40" name="function for R3" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-06T14:12:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        K3*X1*Substrate
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_264" name="K3" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_263" name="X1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_262" name="Substrate" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="function for substrateless production" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-06T14:27:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k*X1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_265" name="k" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_250" name="X1" order="1" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="function for R26" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-06T15:48:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k*X1*X2*S1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_266" name="k" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_261" name="X1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_267" name="X2" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_268" name="S1" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="function for transport" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-07T15:42:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k*kv*S
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_272" name="k" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_271" name="kv" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_270" name="S" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="function for indirect transport" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-09T12:12:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        x*kv*S
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_274" name="x" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_273" name="kv" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_269" name="S" order="2" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="function for indirect production" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-09T12:18:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        x*S
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_277" name="x" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_276" name="S" order="1" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="Lipniacki2004 - Mathematical model of NFKB regulatory module" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="µmol" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0034612"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:mamo:MAMO_0000046"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C39173"/>
    <bqbiol:hasTaxon rdf:resource="urn:miriam:taxonomy:10090"/>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:15094015"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T16:33:23Z</dcterms:W3CDTF>
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
            <vCard:Orgname>babraham institute</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
    <CopasiMT:isPartOf rdf:resource="urn:miriam:reactome:R-HSA-5676594"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:ncit:C132890"/>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      its a mathematical model studying impact of TNF on NFKB nuclear dynamics. This model is derived from Hoffmann2002 (PMID:12424381).
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="Cytosol" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T16:51:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:go:GO:0005737" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_1" name="Nucleus" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T16:52:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:go:GO:0005634" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="IKK_neutral" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-06T15:28:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isHomologTo rdf:resource="urn:miriam:uniprot:Q60680" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="IKK_active" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-06T15:28:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isHomologTo rdf:resource="urn:miriam:uniprot:Q60680" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="IKK_inact" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T16:49:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isHomologTo rdf:resource="urn:miriam:uniprot:Q60680" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="IKKactive_IkB" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T16:49:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q60680" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q9Z1E3" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="IkB" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-06T15:27:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:Q9Z1E3" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="IKKactive_IkB_NFKB" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T16:50:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P25799" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q60680" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q9Z1E3" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="IkB_NFKB" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T16:54:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P25799" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q9Z1E3" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="NFKB" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-06T15:28:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isHomologTo rdf:resource="urn:miriam:uniprot:P25799" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="NFKB_nuc" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T16:52:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isHomologTo rdf:resource="urn:miriam:uniprot:P25799" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="IkB_nuc" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T16:54:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q9Z1E3" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="IkB_NFKB_nuc" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T16:55:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P25799" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q9Z1E3" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="IkB_mRNA" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-06T15:27:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:unipathway.reaction:Q9Z1E3" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="A20_mRNA" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-06T15:27:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:uniprot:Q60769" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="A20" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-06T15:39:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:Q60769" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="TNF" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-06T15:27:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:P06804" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          if({Time} > 3600,1,0)
        </Comment>
        <Expression>
          &lt;CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[TNF_R],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="cgen_mRNA" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-06T15:27:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          it's an arbitarory proetin used to model nfkb induced transcription
        </Comment>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="NFKB_total" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-06T15:24:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Compartments[Cytosol],Vector=Metabolites[IKKactive_IkB_NFKB],Reference=Concentration>+&lt;CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Compartments[Cytosol],Vector=Metabolites[NFKB],Reference=Concentration>+&lt;CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Compartments[Cytosol],Vector=Metabolites[IkB_NFKB],Reference=Concentration>+1/&lt;CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[Kv],Reference=InitialValue>*&lt;CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Compartments[Nucleus],Vector=Metabolites[NFKB_nuc],Reference=Concentration>+1/&lt;CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[Kv],Reference=InitialValue>*&lt;CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Compartments[Nucleus],Vector=Metabolites[IkB_NFKB_nuc],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="Kv" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-06T15:26:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="a1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-07T15:43:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="a2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-07T16:51:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="t1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-07T16:00:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="a3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-07T16:52:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="t2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-07T16:00:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="c1a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-07T16:52:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="c2a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-07T16:53:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="c3a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-07T16:54:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="c4a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-07T16:54:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="c5a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-07T16:55:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="c6a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-07T16:55:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="c1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-07T16:52:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="c2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-07T16:53:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="c3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-07T16:54:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="c4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-07T16:54:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="c5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-07T16:55:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_18" name="k1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-07T16:55:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_19" name="k2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-07T16:55:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_20" name="k3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-07T16:56:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_21" name="Kprod" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-07T16:56:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_22" name="Kdeg" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-07T16:56:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_23" name="i1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-07T16:55:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_24" name="e2a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-07T16:55:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_25" name="i1a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-07T16:55:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_26" name="e1a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-07T16:55:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_27" name="c1c" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-07T16:53:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_28" name="c2c" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-07T16:54:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_29" name="c3c" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-07T16:54:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_30" name="TNF_R" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-09T16:26:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_31" name="IkB_mRNA_amp" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-08T13:23:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Compartments[Nucleus],Vector=Metabolites[IkB_mRNA],Reference=Concentration>*1e4
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_32" name="A20_mRNA_amp" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-08T13:23:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Compartments[Nucleus],Vector=Metabolites[A20_mRNA],Reference=Concentration>*1e4
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_33" name="cgen_mRNA_amp" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-08T13:24:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Compartments[Nucleus],Vector=Metabolites[cgen_mRNA],Reference=Concentration>*1e4
        </Expression>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="IKKn_production" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:sbo:SBO:0000393" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T16:41:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5023" name="v" value="2.5e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="IKKn_degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0030163" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T16:42:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5022" name="k1" value="0.000125"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="IKKn_activation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C64382" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T16:42:33Z</dcterms:W3CDTF>
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
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5021" name="K3" value="0.0025"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="NFKB_export" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0006606" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T16:45:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5020" name="k1" value="0.0025"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="IkBn_NFKBn_binding" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0005515" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T16:53:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5019" name="k1" value="0.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Compartments[Nucleus]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_8"/>
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="IkB_NFKB_n_export" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0006611" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T16:53:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5018" name="k" value="0.01"/>
          <Constant key="Parameter_5017" name="kv" value="5"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Compartments[Nucleus]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="IkB_NFKB_binding" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0005515" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-06T10:18:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5016" name="k1" value="0.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_7"/>
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="IkB_degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0030163" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-06T10:19:04Z</dcterms:W3CDTF>
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
        <ListOfConstants>
          <Constant key="Parameter_5015" name="k1" value="2e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="IkBnuc_export" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0006611" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-06T10:20:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5014" name="k" value="0.0005"/>
          <Constant key="Parameter_5013" name="kv" value="5"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Compartments[Nucleus]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="IkB_export" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0006606" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-06T10:21:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5012" name="k1" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="IkB_transcription" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T16:51:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:go:GO:0006351" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5011" name="k" value="5e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Compartments[Nucleus]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="IKKa_spon_inactivation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:go:GO:0043687" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T16:43:26Z</dcterms:W3CDTF>
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
        <ListOfConstants>
          <Constant key="Parameter_5010" name="k1" value="0.0015"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="IKKinact_degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0030163" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T16:43:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5009" name="k1" value="0.000125"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="IKKa_degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0030163" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T16:44:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5008" name="k1" value="0.000125"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="IKKa_IkB_binding" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T16:45:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:go:GO:0005515" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5007" name="k1" value="0.2"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_1"/>
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="IKKa_IkBNFKB_binding" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_15">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0005515" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-05T16:48:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5006" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_1"/>
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="IkBmRNA_degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_16">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0006402" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-06T14:02:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5005" name="k1" value="0.0004"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Compartments[Nucleus]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="IkB_translation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-06T14:03:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:go:GO:0006412" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5004" name="k" value="0.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="IkB_con_degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_18">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0030163" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-06T14:03:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5003" name="k1" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="A20_transcription" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-06T14:03:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:go:GO:0006351" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5002" name="k" value="5e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Compartments[Nucleus]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="A20mRNA_degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-06T14:05:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:go:GO:0006402" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5001" name="k1" value="0.0004"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Compartments[Nucleus]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="A20_translation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-06T14:06:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:go:GO:0006412" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5000" name="k" value="0.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="A20_degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_22">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0030163" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-06T14:06:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4999" name="k1" value="0.0003"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="IKKa_inactivation_1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_23">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:go:GO:0043687" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-06T14:07:02Z</dcterms:W3CDTF>
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
          <Modifier metabolite="Metabolite_14" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4998" name="k" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="cgen_transcription" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-06T14:37:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:go:GO:0006351" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4997" name="k" value="5e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Compartments[Nucleus]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="cgen_mRNA_degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_25">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0006402" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-06T15:22:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4996" name="k1" value="0.0004"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Compartments[Nucleus]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_26" name="IkB_degradation_1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-07T16:45:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:go:GO:0030163" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4995" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_27" name="IkB_degradation_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_27">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0030163" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-07T17:06:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
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
          <Constant key="Parameter_4994" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_28" name="NFKBc_induced_NFKBn_production" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_28">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C18103" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-09T12:11:02Z</dcterms:W3CDTF>
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
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4993" name="x" value="0.0025"/>
          <Constant key="Parameter_4992" name="kv" value="5"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Compartments[Nucleus]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_29" name="IkBn_induced_IkBc_production" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-09T12:15:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:C18103" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4991" name="x" value="0.0005"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_30" name="IkBc_induced_IkBn_production" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_30">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C18103" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-09T12:17:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4990" name="x" value="0.001"/>
          <Constant key="Parameter_4989" name="kv" value="5"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_31" name="IkB_NFKB_n_induced_IkB_NFKBc_production" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_31">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C18103" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-09T12:26:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4988" name="x" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Compartments[Nucleus]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfEvents>
      <Event key="Event_0" name="TNF_stimulation" delayAssignment="true" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-08T12:12:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Reference=Time> > 363600
        </TriggerExpression>
        <DelayExpression>
          0
        </DelayExpression>
        <ListOfAssignments>
          <Assignment targetKey="ModelValue_30">
            <Expression>
              1
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
    </ListOfEvents>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Compartments[Cytosol]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Compartments[Nucleus]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Compartments[Cytosol],Vector=Metabolites[IKK_neutral]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Compartments[Cytosol],Vector=Metabolites[IKK_active]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Compartments[Cytosol],Vector=Metabolites[IKK_inact]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Compartments[Cytosol],Vector=Metabolites[IKKactive_IkB]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Compartments[Cytosol],Vector=Metabolites[IkB]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Compartments[Cytosol],Vector=Metabolites[IKKactive_IkB_NFKB]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Compartments[Cytosol],Vector=Metabolites[IkB_NFKB]" value="36132845142000024" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Compartments[Cytosol],Vector=Metabolites[NFKB]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Compartments[Nucleus],Vector=Metabolites[NFKB_nuc]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Compartments[Nucleus],Vector=Metabolites[IkB_nuc]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Compartments[Nucleus],Vector=Metabolites[IkB_NFKB_nuc]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Compartments[Nucleus],Vector=Metabolites[IkB_mRNA]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Compartments[Nucleus],Vector=Metabolites[A20_mRNA]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Compartments[Cytosol],Vector=Metabolites[A20]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Compartments[Cytosol],Vector=Metabolites[TNF]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Compartments[Nucleus],Vector=Metabolites[cgen_mRNA]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[NFKB_total]" value="0.060000000000000039" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[Kv]" value="5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[a1]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[a2]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[t1]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[a3]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[t2]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[c1a]" value="4.9999999999999998e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[c2a]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[c3a]" value="0.00040000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[c4a]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[c5a]" value="0.0001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[c6a]" value="2.0000000000000002e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[c1]" value="4.9999999999999998e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[c2]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[c3]" value="0.00040000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[c4]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[c5]" value="0.00029999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[k1]" value="0.0025000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[k2]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[k3]" value="0.0015" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[Kprod]" value="2.5000000000000001e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[Kdeg]" value="0.000125" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[i1]" value="0.0025000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[e2a]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[i1a]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[e1a]" value="0.00050000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[c1c]" value="4.9999999999999998e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[c2c]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[c3c]" value="0.00040000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[TNF_R]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[IkB_mRNA_amp]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[A20_mRNA_amp]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[cgen_mRNA_amp]" value="0" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[IKKn_production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[IKKn_production],ParameterGroup=Parameters,Parameter=v" value="2.5000000000000001e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[Kprod],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[IKKn_degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[IKKn_degradation],ParameterGroup=Parameters,Parameter=k1" value="0.000125" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[Kdeg],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[IKKn_activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[IKKn_activation],ParameterGroup=Parameters,Parameter=K3" value="0.0025000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[k1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[NFKB_export]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[NFKB_export],ParameterGroup=Parameters,Parameter=k1" value="0.0025000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[i1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[IkBn_NFKBn_binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[IkBn_NFKBn_binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[a1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[IkB_NFKB_n_export]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[IkB_NFKB_n_export],ParameterGroup=Parameters,Parameter=k" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[e2a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[IkB_NFKB_n_export],ParameterGroup=Parameters,Parameter=kv" value="5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[Kv],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[IkB_NFKB_binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[IkB_NFKB_binding],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[a1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[IkB_degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[IkB_degradation],ParameterGroup=Parameters,Parameter=k1" value="2.0000000000000002e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[c6a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[IkBnuc_export]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[IkBnuc_export],ParameterGroup=Parameters,Parameter=k" value="0.00050000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[e1a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[IkBnuc_export],ParameterGroup=Parameters,Parameter=kv" value="5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[Kv],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[IkB_export]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[IkB_export],ParameterGroup=Parameters,Parameter=k1" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[i1a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[IkB_transcription]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[IkB_transcription],ParameterGroup=Parameters,Parameter=k" value="4.9999999999999998e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[c1a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[IKKa_spon_inactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[IKKa_spon_inactivation],ParameterGroup=Parameters,Parameter=k1" value="0.0015" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[k3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[IKKinact_degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[IKKinact_degradation],ParameterGroup=Parameters,Parameter=k1" value="0.000125" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[Kdeg],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[IKKa_degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[IKKa_degradation],ParameterGroup=Parameters,Parameter=k1" value="0.000125" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[Kdeg],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[IKKa_IkB_binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[IKKa_IkB_binding],ParameterGroup=Parameters,Parameter=k1" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[a2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[IKKa_IkBNFKB_binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[IKKa_IkBNFKB_binding],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[a3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[IkBmRNA_degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[IkBmRNA_degradation],ParameterGroup=Parameters,Parameter=k1" value="0.00040000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[c3a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[IkB_translation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[IkB_translation],ParameterGroup=Parameters,Parameter=k" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[c4a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[IkB_con_degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[IkB_con_degradation],ParameterGroup=Parameters,Parameter=k1" value="0.0001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[c5a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[A20_transcription]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[A20_transcription],ParameterGroup=Parameters,Parameter=k" value="4.9999999999999998e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[c1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[A20mRNA_degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[A20mRNA_degradation],ParameterGroup=Parameters,Parameter=k1" value="0.00040000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[c3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[A20_translation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[A20_translation],ParameterGroup=Parameters,Parameter=k" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[c4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[A20_degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[A20_degradation],ParameterGroup=Parameters,Parameter=k1" value="0.00029999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[c5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[IKKa_inactivation_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[IKKa_inactivation_1],ParameterGroup=Parameters,Parameter=k" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[k2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[cgen_transcription]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[cgen_transcription],ParameterGroup=Parameters,Parameter=k" value="4.9999999999999998e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[c1c],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[cgen_mRNA_degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[cgen_mRNA_degradation],ParameterGroup=Parameters,Parameter=k1" value="0.00040000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[c3c],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[IkB_degradation_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[IkB_degradation_1],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[t2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[IkB_degradation_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[IkB_degradation_2],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[t1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[NFKBc_induced_NFKBn_production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[NFKBc_induced_NFKBn_production],ParameterGroup=Parameters,Parameter=x" value="0.0025000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[i1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[NFKBc_induced_NFKBn_production],ParameterGroup=Parameters,Parameter=kv" value="5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[Kv],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[IkBn_induced_IkBc_production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[IkBn_induced_IkBc_production],ParameterGroup=Parameters,Parameter=x" value="0.00050000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[e1a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[IkBc_induced_IkBn_production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[IkBc_induced_IkBn_production],ParameterGroup=Parameters,Parameter=x" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[i1a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[IkBc_induced_IkBn_production],ParameterGroup=Parameters,Parameter=kv" value="5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[Kv],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[IkB_NFKB_n_induced_IkB_NFKBc_production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Reactions[IkB_NFKB_n_induced_IkB_NFKBc_production],ParameterGroup=Parameters,Parameter=x" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[e2a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_31"/>
      <StateTemplateVariable objectReference="ModelValue_32"/>
      <StateTemplateVariable objectReference="ModelValue_33"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
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
    </StateTemplate>
    <InitialState type="initialState">
      0 0 0 0 0 0 36132845142000024 0 0 0 0 0 0 0 0 0 0 0.060000000000000039 0 0 0 1 1 5 0.5 0.20000000000000001 0.10000000000000001 1 0.10000000000000001 4.9999999999999998e-07 0 0.00040000000000000002 0.5 0.0001 2.0000000000000002e-05 4.9999999999999998e-07 0 0.00040000000000000002 0.5 0.00029999999999999997 0.0025000000000000001 0.10000000000000001 0.0015 2.5000000000000001e-05 0.000125 0.0025000000000000001 0.01 0.001 0.00050000000000000001 4.9999999999999998e-07 0 0.00040000000000000002 0 
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
        <Parameter name="StepNumber" type="unsignedInteger" value="10000"/>
        <Parameter name="StepSize" type="float" value="38.520000000000003"/>
        <Parameter name="Duration" type="float" value="385200"/>
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
    <PlotSpecification name="NFKB_nuc" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[NFKB_nuc]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Compartments[Nucleus],Vector=Metabolites[NFKB_nuc],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="IKKa" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[IKK_active]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Compartments[Cytosol],Vector=Metabolites[IKK_active],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="IkB_mRNA" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[IkB_mRNA_amp]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[IkB_mRNA_amp],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="A20_mRNA" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[A20_mRNA_amp]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Lipniacki2004 - Mathematical model of NFKB regulatory module,Vector=Values[A20_mRNA_amp],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <ListOfLayouts xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <Layout key="Layout_2" name="COPASI autolayout">
      <Dimensions width="786.16646050492477" height="764.66869188410647"/>
      <ListOfMetabGlyphs>
        <MetaboliteGlyph key="Layout_3" name="MetabGlyph" metabolite="Metabolite_14">
          <BoundingBox>
            <Position x="461.92064606439681" y="545.40618347555346"/>
            <Dimensions width="52" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_4" name="MetabGlyph" metabolite="Metabolite_15">
          <BoundingBox>
            <Position x="492.69015035596476" y="584.87515379821571"/>
            <Dimensions width="148" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_5" name="MetabGlyph" metabolite="Metabolite_12">
          <BoundingBox>
            <Position x="84.515707571185203" y="445.58361618849131"/>
            <Dimensions width="132" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_6" name="MetabGlyph" metabolite="Metabolite_1">
          <BoundingBox>
            <Position x="366.01567566970948" y="402.89178294925364"/>
            <Dimensions width="164" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_7" name="MetabGlyph" metabolite="Metabolite_0">
          <BoundingBox>
            <Position x="559.94487438400051" y="427.78561987031071"/>
            <Dimensions width="180" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_8" name="MetabGlyph" metabolite="Metabolite_2">
          <BoundingBox>
            <Position x="337.26238566139477" y="577.82486990750749"/>
            <Dimensions width="148" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_9" name="MetabGlyph" metabolite="Metabolite_3">
          <BoundingBox>
            <Position x="434.63158136451239" y="286.73838062600043"/>
            <Dimensions width="212" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_10" name="MetabGlyph" metabolite="Metabolite_4">
          <BoundingBox>
            <Position x="393.8485192937369" y="176.43856295974069"/>
            <Dimensions width="52" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_11" name="MetabGlyph" metabolite="Metabolite_9">
          <BoundingBox>
            <Position x="397.76581329817441" y="228.14452569967648"/>
            <Dimensions width="116" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_12" name="MetabGlyph" metabolite="">
          <BoundingBox>
            <Position x="361.92002235906966" y="440.57386009012316"/>
            <Dimensions width="100" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_13" name="MetabGlyph" metabolite="Metabolite_10">
          <BoundingBox>
            <Position x="200.1717219954885" y="160.41059791967518"/>
            <Dimensions width="196" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_14" name="MetabGlyph" metabolite="Metabolite_5">
          <BoundingBox>
            <Position x="384.56284627602804" y="345.33263370234931"/>
            <Dimensions width="292" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_15" name="MetabGlyph" metabolite="Metabolite_7">
          <BoundingBox>
            <Position x="232.4664787502079" y="331.00088196726142"/>
            <Dimensions width="68" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_16" name="MetabGlyph" metabolite="Metabolite_6">
          <BoundingBox>
            <Position x="193.6138011330213" y="253.52148010167775"/>
            <Dimensions width="132" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_17" name="MetabGlyph" metabolite="Metabolite_8">
          <BoundingBox>
            <Position x="218.80934593949291" y="494.13123023142339"/>
            <Dimensions width="132" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_18" name="MetabGlyph" metabolite="Metabolite_11">
          <BoundingBox>
            <Position x="487.09165439557205" y="86.179619743985313"/>
            <Dimensions width="132" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_19" name="MetabGlyph" metabolite="Metabolite_13">
          <BoundingBox>
            <Position x="240.63296244212756" y="588.15129690063532"/>
            <Dimensions width="52" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_20" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="502.40723181306043" y="25.450295702638414"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_21" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="615.19120289620355" y="333.99724357386185"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_22" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="439.62503068331239" y="753.04685085900019"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_23" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="785.16646050492477" y="540.14971598343163"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_24" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="247.08392518224355" y="498.64667695516027"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_25" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="396.35314864969178" y="0"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_26" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="313.66560347989525" y="64.935021471809478"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_27" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="614.65472805545096" y="526.75064277525917"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_28" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="644.44688695457421" y="737.17175852958258"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_29" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="783.21737420058207" y="339.72803315178908"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_30" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="239.89556066618502" y="763.66869188410647"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_31" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="0" y="401.55993572863827"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_32" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="110.60728203333929" y="614.21791997650098"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_33" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="707.03181578882095" y="129.56049010056199"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
      </ListOfMetabGlyphs>
      <ListOfReactionGlyphs>
        <ReactionGlyph key="Layout_34" name="ReactionGlyph" reaction="Reaction_14">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="454.72223635613204" y="302.17706596120968"/>
                <End x="465.392184744411" y="301.88438672836003"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_35" name="MetabReferenceGlyph" metaboliteGlyph="Layout_6" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="454.72223635613204" y="302.17706596120968"/>
                    <End x="447.35754749953668" y="397.89178294925364"/>
                    <BasePoint1 x="444.05228796785315" y="302.46974519405933"/>
                    <BasePoint2 x="443.03743063662517" y="350.2539338798689"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_36" name="MetabReferenceGlyph" metaboliteGlyph="Layout_10" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="454.72223635613204" y="302.17706596120968"/>
                    <End x="423.95337292142034" y="209.43856295974069"/>
                    <BasePoint1 x="444.05228796785315" y="302.46974519405933"/>
                    <BasePoint2 x="431.335343347567" y="256.02732388511242"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_37" name="MetabReferenceGlyph" metaboliteGlyph="Layout_9" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="465.392184744411" y="301.88438672836003"/>
                    <End x="429.63158136451239" y="302.20531715882527"/>
                    <BasePoint1 x="476.06213313268989" y="301.59170749551038"/>
                    <BasePoint2 x="455.51434434567091" y="301.82534251895538"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_38" name="ReactionGlyph" reaction="Reaction_10">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="479.51612033745317" y="114.35036259405418"/>
                <End x="484.53456259570436" y="121.77329499818886"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_39" name="MetabReferenceGlyph" metaboliteGlyph="Layout_20" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="479.51612033745317" y="114.35036259405418"/>
                    <End x="500.97764333693618" y="31.450295702638414"/>
                    <BasePoint1 x="474.49767807920199" y="106.92743018991949"/>
                    <BasePoint2 x="486.48305014350632" y="67.333129845245281"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_40" name="MetabReferenceGlyph" metaboliteGlyph="Layout_18" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="484.53456259570436" y="121.77329499818886"/>
                    <End x="511.48671023719447" y="119.17961974398531"/>
                    <BasePoint1 x="489.55300485395554" y="129.19622740232356"/>
                    <BasePoint2 x="501.77446811013778" y="126.0436566741881"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_41" name="MetabReferenceGlyph" metaboliteGlyph="Layout_17" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="294.14613260519991" y="489.13123023142339"/>
                    <End x="473.74097802902486" y="123.66266109449644"/>
                    <BasePoint1 x="383.94355531711238" y="306.39694566295992"/>
                    <BasePoint2 x="465.45661459147095" y="129.26349339287137"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_42" name="ReactionGlyph" reaction="Reaction_15">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="340.15661583016691" y="331.01999852874428"/>
                <End x="357.83142661763321" y="332.73259874643259"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_43" name="MetabReferenceGlyph" metaboliteGlyph="Layout_6" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="340.15661583016691" y="331.01999852874428"/>
                    <End x="420.78315526363531" y="397.89178294925364"/>
                    <BasePoint1 x="322.48180504270067" y="329.30739831105592"/>
                    <BasePoint2 x="367.21377745630139" y="363.17144057573267"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_44" name="MetabReferenceGlyph" metaboliteGlyph="Layout_16" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="340.15661583016691" y="331.01999852874428"/>
                    <End x="278.94655702468015" y="286.52148010167775"/>
                    <BasePoint1 x="322.48180504270067" y="329.30739831105592"/>
                    <BasePoint2 x="296.29547833682386" y="307.48628915194473"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_45" name="MetabReferenceGlyph" metaboliteGlyph="Layout_14" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="357.83142661763321" y="332.73259874643259"/>
                    <End x="412.18682240956173" y="340.33263370234931"/>
                    <BasePoint1 x="375.50623740509945" y="334.44519896412095"/>
                    <BasePoint2 x="398.26523260419719" y="337.81706638765723"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_46" name="ReactionGlyph" reaction="Reaction_13">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="539.00580335065149" y="389.5113986800921"/>
                <End x="555.77335607330099" y="381.27194474255288"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_47" name="MetabReferenceGlyph" metaboliteGlyph="Layout_6" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="539.00580335065149" y="389.5113986800921"/>
                    <End x="521.69176663158646" y="397.89178294925364"/>
                    <BasePoint1 x="522.23825062800211" y="397.75085261763127"/>
                    <BasePoint2 x="517.77312044913197" y="399.88118126782729"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_48" name="MetabReferenceGlyph" metaboliteGlyph="Layout_21" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="555.77335607330099" y="381.27194474255288"/>
                    <End x="610.19120289620355" y="339.40900290692491"/>
                    <BasePoint1 x="572.54090879595037" y="373.03249080501371"/>
                    <BasePoint2 x="595.55794402673928" y="354.16088337158453"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_49" name="ReactionGlyph" reaction="Reaction_8">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="497.51876993384684" y="176.79790706691378"/>
                <End x="493.92704053340304" y="171.62731079292021"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_50" name="MetabReferenceGlyph" metaboliteGlyph="Layout_11" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="497.51876993384684" y="176.79790706691378"/>
                    <End x="470.0829615727755" y="223.14452569967648"/>
                    <BasePoint1 x="501.11049933429058" y="181.96850334090735"/>
                    <BasePoint2 x="486.49466280364402" y="203.8491635887903"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_51" name="MetabReferenceGlyph" metaboliteGlyph="Layout_10" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="493.92704053340304" y="171.62731079292021"/>
                    <End x="450.8485192937369" y="179.89137699387936"/>
                    <BasePoint1 x="490.3353111329593" y="166.45671451892665"/>
                    <BasePoint2 x="469.69398286323712" y="171.88139668790461"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_52" name="ReactionGlyph" reaction="Reaction_5">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="220.66387802561459" y="188.2887222889336"/>
                <End x="216.80808593936788" y="197.59981050713387"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_53" name="MetabReferenceGlyph" metaboliteGlyph="Layout_13" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="220.66387802561459" y="188.2887222889336"/>
                    <End x="195.1717219954885" y="180.79744949445879"/>
                    <BasePoint1 x="224.5196701118613" y="178.97763407073333"/>
                    <BasePoint2 x="210.80964407523658" y="177.55976972804598"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_54" name="MetabReferenceGlyph" metaboliteGlyph="Layout_16" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="216.80808593936788" y="197.59981050713387"/>
                    <End x="244.98650969007647" y="248.52148010167775"/>
                    <BasePoint1 x="212.95229385312118" y="206.91089872533414"/>
                    <BasePoint2 x="228.00545375003713" y="230.04396146805601"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_55" name="ReactionGlyph" reaction="Reaction_4">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="375.85833237084222" y="237.14617101022185"/>
                <End x="368.64674660850773" y="217.07344300563437"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_56" name="MetabReferenceGlyph" metaboliteGlyph="Layout_17" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="375.85833237084222" y="237.14617101022185"/>
                    <End x="292.24999607664478" y="489.13123023142339"/>
                    <BasePoint1 x="383.06991813317671" y="257.21889901480932"/>
                    <BasePoint2 x="339.4628535454944" y="378.19324662426322"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_57" name="MetabReferenceGlyph" metaboliteGlyph="Layout_11" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="375.85833237084222" y="237.14617101022185"/>
                    <End x="392.76581329817441" y="255.2083378543775"/>
                    <BasePoint1 x="383.06991813317671" y="257.21889901480932"/>
                    <BasePoint2 x="389.72076215625918" y="261.2318004357403"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_58" name="MetabReferenceGlyph" metaboliteGlyph="Layout_13" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="368.64674660850773" y="217.07344300563437"/>
                    <End x="351.3810672075241" y="193.41059791967518"/>
                    <BasePoint1 x="361.43516084617323" y="197.0007150010469"/>
                    <BasePoint2 x="354.60521758626498" y="190.18747445921417"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_59" name="ReactionGlyph" reaction="Reaction_11">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="445.96000208466535" y="501.69703537991745"/>
                <End x="442.28467308383392" y="519.19034407574281"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_60" name="MetabReferenceGlyph" metaboliteGlyph="Layout_6" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="445.96000208466535" y="501.69703537991745"/>
                    <End x="448.47285237851446" y="435.89178294925364"/>
                    <BasePoint1 x="449.63533108549683" y="484.20372668409209"/>
                    <BasePoint2 x="449.9729239822135" y="455.67442764271652"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_61" name="MetabReferenceGlyph" metaboliteGlyph="Layout_8" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="442.28467308383392" y="519.19034407574281"/>
                    <End x="420.68532256773108" y="572.82486990750749"/>
                    <BasePoint1 x="438.60934408300244" y="536.68365277156818"/>
                    <BasePoint2 x="428.72850107515887" y="559.12758851349417"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_62" name="ReactionGlyph" reaction="Reaction_12">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="418.38047980664896" y="668.64979210742717"/>
                <End x="421.26674430884077" y="684.82199020257644"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_63" name="MetabReferenceGlyph" metaboliteGlyph="Layout_8" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="418.38047980664896" y="668.64979210742717"/>
                    <End x="412.58804356720123" y="610.82486990750749"/>
                    <BasePoint1 x="415.49421530445721" y="652.4775940122779"/>
                    <BasePoint2 x="413.3195633102813" y="627.60818243610538"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_64" name="MetabReferenceGlyph" metaboliteGlyph="Layout_22" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="421.26674430884077" y="684.82199020257644"/>
                    <End x="438.45344800764656" y="748.04685085900019"/>
                    <BasePoint1 x="424.15300881103252" y="700.99418829772571"/>
                    <BasePoint2 x="432.02479453488752" y="728.56356910215027"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_65" name="ReactionGlyph" reaction="Reaction_0">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="728.96409021368879" y="497.19938422303721"/>
                <End x="715.39193160159641" y="487.31297461172517"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_66" name="MetabReferenceGlyph" metaboliteGlyph="Layout_23" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="728.96409021368879" y="497.19938422303721"/>
                    <End x="780.16646050492477" y="536.36961707751277"/>
                    <BasePoint1 x="742.53624882578117" y="507.08579383434932"/>
                    <BasePoint2 x="764.74439431837618" y="524.19930785875908"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_67" name="MetabReferenceGlyph" metaboliteGlyph="Layout_7" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="715.39193160159641" y="487.31297461172517"/>
                    <End x="677.59910941920191" y="460.78561987031071"/>
                    <BasePoint1 x="701.81977298950403" y="477.42656500041306"/>
                    <BasePoint2 x="686.31640155132982" y="466.6344900325339"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_68" name="ReactionGlyph" reaction="Reaction_19">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="239.48823125736408" y="423.73260441236158"/>
                <End x="229.78140949625822" y="419.77629833569466"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_69" name="MetabReferenceGlyph" metaboliteGlyph="Layout_24" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="239.48823125736408" y="423.73260441236158"/>
                    <End x="247.70793134053071" y="493.64667695516027"/>
                    <BasePoint1 x="249.19505301846991" y="427.6889104890285"/>
                    <BasePoint2 x="250.87819761977676" y="461.65687024126112"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_70" name="MetabReferenceGlyph" metaboliteGlyph="Layout_5" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="229.78140949625822" y="419.77629833569466"/>
                    <End x="180.7147314282019" y="440.58361618849131"/>
                    <BasePoint1 x="220.07458773515239" y="415.81999225902774"/>
                    <BasePoint2 x="197.9679541414007" y="427.21272770459279"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_71" name="MetabReferenceGlyph" metaboliteGlyph="Layout_17" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="271.51738404288955" y="489.13123023142339"/>
                    <End x="230.8604810685635" y="431.01481652807126"/>
                    <BasePoint1 x="251.18893255572652" y="460.07302337974733"/>
                    <BasePoint2 x="227.08614176031585" y="440.27518168211441"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_72" name="ReactionGlyph" reaction="Reaction_18">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="423.03996068764224" y="91.254395759279475"/>
                <End x="420.74042362323775" y="72.260539463305406"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_73" name="MetabReferenceGlyph" metaboliteGlyph="Layout_10" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="423.03996068764224" y="91.254395759279475"/>
                    <End x="421.14953171694788" y="171.43856295974069"/>
                    <BasePoint1 x="425.33949775204673" y="110.24825205525354"/>
                    <BasePoint2 x="423.81939900059842" y="145.59187158149064"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_74" name="MetabReferenceGlyph" metaboliteGlyph="Layout_25" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="420.74042362323775" y="72.260539463305406"/>
                    <End x="399.10329118989574" y="6"/>
                    <BasePoint1 x="418.44088655883326" y="53.266683167331337"/>
                    <BasePoint2 x="408.19720460826335" y="24.884877509672151"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_75" name="ReactionGlyph" reaction="Reaction_17">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="380.85335036383475" y="109.05353864820586"/>
                <End x="391.42164194521894" y="121.55389279699898"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_76" name="MetabReferenceGlyph" metaboliteGlyph="Layout_26" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="380.85335036383475" y="109.05353864820586"/>
                    <End x="319.66560347989525" y="68.484764127526688"/>
                    <BasePoint1 x="370.28505878245056" y="96.553184499412737"/>
                    <BasePoint2 x="342.33325823582686" y="79.393885776271432"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_77" name="MetabReferenceGlyph" metaboliteGlyph="Layout_10" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="391.42164194521894" y="121.55389279699898"/>
                    <End x="413.83065557625201" y="171.43856295974069"/>
                    <BasePoint1 x="401.98993352660312" y="134.0542469457921"/>
                    <BasePoint2 x="410.55236744677359" y="155.87149348996468"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_78" name="MetabReferenceGlyph" metaboliteGlyph="Layout_18" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="482.09165439557205" y="104.04245468649117"/>
                    <End x="393.77404877133324" y="108.8474734617554"/>
                    <BasePoint1 x="437.93285158345265" y="106.44496407412328"/>
                    <BasePoint2 x="401.41060138813964" y="102.39123120090838"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_79" name="ReactionGlyph" reaction="Reaction_23">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="385.81428512896741" y="508.67974692631242"/>
                <End x="382.13895612813599" y="526.17305562213778"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_80" name="MetabReferenceGlyph" metaboliteGlyph="Layout_6" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="385.81428512896741" y="508.67974692631242"/>
                    <End x="433.04831139499851" y="435.89178294925364"/>
                    <BasePoint1 x="389.48961412979889" y="491.18643823048706"/>
                    <BasePoint2 x="412.18779501260656" y="459.16578341591401"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_81" name="MetabReferenceGlyph" metaboliteGlyph="Layout_8" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="382.13895612813599" y="526.17305562213778"/>
                    <End x="398.32227457366594" y="572.82486990750749"/>
                    <BasePoint1 x="378.46362712730451" y="543.66636431796314"/>
                    <BasePoint2 x="387.47411860027739" y="562.61894428669166"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_82" name="MetabReferenceGlyph" metaboliteGlyph="Layout_3" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="456.92064606439681" y="546.26191285186485"/>
                    <End x="393.7629604230072" y="519.48250278617843"/>
                    <BasePoint1 x="425.34180324370197" y="532.8722078190217"/>
                    <BasePoint2 x="403.5493002174627" y="521.53860429813176"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_83" name="MetabReferenceGlyph" metaboliteGlyph="Layout_19" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="290.18177055491185" y="583.15129690063532"/>
                    <End x="374.1902808340962" y="515.37029976227177"/>
                    <BasePoint1 x="332.186025694504" y="549.26079833145354"/>
                    <BasePoint2 x="364.4039410396407" y="513.31419825031844"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_84" name="ReactionGlyph" reaction="Reaction_24">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="536.05601977466551" y="502.38846331372196"/>
                <End x="531.20956200471699" y="509.55091441601763"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_85" name="MetabReferenceGlyph" metaboliteGlyph="Layout_27" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="536.05601977466551" y="502.38846331372196"/>
                    <End x="609.65472805545096" y="524.87851981751294"/>
                    <BasePoint1 x="540.90247754461416" y="495.22601221142628"/>
                    <BasePoint2 x="576.49021724251975" y="508.26165323889575"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_86" name="MetabReferenceGlyph" metaboliteGlyph="Layout_4" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="531.20956200471699" y="509.55091441601763"/>
                    <End x="557.36447850358911" y="579.87515379821571"/>
                    <BasePoint1 x="526.36310423476834" y="516.71336551831325"/>
                    <BasePoint2 x="540.6521769266916" y="550.08487243383843"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_87" name="MetabReferenceGlyph" metaboliteGlyph="Layout_17" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="355.80934593949291" y="505.83906398380822"/>
                    <End x="525.3506385002114" y="500.36558752768536"/>
                    <BasePoint1 x="440.57999221985216" y="503.10232575574679"/>
                    <BasePoint2 x="517.06848611073156" y="494.76148619050093"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_88" name="ReactionGlyph" reaction="Reaction_2">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="558.76161264136329" y="450.94785403692396"/>
                <End x="538.56869276993427" y="448.45847034481829"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_89" name="MetabReferenceGlyph" metaboliteGlyph="Layout_7" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="558.76161264136329" y="450.94785403692396"/>
                    <End x="554.94487438400051" y="457.37793380206307"/>
                    <BasePoint1 x="578.95453251279241" y="453.43723772902968"/>
                    <BasePoint2 x="571.99793341625377" y="456.02993168857279"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_90" name="MetabReferenceGlyph" metaboliteGlyph="Layout_6" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="538.56869276993427" y="448.45847034481829"/>
                    <End x="493.99111620507421" y="435.89178294925364"/>
                    <BasePoint1 x="518.37577289850515" y="445.96908665271258"/>
                    <BasePoint2 x="501.13521458393245" y="440.30808887795672"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_91" name="MetabReferenceGlyph" metaboliteGlyph="Layout_3" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="499.25477427650117" y="540.40618347555346"/>
                    <End x="547.44161502397367" y="459.62802770842455"/>
                    <BasePoint1 x="523.34819465023747" y="500.01710559198898"/>
                    <BasePoint2 x="546.21807734229856" y="469.55289322597798"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_92" name="ReactionGlyph" reaction="Reaction_7">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="189.48358773548026" y="303.49129240395638"/>
                <End x="190.1688554971989" y="311.23923259051475"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_93" name="MetabReferenceGlyph" metaboliteGlyph="Layout_16" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="189.48358773548026" y="303.49129240395638"/>
                    <End x="211.93822041644432" y="286.52148010167775"/>
                    <BasePoint1 x="188.79831997376161" y="295.74335221739801"/>
                    <BasePoint2 x="200.1969532546733" y="289.19543111289829"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_94" name="MetabReferenceGlyph" metaboliteGlyph="Layout_15" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="190.1688554971989" y="311.23923259051475"/>
                    <End x="227.4664787502079" y="331.58330422053712"/>
                    <BasePoint1 x="190.85412325891755" y="318.98717277707311"/>
                    <BasePoint2 x="209.33161794499239" y="327.22222354544471"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_95" name="ReactionGlyph" reaction="Reaction_6">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="331.95790417123033" y="257.74111462344706"/>
                <End x="323.60353438233517" y="257.72129038726473"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_96" name="MetabReferenceGlyph" metaboliteGlyph="Layout_15" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="331.95790417123033" y="257.74111462344706"/>
                    <End x="282.54936531579631" y="326.00088196726142"/>
                    <BasePoint1 x="340.31227396012542" y="257.76093885962939"/>
                    <BasePoint2 x="313.51941208518463" y="291.88586647249099"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_97" name="MetabReferenceGlyph" metaboliteGlyph="Layout_10" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="331.95790417123033" y="257.74111462344706"/>
                    <End x="397.40147043161977" y="209.43856295974069"/>
                    <BasePoint1 x="340.31227396012542" y="257.76093885962939"/>
                    <BasePoint2 x="370.94546464309639" y="233.60470696873062"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_98" name="MetabReferenceGlyph" metaboliteGlyph="Layout_16" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="323.60353438233517" y="257.72129038726473"/>
                    <End x="330.6138011330213" y="254.98950498501836"/>
                    <BasePoint1 x="315.24916459344007" y="257.7014661510824"/>
                    <BasePoint2 x="320.84289041600687" y="256.3405295090048"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_99" name="ReactionGlyph">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="352.16842907946693" y="420.03183367276671"/>
                <End x="334.83625217285999" y="422.19320354835753"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_100" name="MetabReferenceGlyph" metaboliteGlyph="Layout_14" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="352.16842907946693" y="420.03183367276671"/>
                    <End x="478.28583907313242" y="378.33263370234931"/>
                    <BasePoint1 x="369.50060598607388" y="417.87046379717589"/>
                    <BasePoint2 x="428.22626675625486" y="397.56120628086489"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_101" name="MetabReferenceGlyph" metaboliteGlyph="Layout_6" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="334.83625217285999" y="422.19320354835753"/>
                    <End x="361.01567566970948" y="421.86653438354256"/>
                    <BasePoint1 x="317.50407526625304" y="424.35457342394835"/>
                    <BasePoint2 x="334.92683124132952" y="423.65089637264316"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_102" name="MetabReferenceGlyph" metaboliteGlyph="Layout_15" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="334.83625217285999" y="422.19320354835753"/>
                    <End x="278.68663279728395" y="364.00088196726142"/>
                    <BasePoint1 x="317.50407526625304" y="424.35457342394835"/>
                    <BasePoint2 x="293.76230980511673" y="394.71807016450259"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_103" name="MetabReferenceGlyph" metaboliteGlyph="Layout_12" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="357.69223376057295" y="435.57386009012316"/>
                    <End x="344.73978350454558" y="431.03566000443237"/>
                    <BasePoint1 x="351.21600863255924" y="433.3047600472778"/>
                    <BasePoint2 x="345.97722638292771" y="440.95880139830263"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_104" name="ReactionGlyph" reaction="Reaction_9">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="518.27358909340262" y="215.01089268267324"/>
                <End x="521.8653184938463" y="220.18148895666681"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_105" name="MetabReferenceGlyph" metaboliteGlyph="Layout_10" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="518.27358909340262" y="215.01089268267324"/>
                    <End x="450.8485192937369" y="196.78078115415582"/>
                    <BasePoint1 x="514.68185969295882" y="209.84029640867968"/>
                    <BasePoint2 x="481.86725714323694" y="202.01788971291933"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_106" name="MetabReferenceGlyph" metaboliteGlyph="Layout_11" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="521.8653184938463" y="220.18148895666681"/>
                    <End x="518.76581329817441" y="226.96437061017289"/>
                    <BasePoint1 x="525.4570478942901" y="225.35208523066038"/>
                    <BasePoint2 x="523.00936294634312" y="227.45087698891504"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_107" name="ReactionGlyph" reaction="Reaction_25">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="615.06246941858149" y="656.99547745570305"/>
                <End x="622.88814307844245" y="670.87513792883976"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_108" name="MetabReferenceGlyph" metaboliteGlyph="Layout_4" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="615.06246941858149" y="656.99547745570305"/>
                    <End x="584.10368368032209" y="617.87515379821571"/>
                    <BasePoint1 x="607.23679575872052" y="643.11581698256634"/>
                    <BasePoint2 x="593.71382130455606" y="627.02557027210685"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_109" name="MetabReferenceGlyph" metaboliteGlyph="Layout_28" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="622.88814307844245" y="670.87513792883976"/>
                    <End x="643.46755242740721" y="732.17175852958258"/>
                    <BasePoint1 x="630.71381673830342" y="684.75479840197647"/>
                    <BasePoint2 x="639.0471029978205" y="711.9331935840637"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_110" name="ReactionGlyph" reaction="Reaction_1">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="713.03522531413319" y="393.07545900034364"/>
                <End x="726.41247529579141" y="382.9197003284915"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_111" name="MetabReferenceGlyph" metaboliteGlyph="Layout_7" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="713.03522531413319" y="393.07545900034364"/>
                    <End x="674.44399417756847" y="422.78561987031071"/>
                    <BasePoint1 x="699.65797533247508" y="403.23121767219578"/>
                    <BasePoint2 x="683.70667225960722" y="415.54735843921628"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_112" name="MetabReferenceGlyph" metaboliteGlyph="Layout_29" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="726.41247529579141" y="382.9197003284915"/>
                    <End x="778.21737420058207" y="344.30172025236237"/>
                    <BasePoint1 x="739.78972527744952" y="372.76394165663936"/>
                    <BasePoint2 x="762.34786223443029" y="355.9938912865378"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_113" name="ReactionGlyph">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="500.12894659225327" y="360.85520394913982"/>
                <End x="490.86735602277298" y="372.47054418146519"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_114" name="MetabReferenceGlyph" metaboliteGlyph="Layout_9" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="500.12894659225327" y="360.85520394913982"/>
                    <End x="528.39319601985437" y="319.73838062600043"/>
                    <BasePoint1 x="509.39053716173356" y="349.23986371681451"/>
                    <BasePoint2 x="521.2072642331641" y="331.5852871133261"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_115" name="MetabReferenceGlyph" metaboliteGlyph="Layout_6" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="490.86735602277298" y="372.47054418146519"/>
                    <End x="467.46985111923038" y="397.89178294925364"/>
                    <BasePoint1 x="481.60576545329269" y="384.0858844137905"/>
                    <BasePoint2 x="472.22241064389146" y="393.89266873960344"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_116" name="MetabReferenceGlyph" metaboliteGlyph="Layout_12" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="427.20944854082256" y="435.57386009012316"/>
                    <End x="487.67939871923568" y="360.42852502443992"/>
                    <BasePoint1 x="457.44442363002912" y="398.00119255728157"/>
                    <BasePoint2 x="479.86064613095823" y="354.19417598357734"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_117" name="ReactionGlyph" reaction="Reaction_22">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="254.21734868849259" y="677.21094519760061"/>
                <End x="251.59360851089835" y="693.41268469594763"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_118" name="MetabReferenceGlyph" metaboliteGlyph="Layout_19" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="254.21734868849259" y="677.21094519760061"/>
                    <End x="263.47203467995837" y="621.15129690063532"/>
                    <BasePoint1 x="256.84108886608686" y="661.00920569925347"/>
                    <BasePoint2 x="260.81249681742116" y="637.02981642535769"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_119" name="MetabReferenceGlyph" metaboliteGlyph="Layout_30" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="251.59360851089835" y="693.41268469594763"/>
                    <End x="241.25999701857623" y="758.66869188410647"/>
                    <BasePoint1 x="248.96986833330411" y="709.61442419429477"/>
                    <BasePoint2 x="244.45899763154159" y="738.19199291378732"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_120" name="ReactionGlyph" reaction="Reaction_3">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="323.49871527973119" y="364.39689065882862"/>
                <End x="325.33300199865971" y="380.70992548524487"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_121" name="MetabReferenceGlyph" metaboliteGlyph="Layout_15" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="323.49871527973119" y="364.39689065882862"/>
                    <End x="305.4664787502079" y="347.17915092749394"/>
                    <BasePoint1 x="321.66442856080266" y="348.08385583241244"/>
                    <BasePoint2 x="313.10688197577315" y="343.55324467334913"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_122" name="MetabReferenceGlyph" metaboliteGlyph="Layout_17" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="325.33300199865971" y="380.70992548524487"/>
                    <End x="292.05273937334806" y="489.13123023142339"/>
                    <BasePoint1 x="327.16728871758824" y="397.02296031166105"/>
                    <BasePoint2 x="310.06858572520025" y="447.15535397814631"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_123" name="ReactionGlyph" reaction="Reaction_20">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="78.697383609060452" y="438.016705709593"/>
                <End x="63.695812851941938" y="432.26433766360765"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_124" name="MetabReferenceGlyph" metaboliteGlyph="Layout_5" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="78.697383609060452" y="438.016705709593"/>
                    <End x="82.25459186236526" y="440.58361618849131"/>
                    <BasePoint1 x="93.698954366178981" y="443.76907375557829"/>
                    <BasePoint2 x="91.727165803551742" y="443.61443698353116"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_125" name="MetabReferenceGlyph" metaboliteGlyph="Layout_31" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="63.695812851941938" y="432.26433766360765"/>
                    <End x="6" y="404.85043892038487"/>
                    <BasePoint1 x="48.694242094823416" y="426.51196961762236"/>
                    <BasePoint2 x="23.596728358132076" y="414.24311225750728"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_126" name="ReactionGlyph" reaction="Reaction_21">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="174.5166446211355" y="573.73568905739205"/>
                <End x="190.06921266201434" y="572.47902674980548"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_127" name="MetabReferenceGlyph" metaboliteGlyph="Layout_32" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="174.5166446211355" y="573.73568905739205"/>
                    <End x="116.60728203333929" y="610.15241095250713"/>
                    <BasePoint1 x="158.96407658025666" y="574.99235136497862"/>
                    <BasePoint2 x="133.89753729657826" y="592.88654673563951"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_128" name="MetabReferenceGlyph" metaboliteGlyph="Layout_19" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="190.06921266201434" y="572.47902674980548"/>
                    <End x="235.63296244212756" y="586.43619552284417"/>
                    <BasePoint1 x="205.62178070289318" y="571.22236444221892"/>
                    <BasePoint2 x="224.51551358273008" y="578.5151144056349"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_129" name="MetabReferenceGlyph" metaboliteGlyph="Layout_5" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="156.19827162048523" y="478.58361618849131"/>
                    <End x="181.48754393721856" y="563.1398428934275"/>
                    <BasePoint1 x="168.8429077788519" y="520.86172954095946"/>
                    <BasePoint2 x="180.6821592328622" y="553.17232788325623"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_130" name="ReactionGlyph" reaction="Reaction_16">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="631.28485993920776" y="89.609472495233462"/>
                <End x="646.72887607853272" y="92.597559530891118"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_131" name="MetabReferenceGlyph" metaboliteGlyph="Layout_18" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="631.28485993920776" y="89.609472495233462"/>
                    <End x="624.09165439557205" y="84.838630588084868"/>
                    <BasePoint1 x="615.84084379988292" y="86.621385459575791"/>
                    <BasePoint2 x="616.1052450628963" y="84.982986264915922"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_132" name="MetabReferenceGlyph" metaboliteGlyph="Layout_33" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="646.72887607853272" y="92.597559530891118"/>
                    <End x="702.03181578882095" y="125.88024011864988"/>
                    <BasePoint1 x="662.17289221785757" y="95.585646566548789"/>
                    <BasePoint2 x="685.96335803817055" y="111.47996510151376"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
      </ListOfReactionGlyphs>
      <ListOfTextGlyphs>
        <TextGlyph key="Layout_133" name="TextGlyph" graphicalObject="Layout_3" originOfText="Metabolite_14">
          <BoundingBox>
            <Position x="461.92064606439681" y="545.40618347555346"/>
            <Dimensions width="48" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_134" name="TextGlyph" graphicalObject="Layout_4" originOfText="Metabolite_15">
          <BoundingBox>
            <Position x="492.69015035596476" y="584.87515379821571"/>
            <Dimensions width="144" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_135" name="TextGlyph" graphicalObject="Layout_5" originOfText="Metabolite_12">
          <BoundingBox>
            <Position x="84.515707571185203" y="445.58361618849131"/>
            <Dimensions width="128" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_136" name="TextGlyph" graphicalObject="Layout_6" originOfText="Metabolite_1">
          <BoundingBox>
            <Position x="366.01567566970948" y="402.89178294925364"/>
            <Dimensions width="160" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_137" name="TextGlyph" graphicalObject="Layout_7" originOfText="Metabolite_0">
          <BoundingBox>
            <Position x="559.94487438400051" y="427.78561987031071"/>
            <Dimensions width="176" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_138" name="TextGlyph" graphicalObject="Layout_8" originOfText="Metabolite_2">
          <BoundingBox>
            <Position x="337.26238566139477" y="577.82486990750749"/>
            <Dimensions width="144" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_139" name="TextGlyph" graphicalObject="Layout_9" originOfText="Metabolite_3">
          <BoundingBox>
            <Position x="434.63158136451239" y="286.73838062600043"/>
            <Dimensions width="208" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_140" name="TextGlyph" graphicalObject="Layout_10" originOfText="Metabolite_4">
          <BoundingBox>
            <Position x="393.8485192937369" y="176.43856295974069"/>
            <Dimensions width="48" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_141" name="TextGlyph" graphicalObject="Layout_11" originOfText="Metabolite_9">
          <BoundingBox>
            <Position x="397.76581329817441" y="228.14452569967648"/>
            <Dimensions width="112" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_142" name="TextGlyph" graphicalObject="Layout_12" text="unset">
          <BoundingBox>
            <Position x="361.92002235906966" y="440.57386009012316"/>
            <Dimensions width="96" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_143" name="TextGlyph" graphicalObject="Layout_13" originOfText="Metabolite_10">
          <BoundingBox>
            <Position x="200.1717219954885" y="160.41059791967518"/>
            <Dimensions width="192" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_144" name="TextGlyph" graphicalObject="Layout_14" originOfText="Metabolite_5">
          <BoundingBox>
            <Position x="384.56284627602804" y="345.33263370234931"/>
            <Dimensions width="288" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_145" name="TextGlyph" graphicalObject="Layout_15" originOfText="Metabolite_7">
          <BoundingBox>
            <Position x="232.4664787502079" y="331.00088196726142"/>
            <Dimensions width="64" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_146" name="TextGlyph" graphicalObject="Layout_16" originOfText="Metabolite_6">
          <BoundingBox>
            <Position x="193.6138011330213" y="253.52148010167775"/>
            <Dimensions width="128" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_147" name="TextGlyph" graphicalObject="Layout_17" originOfText="Metabolite_8">
          <BoundingBox>
            <Position x="218.80934593949291" y="494.13123023142339"/>
            <Dimensions width="128" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_148" name="TextGlyph" graphicalObject="Layout_18" originOfText="Metabolite_11">
          <BoundingBox>
            <Position x="487.09165439557205" y="86.179619743985313"/>
            <Dimensions width="128" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_149" name="TextGlyph" graphicalObject="Layout_19" originOfText="Metabolite_13">
          <BoundingBox>
            <Position x="240.63296244212756" y="588.15129690063532"/>
            <Dimensions width="48" height="24"/>
          </BoundingBox>
        </TextGlyph>
      </ListOfTextGlyphs>
      <ListOfAdditionalGraphicalObjects>
        <AdditionalGraphicalObject key="Layout_150" name="GeneralGlyph" objectRole="rule">
          <BoundingBox>
            <Position x="484.25349904875122" y="524.40661216393869"/>
            <Dimensions width="10" height="10"/>
          </BoundingBox>
        </AdditionalGraphicalObject>
      </ListOfAdditionalGraphicalObjects>
    </Layout>
  </ListOfLayouts>
  <SBMLReference file="Lipniacki2004_V1.xml">
    <SBMLMap SBMLid="A20" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="A20_degradation" COPASIkey="Reaction_22"/>
    <SBMLMap SBMLid="A20_mRNA" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="A20_mRNA_amp" COPASIkey="ModelValue_32"/>
    <SBMLMap SBMLid="A20_transcription" COPASIkey="Reaction_19"/>
    <SBMLMap SBMLid="A20_translation" COPASIkey="Reaction_21"/>
    <SBMLMap SBMLid="A20mRNA_degradation" COPASIkey="Reaction_20"/>
    <SBMLMap SBMLid="Constant_flux__irreversible" COPASIkey="Function_6"/>
    <SBMLMap SBMLid="Cytosol" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="IKK_active" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="IKK_inact" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="IKK_neutral" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="IKKa_IkBNFKB_binding" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="IKKa_IkB_binding" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="IKKa_degradation" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="IKKa_inactivation_1" COPASIkey="Reaction_23"/>
    <SBMLMap SBMLid="IKKa_spon_inactivation" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="IKKactive_IkB" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="IKKactive_IkB_NFKB" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="IKKinact_degradation" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="IKKn_activation" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="IKKn_degradation" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="IKKn_production" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="IkB" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="IkB_NFKB" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="IkB_NFKB_binding" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="IkB_NFKB_n_export" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="IkB_NFKB_n_induced_IkB_NFKBc_production" COPASIkey="Reaction_31"/>
    <SBMLMap SBMLid="IkB_NFKB_nuc" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="IkB_con_degradation" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="IkB_degradation" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="IkB_degradation_1" COPASIkey="Reaction_26"/>
    <SBMLMap SBMLid="IkB_degradation_2" COPASIkey="Reaction_27"/>
    <SBMLMap SBMLid="IkB_export" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="IkB_mRNA" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="IkB_mRNA_amp" COPASIkey="ModelValue_31"/>
    <SBMLMap SBMLid="IkB_nuc" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="IkB_transcription" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="IkB_translation" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="IkBc_induced_IkBn_production" COPASIkey="Reaction_30"/>
    <SBMLMap SBMLid="IkBmRNA_degradation" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="IkBn_NFKBn_binding" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="IkBn_induced_IkBc_production" COPASIkey="Reaction_29"/>
    <SBMLMap SBMLid="IkBnuc_export" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="Kdeg" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="Kprod" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="Kv" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="NFKB" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="NFKB_export" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="NFKB_nuc" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="NFKB_total" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="NFKBc_induced_NFKBn_production" COPASIkey="Reaction_28"/>
    <SBMLMap SBMLid="Nucleus" COPASIkey="Compartment_1"/>
    <SBMLMap SBMLid="TNF" COPASIkey="Metabolite_14"/>
    <SBMLMap SBMLid="TNF_R" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="a1" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="a2" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="a3" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="c1" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="c1a" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="c1c" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="c2" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="c2a" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="c2c" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="c3" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="c3a" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="c3c" COPASIkey="ModelValue_29"/>
    <SBMLMap SBMLid="c4" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="c4a" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="c5" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="c5a" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="c6a" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="cgen_mRNA" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="cgen_mRNA_amp" COPASIkey="ModelValue_33"/>
    <SBMLMap SBMLid="cgen_mRNA_degradation" COPASIkey="Reaction_25"/>
    <SBMLMap SBMLid="cgen_transcription" COPASIkey="Reaction_24"/>
    <SBMLMap SBMLid="e1a" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="e2a" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="function_for_R26" COPASIkey="Function_42"/>
    <SBMLMap SBMLid="function_for_R3" COPASIkey="Function_40"/>
    <SBMLMap SBMLid="function_for_indirect_production" COPASIkey="Function_45"/>
    <SBMLMap SBMLid="function_for_indirect_transport" COPASIkey="Function_44"/>
    <SBMLMap SBMLid="function_for_substrateless_production" COPASIkey="Function_41"/>
    <SBMLMap SBMLid="function_for_transport" COPASIkey="Function_43"/>
    <SBMLMap SBMLid="i1" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="i1a" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="k1" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="k2" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="k3" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="t1" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="t2" COPASIkey="ModelValue_6"/>
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
