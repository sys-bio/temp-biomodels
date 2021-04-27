<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.29 (Build 228) (http://www.copasi.org) at 2020-10-15T14:41:57Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="29" versionDevel="228" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_13" name="Mass action (irreversible)" type="MassAction" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
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
    <Function key="Function_40" name="Rate Law for R Birth" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-04T07:09:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        T/(1+k*V)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_264" name="T" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_263" name="k" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_262" name="V" order="2" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Rate Law for R to E" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-04T07:13:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (1-p)*(1-z)*beta*V*R
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_265" name="p" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_250" name="beta" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_261" name="V" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_266" name="R" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_267" name="z" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="Rate Law for R to L" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-04T07:15:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        p*(1-z)*beta*R*V
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_272" name="p" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_271" name="beta" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_270" name="R" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_269" name="V" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_268" name="z" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="Rate Law for V Creation" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-04T07:47:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        p*E
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_277" name="E" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_276" name="p" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="McLean1991 - Behaviour of HIV in the presence of zidovudine" simulationType="time" timeUnit="d" volumeUnit="1" areaUnit="m²" lengthUnit="m" quantityUnit="#" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:mamo:MAMO_0000046"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C16118"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C3108"/>
    <bqbiol:hasTaxon rdf:resource="urn:miriam:taxonomy:12721"/>
    <bqbiol:hasTaxon rdf:resource="urn:miriam:taxonomy:9606"/>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:1677807"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-04T06:59:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>be17b038@smail.iitm.ac.in</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Gangadharan</vCard:Family>
            <vCard:Given>Sahana</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>Indian Institute of Technology Madras</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>sankalpavenkatraghavan@gmail.com</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Venkatraghavan</vCard:Family>
            <vCard:Given>Sankalpa</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>Indian Institute of Technology Madras</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>bs17b011@smail.iitm.ac.in</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Govindarajan</vCard:Family>
            <vCard:Given>Prashant</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>Indian Institute of Technology Madras</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>sathvikanantakrishnan@smail.iitm.ac.in</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Anantakrishnan</vCard:Family>
            <vCard:Given>Sathvik</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>Indian Institute of Technology Madras</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>sowmyamanojna@smail.iitm.ac.in</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Narasimha</vCard:Family>
            <vCard:Given>Sowmya Manojna</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>Indian Institute of Technology Madras</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
    <CopasiMT:occursIn rdf:resource="urn:miriam:bto:BTO:0002417"/>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      A new mechanism is proposed for the apparent breakthrough of HIV that occurs approximately 6 months after the commencement of therapy with zidovudine (AZT). Using a simple mathematical model of the interacting population dynamics of HIV and its major host cell in the circulation (the CD4+ lymphocyte), predicted patterns of HIV plasma viraemia in the weeks following treatment with zidovudine are generated. These are in close agreement with observed patterns despite the fact that the model contains no mechanisms for the development of drug-resistant strains of virus. It is suggested that the patterns of viral abundance observed during the first 6 months after treatment may be the result of non-linearities in the interactions between HIV and CD4+ cells, and that it is only after the first post-treatment burst of viral production that drug resistance plays an important role.
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="Blood" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-04T07:00:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C12434" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="R" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-04T07:01:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:cl:CL:0000912"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="L" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-04T07:01:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:cl:CL:0000912" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="E" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-04T07:01:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:cl:CL:0000912" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="V" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-04T07:01:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:taxonomy:12721" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="u" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-04T07:48:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000022" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="T" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-04T07:49:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000610" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="delta" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-04T07:49:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000022" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="pi" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-04T07:49:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000016" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="p" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-04T07:49:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C49159" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="alpha" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-04T07:50:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000022" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="k" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-04T07:50:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C94967" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="beta" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-04T07:50:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C94967" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="sigma" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-04T07:50:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000022" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="z" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-05T05:18:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C88183" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="R Death" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-04T07:02:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:go:GO:0016265" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5390" name="k1" value="0.04"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Compartments[Blood]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="R Birth" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-04T07:02:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0042093" />
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
          <Constant key="Parameter_5389" name="T" value="2e+08"/>
          <Constant key="Parameter_5388" name="k" value="4.31e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Compartments[Blood]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="R to L" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-04T07:03:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C3108" />
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
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5387" name="beta" value="2.05e-09"/>
          <Constant key="Parameter_5386" name="z" value="0.9"/>
          <Constant key="Parameter_5385" name="V" value="0.1"/>
          <Constant key="Parameter_5384" name="p" value="0.2"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Compartments[Blood]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="R to E" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-04T07:03:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C3108" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5383" name="beta" value="2.05e-09"/>
          <Constant key="Parameter_5382" name="z" value="0.9"/>
          <Constant key="Parameter_5381" name="V" value="0.1"/>
          <Constant key="Parameter_5380" name="p" value="0.2"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Compartments[Blood]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="L Death" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-04T07:03:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0016265" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5379" name="k1" value="0.04"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Compartments[Blood]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="L to E" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-04T07:03:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C160241" />
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
          <Constant key="Parameter_5378" name="k1" value="0.288"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Compartments[Blood]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="E Death" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-04T07:03:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0016265" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5377" name="k1" value="16"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Compartments[Blood]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="V Death" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <bqbiol:hasProperty rdf:resource="urn:miriam:taxonomy:12721" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-04T07:03:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:go:GO:0016265" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5376" name="k1" value="3.75"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Compartments[Blood]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="V Creation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-04T07:47:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0019076" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5375" name="p" value="300"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Compartments[Blood]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="ModelValue_3"/>
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
<dcterms:W3CDTF>2020-10-15T13:24:32Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Compartments[Blood]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Compartments[Blood],Vector=Metabolites[R]" value="100000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Compartments[Blood],Vector=Metabolites[L]" value="1000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Compartments[Blood],Vector=Metabolites[E]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Compartments[Blood],Vector=Metabolites[V]" value="7000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Values[u]" value="0.040000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Values[T]" value="200000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Values[delta]" value="16" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Values[pi]" value="300" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Values[p]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Values[alpha]" value="0.28799999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Values[k]" value="4.3100000000000002e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Values[beta]" value="2.0500000000000002e-09" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Values[sigma]" value="3.75" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Values[z]" value="0.90000000000000002" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Reactions[R Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Reactions[R Death],ParameterGroup=Parameters,Parameter=k1" value="0.040000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Values[u],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Reactions[R Birth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Reactions[R Birth],ParameterGroup=Parameters,Parameter=T" value="200000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Values[T],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Reactions[R Birth],ParameterGroup=Parameters,Parameter=k" value="4.3100000000000002e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Values[k],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Reactions[R to L]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Reactions[R to L],ParameterGroup=Parameters,Parameter=beta" value="2.0500000000000002e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Values[beta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Reactions[R to L],ParameterGroup=Parameters,Parameter=z" value="0.90000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Values[z],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Reactions[R to L],ParameterGroup=Parameters,Parameter=p" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Values[p],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Reactions[R to E]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Reactions[R to E],ParameterGroup=Parameters,Parameter=beta" value="2.0500000000000002e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Values[beta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Reactions[R to E],ParameterGroup=Parameters,Parameter=z" value="0.90000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Values[z],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Reactions[R to E],ParameterGroup=Parameters,Parameter=p" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Values[p],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Reactions[L Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Reactions[L Death],ParameterGroup=Parameters,Parameter=k1" value="0.040000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Values[u],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Reactions[L to E]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Reactions[L to E],ParameterGroup=Parameters,Parameter=k1" value="0.28799999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Values[alpha],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Reactions[E Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Reactions[E Death],ParameterGroup=Parameters,Parameter=k1" value="16" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Values[delta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Reactions[V Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Reactions[V Death],ParameterGroup=Parameters,Parameter=k1" value="3.75" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Values[sigma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Reactions[V Creation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Reactions[V Creation],ParameterGroup=Parameters,Parameter=p" value="300" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Values[pi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
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
    </StateTemplate>
    <InitialState type="initialState">
      0 100000000 1000000 0 7000000 1 0.040000000000000001 200000000 16 300 0.20000000000000001 0.28799999999999998 4.3100000000000002e-06 2.0500000000000002e-09 3.75 0.90000000000000002 
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
      <Report reference="Report_21" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="1"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="50"/>
        <Parameter name="StepSize" type="float" value="1"/>
        <Parameter name="Duration" type="float" value="50"/>
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
      <Report reference="Report_12" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_19" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_13" target="" append="1" confirmOverwrite="1"/>
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
      <Report reference="Report_14" target="" append="1" confirmOverwrite="1"/>
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
      <Report reference="Report_15" target="" append="1" confirmOverwrite="1"/>
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
      <Report reference="Report_16" target="" append="1" confirmOverwrite="1"/>
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
      <Report reference="Report_17" target="" append="1" confirmOverwrite="1"/>
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
      <Report reference="Report_18" target="" append="1" confirmOverwrite="1"/>
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
      <Report reference="Report_19" target="" append="1" confirmOverwrite="1"/>
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
      <Report reference="Report_20" target="" append="1" confirmOverwrite="1"/>
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
    <Report key="Report_12" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_13" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
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
    <Report key="Report_14" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
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
    <Report key="Report_15" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_16" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
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
    <Report key="Report_17" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_18" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
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
    <Report key="Report_19" name="Moieties" taskType="moieties" separator="&#x09;" precision="6">
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
    <Report key="Report_20" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
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
    <Report key="Report_21" name="Time-Course" taskType="timeCourse" separator="&#x09;" precision="6">
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
  </ListOfReports>
  <ListOfPlots>
    <PlotSpecification name="Concentrations, Volumes, and Global Quantity Values 1" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[R]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Compartments[Blood],Vector=Metabolites[R],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Concentrations, Volumes, and Global Quantity Values 2" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[L]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Compartments[Blood],Vector=Metabolites[L],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[V]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=McLean1991 - Behaviour of HIV in the presence of zidovudine,Vector=Compartments[Blood],Vector=Metabolites[V],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <ListOfLayouts xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <Layout key="Layout_2" name="COPASI autolayout">
      <Dimensions width="399.09371768819881" height="492.49865527441386"/>
      <ListOfMetabGlyphs>
        <MetaboliteGlyph key="Layout_3" name="MetabGlyph" metabolite="Metabolite_0">
          <BoundingBox>
            <Position x="339.15796807563231" y="49.558126396700011"/>
            <Dimensions width="28" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_4" name="MetabGlyph" metabolite="Metabolite_2">
          <BoundingBox>
            <Position x="111.19931927408939" y="179.8609842456934"/>
            <Dimensions width="28" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_5" name="MetabGlyph" metabolite="Metabolite_3">
          <BoundingBox>
            <Position x="65.916732893346875" y="59.395317703384627"/>
            <Dimensions width="28" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_6" name="MetabGlyph" metabolite="Metabolite_1">
          <BoundingBox>
            <Position x="343.15264057625058" y="294.58623027790691"/>
            <Dimensions width="28" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_7" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="0" y="422.10083243415392"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_8" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="398.09371768819881" y="386.08245220999481"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_9" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="213.44144330897635" y="0"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_10" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="37.063411292306256" y="139.05271896220688"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_11" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="23.258016656223049" y="301.72302465119282"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_12" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="219.36327331985848" y="491.49865527441386"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
      </ListOfMetabGlyphs>
      <ListOfReactionGlyphs>
        <ReactionGlyph key="Layout_13" name="ReactionGlyph" reaction="Reaction_0">
          <BoundingBox>
            <Position x="178.27583324601252" y="237.86397548922071"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="195.90873164979413" y="219.91184018734802"/>
                <End x="160.64293484223091" y="255.81611079109339"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_14" name="MetabReferenceGlyph" metaboliteGlyph="Layout_3" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="195.90873164979413" y="219.91184018734802"/>
                    <End x="334.15796807563231" y="82.319192880090867"/>
                    <BasePoint1 x="231.17452845735738" y="184.00756958360262"/>
                    <BasePoint2 x="291.48269746838565" y="124.1873135809104"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_15" name="MetabReferenceGlyph" metaboliteGlyph="Layout_7" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="160.64293484223091" y="255.81611079109339"/>
                    <End x="5.7477222819499403" y="417.10083243415392"/>
                    <BasePoint1 x="125.37713803466768" y="291.7203813948388"/>
                    <BasePoint2 x="56.745980956417995" y="363.38667456543271"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_16" name="ReactionGlyph" reaction="Reaction_6">
          <BoundingBox>
            <Position x="263.21648709571303" y="288.38076437955641"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="249.54676717500757" y="278.74469098134136"/>
                <End x="276.8862070164185" y="298.01683777777146"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_17" name="MetabReferenceGlyph" metaboliteGlyph="Layout_4" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="249.54676717500757" y="278.74469098134136"/>
                    <End x="144.19931927408939" y="206.71167218148145"/>
                    <BasePoint1 x="222.20732733359662" y="259.47254418491121"/>
                    <BasePoint2 x="176.36846334349025" y="228.27407148408878"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_18" name="MetabReferenceGlyph" metaboliteGlyph="Layout_8" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="276.8862070164185" y="298.01683777777146"/>
                    <End x="393.09371768819881" y="382.54386088728006"/>
                    <BasePoint1 x="304.22564685782942" y="317.28898457420161"/>
                    <BasePoint2 x="355.49454223336687" y="354.73445942984836"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_19" name="ReactionGlyph" reaction="Reaction_4">
          <BoundingBox>
            <Position x="287.52464679187227" y="159.99051540140411"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="294.68520665523596" y="175.39482691529946"/>
                <End x="280.36408692850858" y="144.58620388750876"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_20" name="MetabReferenceGlyph" metaboliteGlyph="Layout_6" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="294.68520665523596" y="175.39482691529946"/>
                    <End x="348.21773993475693" y="289.58623027790691"/>
                    <BasePoint1 x="309.00632638196339" y="206.20344994309016"/>
                    <BasePoint2 x="332.19231309004203" y="255.5969958674462"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_21" name="MetabReferenceGlyph" metaboliteGlyph="Layout_9" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="280.36408692850858" y="144.58620388750876"/>
                    <End x="216.47114406031298" y="6"/>
                    <BasePoint1 x="266.04296720178115" y="113.77758085971807"/>
                    <BasePoint2 x="237.67677569936524" y="52.186634672911353"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_22" name="ReactionGlyph" reaction="Reaction_1">
          <BoundingBox>
            <Position x="162.10801685687491" y="82.229059184526278"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="146.32828901770861" y="86.028788812801622"/>
                <End x="177.88774469604121" y="78.429329556250934"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_23" name="MetabReferenceGlyph" metaboliteGlyph="Layout_10" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="146.32828901770861" y="86.028788812801622"/>
                    <End x="43.063411292306256" y="136.28112762556853"/>
                    <BasePoint1 x="114.768833339376" y="93.62824806935231"/>
                    <BasePoint2 x="71.026258396257973" y="116.85455266159809"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_24" name="MetabReferenceGlyph" metaboliteGlyph="Layout_3" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="177.88774469604121" y="78.429329556250934"/>
                    <End x="334.15796807563231" y="64.519523627867926"/>
                    <BasePoint1 x="209.44720037437384" y="70.829870299700247"/>
                    <BasePoint2 x="279.69244814458625" y="65.774832149646414"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_25" name="MetabReferenceGlyph" metaboliteGlyph="Layout_5" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="98.916732893346875" y="73.183934578290575"/>
                    <End x="159.76695070304689" y="72.506949883381751"/>
                    <BasePoint1 x="129.34184179819687" y="72.84544223083617"/>
                    <BasePoint2 x="157.42588454921886" y="62.78484058223723"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_26" name="ReactionGlyph" reaction="Reaction_8">
          <BoundingBox>
            <Position x="78.723236643504777" y="183.30832339564896"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="75.91530083164858" y="194.74970874303938"/>
                <End x="81.531172455360974" y="171.86693804825853"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_27" name="MetabReferenceGlyph" metaboliteGlyph="Layout_11" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="75.91530083164858" y="194.74970874303938"/>
                    <End x="26.784096797788983" y="296.72302465119282"/>
                    <BasePoint1 x="70.2994292079362" y="217.63247943782019"/>
                    <BasePoint2 x="47.137795096934497" y="262.89844471820174"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_28" name="MetabReferenceGlyph" metaboliteGlyph="Layout_5" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="81.531172455360974" y="171.86693804825853"/>
                    <End x="81.734142645773687" y="92.39531770338462"/>
                    <BasePoint1 x="87.147044079073353" y="148.98416735347772"/>
                    <BasePoint2 x="85.844561268351612" y="114.96904985473596"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_29" name="MetabReferenceGlyph" metaboliteGlyph="Layout_4" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="106.19931927408939" y="189.63909387600677"/>
                    <End x="88.43503897750341" y="185.6917863018715"/>
                    <BasePoint1 x="97.3171791257964" y="187.66544008893914"/>
                    <BasePoint2 x="98.146841311502044" y="188.07524920809405"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_30" name="ReactionGlyph" reaction="Reaction_2">
          <BoundingBox>
            <Position x="268.91347062372733" y="144.00517572497006"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="268.71373699869645" y="131.75377053090972"/>
                <End x="269.11320424875822" y="156.2565809190304"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_31" name="MetabReferenceGlyph" metaboliteGlyph="Layout_3" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="268.71373699869645" y="131.75377053090972"/>
                    <End x="334.15796807563231" y="73.342752215062404"/>
                    <BasePoint1 x="268.31426974863462" y="107.25096014278903"/>
                    <BasePoint2 x="301.13625209961799" y="84.171153581895538"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_32" name="MetabReferenceGlyph" metaboliteGlyph="Layout_6" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="269.11320424875822" y="156.2565809190304"/>
                    <End x="344.12595990512693" y="289.58623027790691"/>
                    <BasePoint1 x="269.51267149882005" y="180.75939130715108"/>
                    <BasePoint2 x="306.91918251448897" y="241.29851338955916"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_33" name="MetabReferenceGlyph" metaboliteGlyph="Layout_5" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="98.916732893346875" y="80.907602455562198"/>
                    <End x="258.9147992841672" y="144.1681832200704"/>
                    <BasePoint1 x="178.91576608875704" y="112.5378928378163"/>
                    <BasePoint2 x="248.91612794460707" y="144.33119071517075"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_34" name="ReactionGlyph" reaction="Reaction_5">
          <BoundingBox>
            <Position x="246.65876129521999" y="249.19451577136078"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="258.25642736032808" y="254.93077807297146"/>
                <End x="235.06109523011193" y="243.4582534697501"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_35" name="MetabReferenceGlyph" metaboliteGlyph="Layout_6" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="258.25642736032808" y="254.93077807297146"/>
                    <End x="338.15264057625058" y="297.99882874521984"/>
                    <BasePoint1 x="281.45175949054419" y="266.40330267619282"/>
                    <BasePoint2 x="315.60103306595141" y="285.06919686151167"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_36" name="MetabReferenceGlyph" metaboliteGlyph="Layout_4" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="235.06109523011193" y="243.4582534697501"/>
                    <End x="144.19931927408939" y="202.21912282643183"/>
                    <BasePoint1 x="211.86576309989582" y="231.98572886652875"/>
                    <BasePoint2 x="172.23370815443857" y="214.23429469567495"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_37" name="ReactionGlyph" reaction="Reaction_3">
          <BoundingBox>
            <Position x="187.92342291414718" y="101.40811582045181"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="199.32135535422432" y="94.892972928002138"/>
                <End x="176.52549047407004" y="107.92325871290149"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_38" name="MetabReferenceGlyph" metaboliteGlyph="Layout_3" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="199.32135535422432" y="94.892972928002138"/>
                    <End x="334.15796807563231" y="66.212160808980457"/>
                    <BasePoint1 x="222.11722023437861" y="81.862687143102789"/>
                    <BasePoint2 x="283.83656037504403" y="70.779852529816793"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_39" name="MetabReferenceGlyph" metaboliteGlyph="Layout_4" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="176.52549047407004" y="107.92325871290149"/>
                    <End x="132.63444279442081" y="174.8609842456934"/>
                    <BasePoint1 x="153.72962559391576" y="120.95354449780083"/>
                    <BasePoint2 x="137.48306797412971" y="151.16483581797195"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_40" name="MetabReferenceGlyph" metaboliteGlyph="Layout_5" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="98.916732893346875" y="76.959709752426789"/>
                    <End x="182.96086298437118" y="92.726353387432724"/>
                    <BasePoint1 x="140.93879793885901" y="84.843031569929764"/>
                    <BasePoint2 x="177.99830305459517" y="84.044590954413636"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_41" name="ReactionGlyph" reaction="Reaction_7">
          <BoundingBox>
            <Position x="142.3005426262057" y="289.04311720373164"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="135.30321560488011" y="268.11295032518018"/>
                <End x="149.29786964753129" y="309.9732840822831"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_42" name="MetabReferenceGlyph" metaboliteGlyph="Layout_5" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="135.30321560488011" y="268.11295032518018"/>
                    <End x="85.061693261938174" y="92.39531770338462"/>
                    <BasePoint1 x="121.30856156222895" y="226.25261656807726"/>
                    <BasePoint2 x="99.68646390142078" y="148.85888369645522"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_43" name="MetabReferenceGlyph" metaboliteGlyph="Layout_12" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="149.29786964753129" y="309.9732840822831"/>
                    <End x="217.64346780589466" y="486.49865527441386"/>
                    <BasePoint1 x="163.29252369018243" y="351.83361783938602"/>
                    <BasePoint2 x="193.96665925870133" y="429.63121999617567"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
      </ListOfReactionGlyphs>
      <ListOfTextGlyphs>
        <TextGlyph key="Layout_44" name="TextGlyph" graphicalObject="Layout_3" originOfText="Metabolite_0">
          <BoundingBox>
            <Position x="339.15796807563231" y="49.558126396700011"/>
            <Dimensions width="24" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_45" name="TextGlyph" graphicalObject="Layout_4" originOfText="Metabolite_2">
          <BoundingBox>
            <Position x="111.19931927408939" y="179.8609842456934"/>
            <Dimensions width="24" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_46" name="TextGlyph" graphicalObject="Layout_5" originOfText="Metabolite_3">
          <BoundingBox>
            <Position x="65.916732893346875" y="59.395317703384627"/>
            <Dimensions width="24" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_47" name="TextGlyph" graphicalObject="Layout_6" originOfText="Metabolite_1">
          <BoundingBox>
            <Position x="343.15264057625058" y="294.58623027790691"/>
            <Dimensions width="24" height="24"/>
          </BoundingBox>
        </TextGlyph>
      </ListOfTextGlyphs>
    </Layout>
  </ListOfLayouts>
  <SBMLReference file="McLean1991.xml">
    <SBMLMap SBMLid="Blood" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="E" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="E_Death" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="L" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="L_Death" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="L_to_E" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="R" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="R_Birth" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="R_Death" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="R_to_E" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="R_to_L" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="Rate_Law_for_R_Birth" COPASIkey="Function_40"/>
    <SBMLMap SBMLid="Rate_Law_for_R_to_E" COPASIkey="Function_41"/>
    <SBMLMap SBMLid="Rate_Law_for_R_to_L" COPASIkey="Function_42"/>
    <SBMLMap SBMLid="Rate_Law_for_V_Creation" COPASIkey="Function_43"/>
    <SBMLMap SBMLid="T" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="V" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="V_Creation" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="V_Death" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="alpha" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="beta" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="delta" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="k" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="p" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="pi" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="sigma" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="u" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="z" COPASIkey="ModelValue_9"/>
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
<dcterms:W3CDTF>2020-10-15T13:24:26Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2020-10-15T13:24:26Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        s
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
<dcterms:W3CDTF>2020-10-15T13:24:26Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2020-10-15T13:24:26Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        #
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
<dcterms:W3CDTF>2020-10-15T13:24:26Z</dcterms:W3CDTF>
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
