<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.22 (Build 170) (http://www.copasi.org) at 2018-06-27 09:30:47 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="22" versionDevel="170" copasiSourcesModified="0">
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
        <ParameterDescription key="FunctionParameter_81" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_79" name="substrate" order="1" role="substrate"/>
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
        <ParameterDescription key="FunctionParameter_62" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_39" name="substrate" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_67" name="k2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_71" name="product" order="3" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_0" name="Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mol" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_0">
    <bqbiol:hasProperty rdf:resource="urn:miriam:efo:1000014"/>
    <bqbiol:hasTaxon>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/taxonomy/9606"/>
      </rdf:Bag>
    </bqbiol:hasTaxon>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:25839182"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-06-01T14:22:14Z</dcterms:W3CDTF>
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
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:biomodels.db:BIOMD0000000362"/>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0007596"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/bto/BTO:0000131"/>
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="compartment_1" simulationType="fixed" dimensionality="3">
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="TF" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P13726" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="TF_VII" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P08709" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P13726" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="VII" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P08709" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="TF_VIIa" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P08709" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P13726" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="VIIa" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-04T12:25:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P08709" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="Xa" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-04T10:58:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P00742" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="IIa" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P00734" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="TF_VIIa_X" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P00742" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P08709" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P13726" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="X" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-04T10:58:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P00742" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="TF_VIIa_Xa" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P00742" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P08709" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P13726" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="IX" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_10">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P00740" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="TF_VIIa_IX" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P00740" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P08709" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P13726" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="IXa" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_12">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P00740" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="II" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P00734" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="VIII" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_14">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P00451" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="VIIIa" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_15">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P00451" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_16" name="IXa_VIIIa" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_16">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P00451" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P00740" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="IXa_VIIIa_X" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_17">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P00451" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P00740" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P00742" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_18" name="VIIIa1_L" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_18">
    <CopasiMT:isPartOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P00451" />
      </rdf:Bag>
    </CopasiMT:isPartOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="VIIIa2" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_19">
    <CopasiMT:isPartOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P00451" />
      </rdf:Bag>
    </CopasiMT:isPartOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_20" name="V" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_20">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P12259" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_21" name="Va" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-04T11:01:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P12259" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_22" name="Xa_Va" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_22">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P00742" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P12259" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_23" name="Xa_Va_II" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_23">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P00734" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P00742" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P12259" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_24" name="mIIa" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-04T11:00:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P00734" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_25" name="TFPI" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_25">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P10646" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_26" name="Xa_TFPI" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_26">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P00742" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P10646" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_27" name="TF_VIIa_Xa_TFPI" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_27">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P00742" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P08709" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P10646" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P13726" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_28" name="ATIII" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_28">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P01008" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_29" name="Xa_ATIII" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_29">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P00742" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P01008" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_30" name="mIIa_ATIII" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_30">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P00734" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P01008" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_31" name="IXa_ATIII" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_31">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P00740" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P01008" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_32" name="IIa_ATIII" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_32">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P00734" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P01008" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_33" name="TF_VIIa_ATIII" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_33">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P01008" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P08709" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P13726" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="k01" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:sbo:SBO:0000038" />
      </rdf:Bag>
    </bqmodel:is>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-04T14:22:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="k02" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_1">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:sbo:SBO:0000036" />
      </rdf:Bag>
    </bqmodel:is>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-04T14:33:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="k03" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_2">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:sbo:SBO:0000038" />
      </rdf:Bag>
    </bqmodel:is>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-04T14:33:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="k04" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_3">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:sbo:SBO:0000036" />
      </rdf:Bag>
    </bqmodel:is>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-04T14:33:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="k05" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_4">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:sbo:SBO:0000036" />
      </rdf:Bag>
    </bqmodel:is>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-04T14:33:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="k06" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_5">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:sbo:SBO:0000036"/>
      </rdf:Bag>
    </bqmodel:is>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-04T14:33:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="k07" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_6">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:sbo:SBO:0000036" />
      </rdf:Bag>
    </bqmodel:is>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-04T14:33:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="k08" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_7">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:sbo:SBO:0000038" />
      </rdf:Bag>
    </bqmodel:is>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-04T14:33:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="k09" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_8">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:sbo:SBO:0000036" />
      </rdf:Bag>
    </bqmodel:is>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-04T14:34:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="k10" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_9">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:sbo:SBO:0000035" />
      </rdf:Bag>
    </bqmodel:is>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-04T14:22:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="k11" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_10">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:sbo:SBO:0000038" />
      </rdf:Bag>
    </bqmodel:is>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-04T14:23:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="k12" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_11">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:sbo:SBO:0000036" />
      </rdf:Bag>
    </bqmodel:is>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-04T14:32:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="k13" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_12">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:sbo:SBO:0000038" />
      </rdf:Bag>
    </bqmodel:is>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-04T14:32:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="k14" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_13">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:sbo:SBO:0000036" />
      </rdf:Bag>
    </bqmodel:is>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-04T14:32:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="k15" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_14">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:sbo:SBO:0000035" />
      </rdf:Bag>
    </bqmodel:is>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-04T14:32:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="k16" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_15">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:sbo:SBO:0000036"/>
      </rdf:Bag>
    </bqmodel:is>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-04T14:24:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="k17" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_16">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:sbo:SBO:0000036" />
      </rdf:Bag>
    </bqmodel:is>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-04T14:32:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="k18" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_17">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:sbo:SBO:0000038" />
      </rdf:Bag>
    </bqmodel:is>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-04T14:32:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_18" name="k19" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_18">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:sbo:SBO:0000036" />
      </rdf:Bag>
    </bqmodel:is>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-04T14:32:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_19" name="k20" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_19">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:sbo:SBO:0000038" />
      </rdf:Bag>
    </bqmodel:is>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-04T14:33:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_20" name="k21" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_20">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:sbo:SBO:0000036" />
      </rdf:Bag>
    </bqmodel:is>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-04T14:33:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_21" name="k22" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_21">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:sbo:SBO:0000035" />
      </rdf:Bag>
    </bqmodel:is>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-04T14:33:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_22" name="k23" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_22">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:sbo:SBO:0000039" />
      </rdf:Bag>
    </bqmodel:is>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-04T14:33:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_23" name="k24" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_23">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:sbo:SBO:0000035" />
      </rdf:Bag>
    </bqmodel:is>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-04T14:33:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_24" name="k25" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_24">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:sbo:SBO:0000035" />
      </rdf:Bag>
    </bqmodel:is>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-04T14:33:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_25" name="k26" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_25">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:sbo:SBO:0000036" />
      </rdf:Bag>
    </bqmodel:is>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-04T14:33:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_26" name="k27" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_26">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:sbo:SBO:0000038" />
      </rdf:Bag>
    </bqmodel:is>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-04T14:33:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_27" name="k28" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_27">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:sbo:SBO:0000036" />
      </rdf:Bag>
    </bqmodel:is>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-04T14:33:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_28" name="k29" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_28">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:sbo:SBO:0000038" />
      </rdf:Bag>
    </bqmodel:is>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-04T14:33:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_29" name="k30" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_29">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:sbo:SBO:0000036" />
      </rdf:Bag>
    </bqmodel:is>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-04T14:33:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_30" name="k31" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_30">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:sbo:SBO:0000035" />
      </rdf:Bag>
    </bqmodel:is>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-04T14:33:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_31" name="k32" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_31">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:sbo:SBO:0000036" />
      </rdf:Bag>
    </bqmodel:is>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-04T11:02:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_32" name="k33" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_32">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:sbo:SBO:0000038" />
      </rdf:Bag>
    </bqmodel:is>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-04T14:33:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_33" name="k34" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_33">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:sbo:SBO:0000036" />
      </rdf:Bag>
    </bqmodel:is>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-04T14:33:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_34" name="k35" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_34">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:sbo:SBO:0000038" />
      </rdf:Bag>
    </bqmodel:is>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-04T14:33:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_35" name="k36" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_35">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:sbo:SBO:0000036" />
      </rdf:Bag>
    </bqmodel:is>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-04T14:33:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_36" name="k37" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_36">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:sbo:SBO:0000036" />
      </rdf:Bag>
    </bqmodel:is>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-04T14:33:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_37" name="k38" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_37">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:sbo:SBO:0000036" />
      </rdf:Bag>
    </bqmodel:is>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-04T11:02:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_38" name="k39" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_38">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:sbo:SBO:0000036" />
      </rdf:Bag>
    </bqmodel:is>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-04T14:33:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_39" name="k40" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_39">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:sbo:SBO:0000036" />
      </rdf:Bag>
    </bqmodel:is>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-04T14:33:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_40" name="k41" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_40">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:sbo:SBO:0000036" />
      </rdf:Bag>
    </bqmodel:is>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-04T14:25:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_41" name="k42" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_41">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:sbo:SBO:0000036" />
      </rdf:Bag>
    </bqmodel:is>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-04T14:33:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_42" name="IIa+1.2mIIa" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-04T14:22:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1],Vector=Metabolites[IIa],Reference=Concentration>+1.2*&lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1],Vector=Metabolites[mIIa],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_43" name="k43" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-04T14:25:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000036" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_44" name="k44" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-04T14:25:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000036" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_45" name="minutes" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-04T14:20:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Reference=Time>/60
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_46" name="k05*" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-27T09:53:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[f(pH)],Reference=Value>*&lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k05],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_47" name="k06*" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-27T09:54:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[f(pH)],Reference=Value>*&lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k06],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_48" name="k07*" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-27T09:54:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[f(pH)],Reference=Value>*&lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k07],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_49" name="k10*" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-27T09:54:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[f(pH)],Reference=Value>*&lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k10],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_50" name="k15*" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_50">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-27T09:54:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[f(pH)],Reference=Value>*&lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k15],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_51" name="k16*" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-27T09:55:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[f(pH)],Reference=Value>*&lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k16],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_52" name="k17*" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_52">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-27T09:56:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[f(pH)],Reference=Value>*&lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k17],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_53" name="k22*" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_53">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-27T09:56:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[f(pH)],Reference=Value>*&lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k22],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_54" name="k26*" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_54">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-27T09:56:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[f(pH)],Reference=Value>*&lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k26],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_55" name="k31*" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_55">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-27T09:57:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[f(pH)],Reference=Value>*&lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k31],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_56" name="k32*" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_56">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-27T09:57:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[f(pH)],Reference=Value>*&lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k32],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_57" name="k43*" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_57">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-27T09:57:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[f(pH)],Reference=Value>*&lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k43],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_58" name="k44*" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_58">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-27T09:57:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[f(pH)],Reference=Value>*&lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k44],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_59" name="f(pH)" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_60" name="TAT" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_60">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-27T10:25:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1],Vector=Metabolites[IIa_ATIII],Reference=Concentration>+0*&lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1],Vector=Metabolites[mIIa_ATIII],Reference=Concentration>
        </Expression>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="R01" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-27T09:58:17Z</dcterms:W3CDTF>
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
          <Constant key="Parameter_4999" name="k1" value="3.2e+06"/>
          <Constant key="Parameter_5000" name="k2" value="0.0031"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_62">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_39">
              <SourceParameter reference="Metabolite_0"/>
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_67">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_71">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="R02" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-27T10:08:29Z</dcterms:W3CDTF>
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
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5001" name="k1" value="2.3e+07"/>
          <Constant key="Parameter_5002" name="k2" value="0.0031"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_62">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_39">
              <SourceParameter reference="Metabolite_0"/>
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_67">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_71">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="R03" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-27T10:08:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5003" name="k1" value="440000"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_3"/>
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="R04" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-27T10:08:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5004" name="k1" value="1.3e+07"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_5"/>
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="R05" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-27T10:08:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5005" name="k1" value="23000"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_6"/>
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="R06" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-27T10:08:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5006" name="k1" value="2.5e+07"/>
          <Constant key="Parameter_4994" name="k2" value="1.05"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_62">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_39">
              <SourceParameter reference="Metabolite_3"/>
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_67">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_71">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="R07" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-27T10:08:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4995" name="k1" value="2.2e+07"/>
          <Constant key="Parameter_4996" name="k2" value="19"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_62">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_39">
              <SourceParameter reference="Metabolite_3"/>
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_67">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_71">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="R08" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-04T14:08:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4997" name="k1" value="1e+07"/>
          <Constant key="Parameter_4998" name="k2" value="2.4"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_62">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_39">
              <SourceParameter reference="Metabolite_3"/>
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_67">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_71">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="R09" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-27T10:08:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4968" name="k1" value="7500"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_5"/>
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="R10" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-27T10:08:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4969" name="k1" value="2e+07"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_52"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_6"/>
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="R11" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-27T10:09:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4970" name="k1" value="1e+07"/>
          <Constant key="Parameter_4971" name="k2" value="0.005"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_62">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_39">
              <SourceParameter reference="Metabolite_12"/>
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_67">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_71">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="R12" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-27T10:09:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4972" name="k1" value="1e+08"/>
          <Constant key="Parameter_4973" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_62">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_39">
              <SourceParameter reference="Metabolite_16"/>
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_67">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_71">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="R13" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-27T10:09:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4974" name="k1" value="0.006"/>
          <Constant key="Parameter_4975" name="k2" value="22000"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_62">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_39">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_67">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_71">
              <SourceParameter reference="Metabolite_18"/>
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="R14" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-27T10:09:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4976" name="k1" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="R15" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-27T10:09:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4977" name="k1" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="R16" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-27T10:09:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4978" name="k1" value="2e+07"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_6"/>
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="R17" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-27T10:09:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4979" name="k1" value="4e+08"/>
          <Constant key="Parameter_4980" name="k2" value="0.2"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_62">
              <SourceParameter reference="ModelValue_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_39">
              <SourceParameter reference="Metabolite_5"/>
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_67">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_71">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="R18" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-27T10:09:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4981" name="k1" value="1e+08"/>
          <Constant key="Parameter_4982" name="k2" value="103"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_62">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_39">
              <SourceParameter reference="Metabolite_22"/>
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_67">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_71">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="R19" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-27T10:10:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_24" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4983" name="k1" value="2.3e+08"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_56"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_24"/>
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="R20" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-27T10:10:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4984" name="k1" value="900000"/>
          <Constant key="Parameter_4985" name="k2" value="0.00036"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_62">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_39">
              <SourceParameter reference="Metabolite_5"/>
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_67">
              <SourceParameter reference="ModelValue_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_71">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="R21" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-27T10:10:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4986" name="k1" value="3.2e+08"/>
          <Constant key="Parameter_4987" name="k2" value="0.00011"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_62">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_39">
              <SourceParameter reference="Metabolite_9"/>
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_67">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_71">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="R22" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4988" name="k1" value="5e+07"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_3"/>
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="R23" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4989" name="k1" value="4200"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_5"/>
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="R24" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_24" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4990" name="k1" value="7100"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_24"/>
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="R25" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4991" name="k1" value="490"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_12"/>
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="R26" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-27T10:10:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4992" name="k1" value="7100"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_6"/>
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_26" name="R27" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-27T10:10:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4993" name="k1" value="230"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_3"/>
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_27" name="R06b" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-27T10:09:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5007" name="k1" value="6"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_28" name="R08b" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-27T10:09:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5008" name="k1" value="1.8"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_29" name="R12b" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-27T10:09:01Z</dcterms:W3CDTF>
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
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5009" name="k1" value="8.2"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_53"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_30" name="R18b" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-27T10:09:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
          <Product metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5010" name="k1" value="63.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_31" name="R28" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-04T10:56:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5011" name="k1" value="5700"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_57"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_12"/>
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_32" name="R29" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-04T10:56:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_24" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_24" stoichiometry="1"/>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5012" name="k1" value="3e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_24"/>
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1],Vector=Metabolites[TF]" value="3011070428500" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1],Vector=Metabolites[TF_VII]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1],Vector=Metabolites[VII]" value="6022140857000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1],Vector=Metabolites[TF_VIIa]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1],Vector=Metabolites[VIIa]" value="60221408570000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1],Vector=Metabolites[Xa]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1],Vector=Metabolites[IIa]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1],Vector=Metabolites[TF_VIIa_X]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1],Vector=Metabolites[X]" value="96354253712000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1],Vector=Metabolites[TF_VIIa_Xa]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1],Vector=Metabolites[IX]" value="54199267713000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1],Vector=Metabolites[TF_VIIa_IX]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1],Vector=Metabolites[IXa]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1],Vector=Metabolites[II]" value="8.4309971998e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1],Vector=Metabolites[VIII]" value="421549859990000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1],Vector=Metabolites[VIIIa]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1],Vector=Metabolites[IXa_VIIIa]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1],Vector=Metabolites[IXa_VIIIa_X]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1],Vector=Metabolites[VIIIa1_L]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1],Vector=Metabolites[VIIIa2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1],Vector=Metabolites[V]" value="12044281714000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1],Vector=Metabolites[Va]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1],Vector=Metabolites[Xa_Va]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1],Vector=Metabolites[Xa_Va_II]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1],Vector=Metabolites[mIIa]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1],Vector=Metabolites[TFPI]" value="1505535214250000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1],Vector=Metabolites[Xa_TFPI]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1],Vector=Metabolites[TF_VIIa_Xa_TFPI]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1],Vector=Metabolites[ATIII]" value="2.04752789138e+18" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1],Vector=Metabolites[Xa_ATIII]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1],Vector=Metabolites[mIIa_ATIII]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1],Vector=Metabolites[IXa_ATIII]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1],Vector=Metabolites[IIa_ATIII]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Compartments[compartment_1],Vector=Metabolites[TF_VIIa_ATIII]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k01]" value="0.0030999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k02]" value="3200000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k03]" value="0.0030999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k04]" value="23000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k05]" value="440000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k06]" value="13000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k07]" value="23000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k08]" value="1.05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k09]" value="25000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k10]" value="6" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k11]" value="19" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k12]" value="22000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k13]" value="2.3999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k14]" value="10000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k15]" value="1.8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k16]" value="7500" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k17]" value="20000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k18]" value="0.0050000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k19]" value="10000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k20]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k21]" value="100000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k22]" value="8.1999999999999993" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k23]" value="22000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k24]" value="0.0060000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k25]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k26]" value="20000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k27]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k28]" value="400000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k29]" value="103" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k30]" value="100000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k31]" value="63.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k32]" value="230000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k33]" value="0.00036000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k34]" value="900000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k35]" value="0.00011" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k36]" value="320000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k37]" value="50000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k38]" value="4200" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k39]" value="7100" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k40]" value="490" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k41]" value="7100" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k42]" value="230" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[IIa+1.2mIIa]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k43]" value="5700" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k44]" value="3000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[minutes]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k05*]" value="440000" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k06*]" value="13000000" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k07*]" value="23000" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k10*]" value="6" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k15*]" value="1.8" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k16*]" value="7500" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k17*]" value="20000000" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k22*]" value="8.1999999999999993" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k26*]" value="20000000" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k31*]" value="63.5" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k32*]" value="230000000" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k43*]" value="5700" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k44*]" value="3000000" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[f(pH)]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[TAT]" value="0" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R01]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R01],ParameterGroup=Parameters,Parameter=k1" value="3200000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k02],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R01],ParameterGroup=Parameters,Parameter=k2" value="0.0030999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k01],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R02]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R02],ParameterGroup=Parameters,Parameter=k1" value="23000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k04],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R02],ParameterGroup=Parameters,Parameter=k2" value="0.0030999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k03],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R03]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R03],ParameterGroup=Parameters,Parameter=k1" value="440000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k05*],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R04]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R04],ParameterGroup=Parameters,Parameter=k1" value="13000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k06*],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R05]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R05],ParameterGroup=Parameters,Parameter=k1" value="23000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k07*],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R06]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R06],ParameterGroup=Parameters,Parameter=k1" value="25000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k09],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R06],ParameterGroup=Parameters,Parameter=k2" value="1.05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k08],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R07]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R07],ParameterGroup=Parameters,Parameter=k1" value="22000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k12],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R07],ParameterGroup=Parameters,Parameter=k2" value="19" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k11],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R08]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R08],ParameterGroup=Parameters,Parameter=k1" value="10000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k14],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R08],ParameterGroup=Parameters,Parameter=k2" value="2.3999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R09]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R09],ParameterGroup=Parameters,Parameter=k1" value="7500" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k16*],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R10]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R10],ParameterGroup=Parameters,Parameter=k1" value="20000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k17*],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R11]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R11],ParameterGroup=Parameters,Parameter=k1" value="10000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k19],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R11],ParameterGroup=Parameters,Parameter=k2" value="0.0050000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k18],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R12]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R12],ParameterGroup=Parameters,Parameter=k1" value="100000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k21],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R12],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k20],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R13],ParameterGroup=Parameters,Parameter=k1" value="0.0060000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k24],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R13],ParameterGroup=Parameters,Parameter=k2" value="22000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k23],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R14]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R14],ParameterGroup=Parameters,Parameter=k1" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k25],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R15]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R15],ParameterGroup=Parameters,Parameter=k1" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k25],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R16]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R16],ParameterGroup=Parameters,Parameter=k1" value="20000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k26*],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R17]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R17],ParameterGroup=Parameters,Parameter=k1" value="400000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k28],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R17],ParameterGroup=Parameters,Parameter=k2" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k27],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R18]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R18],ParameterGroup=Parameters,Parameter=k1" value="100000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k30],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R18],ParameterGroup=Parameters,Parameter=k2" value="103" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k29],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R19]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R19],ParameterGroup=Parameters,Parameter=k1" value="230000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k32*],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R20]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R20],ParameterGroup=Parameters,Parameter=k1" value="900000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k34],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R20],ParameterGroup=Parameters,Parameter=k2" value="0.00036000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k33],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R21]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R21],ParameterGroup=Parameters,Parameter=k1" value="320000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k36],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R21],ParameterGroup=Parameters,Parameter=k2" value="0.00011" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k35],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R22]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R22],ParameterGroup=Parameters,Parameter=k1" value="50000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k37],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R23]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R23],ParameterGroup=Parameters,Parameter=k1" value="4200" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k38],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R24]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R24],ParameterGroup=Parameters,Parameter=k1" value="7100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k39],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R25]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R25],ParameterGroup=Parameters,Parameter=k1" value="490" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k40],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R26]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R26],ParameterGroup=Parameters,Parameter=k1" value="7100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k41],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R27]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R27],ParameterGroup=Parameters,Parameter=k1" value="230" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k42],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R06b]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R06b],ParameterGroup=Parameters,Parameter=k1" value="6" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k10*],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R08b]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R08b],ParameterGroup=Parameters,Parameter=k1" value="1.8" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k15*],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R12b]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R12b],ParameterGroup=Parameters,Parameter=k1" value="8.1999999999999993" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k22*],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R18b]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R18b],ParameterGroup=Parameters,Parameter=k1" value="63.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k31*],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R28]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R28],ParameterGroup=Parameters,Parameter=k1" value="5700" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k43*],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R29]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Reactions[R29],ParameterGroup=Parameters,Parameter=k1" value="3000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[k44*],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_28"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_22"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_24"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_26"/>
      <StateTemplateVariable objectReference="Metabolite_18"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_30"/>
      <StateTemplateVariable objectReference="Metabolite_27"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_31"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_32"/>
      <StateTemplateVariable objectReference="Metabolite_20"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_29"/>
      <StateTemplateVariable objectReference="Metabolite_25"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_33"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="ModelValue_42"/>
      <StateTemplateVariable objectReference="ModelValue_45"/>
      <StateTemplateVariable objectReference="ModelValue_46"/>
      <StateTemplateVariable objectReference="ModelValue_47"/>
      <StateTemplateVariable objectReference="ModelValue_48"/>
      <StateTemplateVariable objectReference="ModelValue_49"/>
      <StateTemplateVariable objectReference="ModelValue_50"/>
      <StateTemplateVariable objectReference="ModelValue_51"/>
      <StateTemplateVariable objectReference="ModelValue_52"/>
      <StateTemplateVariable objectReference="ModelValue_53"/>
      <StateTemplateVariable objectReference="ModelValue_54"/>
      <StateTemplateVariable objectReference="ModelValue_55"/>
      <StateTemplateVariable objectReference="ModelValue_56"/>
      <StateTemplateVariable objectReference="ModelValue_57"/>
      <StateTemplateVariable objectReference="ModelValue_58"/>
      <StateTemplateVariable objectReference="ModelValue_60"/>
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
      <StateTemplateVariable objectReference="ModelValue_36"/>
      <StateTemplateVariable objectReference="ModelValue_37"/>
      <StateTemplateVariable objectReference="ModelValue_38"/>
      <StateTemplateVariable objectReference="ModelValue_39"/>
      <StateTemplateVariable objectReference="ModelValue_40"/>
      <StateTemplateVariable objectReference="ModelValue_41"/>
      <StateTemplateVariable objectReference="ModelValue_43"/>
      <StateTemplateVariable objectReference="ModelValue_44"/>
      <StateTemplateVariable objectReference="ModelValue_59"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 0 0 0 2.04752789138e+18 6022140857000000 96354253712000000 0 0 0 0 0 0 0 3011070428500 0 0 0 8.4309971998e+17 0 0 0 54199267713000000 0 0 0 0 12044281714000000 421549859990000 0 0 1505535214250000 60221408570000 0 0 0 0 440000 13000000 23000 6 1.8 7500 20000000 8.1999999999999993 20000000 63.5 230000000 5700 3000000 0 1 0.0030999999999999999 3200000 0.0030999999999999999 23000000 440000 13000000 23000 1.05 25000000 6 19 22000000 2.3999999999999999 10000000 1.8 7500 20000000 0.0050000000000000001 10000000 0.001 100000000 8.1999999999999993 22000 0.0060000000000000001 0.001 20000000 0.20000000000000001 400000000 103 100000000 63.5 230000000 0.00036000000000000002 900000 0.00011 320000000 50000000 4200 7100 490 7100 230 5700 3000000 1 
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
        <Parameter name="StepNumber" type="unsignedInteger" value="4800"/>
        <Parameter name="StepSize" type="float" value="1"/>
        <Parameter name="Duration" type="float" value="4800"/>
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
          <ParameterGroup name="ScanItem">
            <Parameter name="Maximum" type="float" value="1"/>
            <Parameter name="Minimum" type="float" value="0.25"/>
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[f(pH)],Reference=InitialValue"/>
            <Parameter name="Type" type="unsignedInteger" value="1"/>
            <Parameter name="log" type="bool" value="0"/>
          </ParameterGroup>
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
          <Parameter name="Threshold" type="unsignedInteger" value="5"/>
          <Parameter name="Weight" type="unsignedFloat" value="1"/>
        </ParameterGroup>
      </Problem>
      <Method name="Evolutionary Programming" type="EvolutionaryProgram">
        <Parameter name="Number of Generations" type="unsignedInteger" value="200"/>
        <Parameter name="Population Size" type="unsignedInteger" value="20"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
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
        <Parameter name="Steady-State" type="key" value="Task_12"/>
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
    <PlotSpecification name="Figure 2C Thrombin" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[IIa+1.2mIIa]|Values[minutes]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[minutes],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[IIa+1.2mIIa],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Figure 2D TAT" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[TAT]|Values[minutes]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[minutes],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH,Vector=Values[TAT],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="Mitrophanov2011.xml">
    <SBMLMap SBMLid="ATIII" COPASIkey="Metabolite_28"/>
    <SBMLMap SBMLid="II" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="IIa" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="IIa_ATIII" COPASIkey="Metabolite_32"/>
    <SBMLMap SBMLid="IIa_plus_1_2mIIa" COPASIkey="ModelValue_42"/>
    <SBMLMap SBMLid="IX" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="IXa" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="IXa_ATIII" COPASIkey="Metabolite_31"/>
    <SBMLMap SBMLid="IXa_VIIIa" COPASIkey="Metabolite_16"/>
    <SBMLMap SBMLid="IXa_VIIIa_X" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="R1" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="R10" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="R11" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="R12" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="R12b" COPASIkey="Reaction_29"/>
    <SBMLMap SBMLid="R13" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="R14" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="R15" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="R16" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="R17" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="R18" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="R18b" COPASIkey="Reaction_30"/>
    <SBMLMap SBMLid="R19" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="R2" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="R20" COPASIkey="Reaction_19"/>
    <SBMLMap SBMLid="R21" COPASIkey="Reaction_20"/>
    <SBMLMap SBMLid="R22" COPASIkey="Reaction_21"/>
    <SBMLMap SBMLid="R23" COPASIkey="Reaction_22"/>
    <SBMLMap SBMLid="R24" COPASIkey="Reaction_23"/>
    <SBMLMap SBMLid="R25" COPASIkey="Reaction_24"/>
    <SBMLMap SBMLid="R26" COPASIkey="Reaction_25"/>
    <SBMLMap SBMLid="R27" COPASIkey="Reaction_26"/>
    <SBMLMap SBMLid="R28" COPASIkey="Reaction_31"/>
    <SBMLMap SBMLid="R29" COPASIkey="Reaction_32"/>
    <SBMLMap SBMLid="R3" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="R4" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="R5" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="R6" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="R6b" COPASIkey="Reaction_27"/>
    <SBMLMap SBMLid="R7" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="R8" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="R8b" COPASIkey="Reaction_28"/>
    <SBMLMap SBMLid="R9" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="TF" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="TFPI" COPASIkey="Metabolite_25"/>
    <SBMLMap SBMLid="TF_VII" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="TF_VIIa" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="TF_VIIa_ATIII" COPASIkey="Metabolite_33"/>
    <SBMLMap SBMLid="TF_VIIa_IX" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="TF_VIIa_X" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="TF_VIIa_Xa" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="TF_VIIa_Xa_TFPI" COPASIkey="Metabolite_27"/>
    <SBMLMap SBMLid="V" COPASIkey="Metabolite_20"/>
    <SBMLMap SBMLid="VII" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="VIII" COPASIkey="Metabolite_14"/>
    <SBMLMap SBMLid="VIIIa" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="VIIIa1_L" COPASIkey="Metabolite_18"/>
    <SBMLMap SBMLid="VIIIa2" COPASIkey="Metabolite_19"/>
    <SBMLMap SBMLid="VIIa" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="Va" COPASIkey="Metabolite_21"/>
    <SBMLMap SBMLid="X" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="Xa" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="Xa_ATIII" COPASIkey="Metabolite_29"/>
    <SBMLMap SBMLid="Xa_TFPI" COPASIkey="Metabolite_26"/>
    <SBMLMap SBMLid="Xa_Va" COPASIkey="Metabolite_22"/>
    <SBMLMap SBMLid="Xa_Va_II" COPASIkey="Metabolite_23"/>
    <SBMLMap SBMLid="compartment_1" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="k1" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="k10" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="k11" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="k12" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="k13" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="k14" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="k15" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="k16" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="k17" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="k18" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="k19" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="k2" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="k20" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="k21" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="k22" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="k23" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="k24" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="k25" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="k26" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="k27" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="k28" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="k29" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="k3" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="k30" COPASIkey="ModelValue_29"/>
    <SBMLMap SBMLid="k31" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="k32" COPASIkey="ModelValue_31"/>
    <SBMLMap SBMLid="k33" COPASIkey="ModelValue_32"/>
    <SBMLMap SBMLid="k34" COPASIkey="ModelValue_33"/>
    <SBMLMap SBMLid="k35" COPASIkey="ModelValue_34"/>
    <SBMLMap SBMLid="k36" COPASIkey="ModelValue_35"/>
    <SBMLMap SBMLid="k37" COPASIkey="ModelValue_36"/>
    <SBMLMap SBMLid="k38" COPASIkey="ModelValue_37"/>
    <SBMLMap SBMLid="k39" COPASIkey="ModelValue_38"/>
    <SBMLMap SBMLid="k4" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="k40" COPASIkey="ModelValue_39"/>
    <SBMLMap SBMLid="k41" COPASIkey="ModelValue_40"/>
    <SBMLMap SBMLid="k42" COPASIkey="ModelValue_41"/>
    <SBMLMap SBMLid="k43" COPASIkey="ModelValue_43"/>
    <SBMLMap SBMLid="k44" COPASIkey="ModelValue_44"/>
    <SBMLMap SBMLid="k5" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="k6" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="k7" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="k8" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="k9" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="mIIa" COPASIkey="Metabolite_24"/>
    <SBMLMap SBMLid="mIIa_ATIII" COPASIkey="Metabolite_30"/>
    <SBMLMap SBMLid="minutes" COPASIkey="ModelValue_45"/>
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
  </ListOfUnitDefinitions>
</COPASI>
