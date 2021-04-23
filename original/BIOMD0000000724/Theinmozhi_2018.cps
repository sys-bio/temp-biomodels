<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.23 (Build 184) (http://www.copasi.org) at 2018-12-04 16:30:14 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="23" versionDevel="184" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_13" name="Mass action (irreversible)" type="MassAction" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T13:25:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
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
    <Function key="Function_14" name="Mass action (reversible)" type="MassAction" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T16:02:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
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
    <Function key="Function_54" name="Equation for PD1 activation" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_54">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T13:40:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        ((kcat*Enzyme*Substrate)/(Km+Substrate))*(1-((X1+X2)/(Y1*k)))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_404" name="kcat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_403" name="Enzyme" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_402" name="Substrate" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_401" name="Km" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_400" name="X1" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_399" name="X2" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_398" name="Y1" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_397" name="k" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="Equation for Enzymatic Dephosphorylation" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_55">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T14:22:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        ka*Enzyme*Substrate
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_389" name="ka" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_390" name="Enzyme" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_391" name="Substrate" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="SMM Enzyme based" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_56">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T15:31:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        kcat*Enzyme*Substrate/(Km+Substrate)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_394" name="kcat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_393" name="Enzyme" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_392" name="Substrate" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_395" name="Km" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_0" name="30356330_Theinmozhi_PDL1_TCR_regulation" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="nmol" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_0">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0002418"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0002840"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0050852"/>
    <bqbiol:hasTaxon rdf:resource="urn:miriam:taxonomy:9606"/>
    <bqbiol:isPropertyOf rdf:resource="urn:miriam:mamo:MAMO:0000046"/>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>PDL-1 medaited inhibition of TCR and costimulatory signals.</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:30356330"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T11:21:29Z</dcterms:W3CDTF>
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
            <vCard:Orgname>Babraham Institute</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
    <dcterms:creator>
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
    </dcterms:creator>
    <CopasiMT:occursIn rdf:resource="urn:miriam:bto:0000782"/>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      Model Reference: 
PMID: 30356330

Model Type: 
Deterministic model using ODE.

Model Details: 
Its a Deterministic model showcasing mechanism of PDL1 induced TCR and Cd38 signaling inhibition. Model also contains the LCK activation and inactivation phenomenon dependent on the particular phosphorylation site.

Model Relevance: 
Cancer immunotherapy
Autoimmune Diseases like HIV, HPV etc.
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="Cell" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:30356330" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T11:29:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:NCIT:C12546" />
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:NCIT:C28699" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_38" name="LCKi" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_38">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:0002355" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T11:47:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P06239" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_37" name="LCKyi" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_37">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:0002355" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T13:04:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P06239" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_36" name="LCKya" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_36">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:0002220" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T13:04:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P06239" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_35" name="LCKyiya" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_35">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:0002220" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T11:47:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P06239" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_34" name="LCKpi" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_34">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:0002220" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T11:47:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P06239" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_33" name="LCKt" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T11:47:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P06239" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          {[LCKt]}-({[LCKyiya]}+{[LCKyi]}+{[LCKya]}+{[LCKpi]})
        </Comment>
        <Expression>
          &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[LCKi],Reference=Concentration>+&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[LCKya],Reference=Concentration>+&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[LCKyi],Reference=Concentration>+&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[LCKyiya],Reference=Concentration>+&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[LCKpi],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_32" name="LCKactive" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_32">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:0002220" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T11:48:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P06239" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[LCKya],Reference=Concentration>+&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[LCKyiya],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_31" name="PD1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_31">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:0002355" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T13:35:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q9NZQ7" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_30" name="PD1p1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_30">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:0002220" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-21T11:18:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q9NZQ7" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_29" name="PD1p2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_29">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:0002220" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-21T11:18:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q9NZQ7" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_28" name="CP1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_28">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:0002220" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T13:36:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q06124" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q9NZQ7" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_27" name="SHP2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T13:35:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q06124" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_26" name="CP2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_26">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:0002220" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T13:36:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q06124" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q9NZQ7" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_25" name="CPactive" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_25">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:0002220" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T13:36:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q06124" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q9NZQ7" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[CP1],Reference=Concentration>+&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[CP2],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_24" name="CD28a" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_24">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:0002220" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T16:52:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P10747" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_23" name="CD28i" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_23">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:0002355" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T16:51:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P10747" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_22" name="PI3K" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-21T10:46:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasVersion rdf:resource="urn:miriam:uniprot:P27986" />
    <CopasiMT:hasVersion rdf:resource="urn:miriam:uniprot:P42336" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_21" name="PI3Kb" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_21">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:0002220" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-21T10:46:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasVersion rdf:resource="urn:miriam:uniprot:P27986" />
    <CopasiMT:hasVersion rdf:resource="urn:miriam:uniprot:P42336" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_20" name="CD28t" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T16:51:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P10747" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          {[CD28t]}-({[CD28a]}+{[PI3Kb]})
        </Comment>
        <Expression>
          &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[CD28i],Reference=Concentration>+&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[CD28a],Reference=Concentration>+&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[PI3Kb],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="CD3a" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_19">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:0002220" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T17:01:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P20963" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_18" name="CD3i" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_18">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:0002355" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T17:02:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P20963" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="ZAP70a1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_17">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:0002220" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-21T10:58:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P43403" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_16" name="ZAP70i" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_16">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:0002355" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-21T14:29:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P20963" />
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P43403" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="ZAP70" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-21T10:47:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P43403" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="ZAP70a2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_14">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:0002220" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-21T14:30:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P43403" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="PI3Kt" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-21T10:46:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasVersion rdf:resource="urn:miriam:uniprot:P27986" />
    <CopasiMT:hasVersion rdf:resource="urn:miriam:uniprot:P42336" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[PI3K],Reference=Concentration>+&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[PI3Kb],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="ZAP70t" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-21T10:46:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P43403" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          {[ZAP70t]}-({[ZAP70i]}+{[ZAP70a1]}+{[ZAP70a2]})
        </Comment>
        <Expression>
          &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[ZAP70],Reference=Concentration>+&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[ZAP70i],Reference=Concentration>+&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[ZAP70a1],Reference=Concentration>+&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[ZAP70a2],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="LATa" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:0002220" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-21T11:58:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:O43561" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="LATi" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_10">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:0002355" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-21T11:58:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:O43561" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="LATt" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-21T10:50:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:O43561" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          {[LATt]}-({[LATa]}+{[GADSa]}+{[SLP76i]}+{[SLP76a]})
        </Comment>
        <Expression>
          &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[LATi],Reference=Concentration>+&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[LATa],Reference=Concentration>+&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[GADSa],Reference=Concentration>+&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[SLP76i],Reference=Concentration>+&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[SLP76a],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="GADS" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-21T11:52:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasVersion rdf:resource="urn:miriam:uniprot:P62993" />
    <CopasiMT:hasVersion rdf:resource="urn:miriam:uniprot:Q13588" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="SLP76" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-21T12:08:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q13094" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="SLP76i" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-21T11:40:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q13094" />
    <CopasiMT:unknown rdf:resource="urn:miriam:unknown:" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="GADSt" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-21T10:57:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasVersion rdf:resource="urn:miriam:uniprot:P62993" />
    <CopasiMT:hasVersion rdf:resource="urn:miriam:uniprot:Q13588" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          {[GADSt]}-({[GADSa]}+{[SLP76i]}+{[SLP76a]})
        </Comment>
        <Expression>
          &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[GADS],Reference=Concentration>+&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[GADSa],Reference=Concentration>+&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[SLP76i],Reference=Concentration>+&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[SLP76a],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="SLP76t" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-21T10:58:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q13094" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[SLP76],Reference=Concentration>+&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[SLP76a],Reference=Concentration>+&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[SLP76i],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="CD3t" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-21T11:17:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P20963" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          {[CD3t]}-({[CD3a]}+{[ZAP70i]}+{[ZAP70a1]}+{[ZAP70a2]})
        </Comment>
        <Expression>
          &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[CD3i],Reference=Concentration>+&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[CD3a],Reference=Concentration>+&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[ZAP70i],Reference=Concentration>+&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[ZAP70a1],Reference=Concentration>+&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[ZAP70a2],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="SLP76a" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-21T12:08:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q13094" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="GADSa" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-21T12:05:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:O43561" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P62993" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q13588" />
    <CopasiMT:hasVersion rdf:resource="urn:miriam:uniprot:P62993" />
    <CopasiMT:hasVersion rdf:resource="urn:miriam:uniprot:Q13588" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_0" name="LCKinactive" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:0002355" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-21T14:06:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P06239" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[LCKi],Reference=Concentration>+&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[LCKyi],Reference=Concentration>+&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[LCKpi],Reference=Concentration>
        </Expression>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_49" name="Kdpa,yiya" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T13:05:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          2.4e-5*&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[LCK_switch],Reference=InitialValue>
        </Expression>
        <Unit>
          l/(nmol*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_48" name="Kdpi,yi" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T13:11:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          2.4e-5*&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[LCK_switch],Reference=InitialValue>
        </Expression>
        <Unit>
          l/(nmol*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_47" name="Kdpi,yiya" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T13:11:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          1.2e-5*&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[LCK_switch],Reference=InitialValue>
        </Expression>
        <Unit>
          l/(nmol*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_46" name="Kdpa,ya" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T13:11:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          6e-6*&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[LCK_switch],Reference=InitialValue>
        </Expression>
        <Unit>
          l/(nmol*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_45" name="Kdpa,pi" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T13:12:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          1.2e-7*&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[LCK_switch],Reference=InitialValue>
        </Expression>
        <Unit>
          l/(nmol*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_44" name="Kpi,i" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T13:12:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_43" name="Kpi,ya" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T13:15:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_42" name="Kpa,i" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T13:15:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_41" name="Kpa,yi" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T13:15:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_40" name="k" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T14:04:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_39" name="Kp,pd1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T14:40:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_38" name="KMp,pd1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_38">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T14:40:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_37" name="Ka,shp" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T14:40:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          l/(nmol*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_36" name="Kd1,shp" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_36">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T14:40:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_35" name="Kd2,shp" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T14:40:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_34" name="Kdp,cp2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_34">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T14:40:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_33" name="Kp,cd28" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T16:23:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_32" name="KMp,cd28" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T16:39:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_31" name="Kdp,cd28" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T16:42:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_30" name="KMdp,cd28" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T16:42:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_29" name="Ka,pi3k" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T16:47:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          l/(nmol*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_28" name="Kd,pi3k" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T16:47:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_27" name="Kp,cd3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T16:55:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_26" name="KMp,cd3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T16:55:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_25" name="Kdp,cd3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T17:08:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_24" name="KMdp,cd3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T17:08:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_23" name="Ka,zap" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-21T09:50:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          l/(nmol*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_22" name="Kd,zap" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-21T09:51:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_21" name="Kp1,zap" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-21T09:57:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          l/(nmol*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_20" name="Kp2,zap" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-21T09:58:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          l/(nmol*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_19" name="Kp,lat" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-21T10:48:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          l/(nmol*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_18" name="Ka,gads" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-21T10:53:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          l/(nmol*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="Kd,gads" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-21T10:54:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="Ka,slp" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-21T10:58:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          l/(nmol*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="Kd,slp" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-21T11:00:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="Kp,slp" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-21T11:06:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          l/(nmol*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="perc_SHP2_bound" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-22T12:14:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[CPactive],Reference=Concentration>/(&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[SHP2],Reference=Concentration>+&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[CPactive],Reference=Concentration>)*100
        </Expression>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="CD3z_phosphorylated" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-27T13:43:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[CD3a],Reference=Concentration>+&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[ZAP70i],Reference=Concentration>+&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[ZAP70a1],Reference=Concentration>+&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[ZAP70a2],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="CD28_phosphorylated" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-27T13:42:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[PI3Kb],Reference=Concentration>+&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[CD28a],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="perc_SHP2_free" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-27T13:47:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[SHP2],Reference=Concentration>/(&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[SHP2],Reference=Concentration>+&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[CPactive],Reference=Concentration>)*100
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="perc_PI3K_free" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-27T13:51:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[PI3K],Reference=Concentration>/(&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[PI3Kb],Reference=Concentration>+&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[PI3K],Reference=Concentration>)*100
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="perc_ZAP70_free" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-27T13:55:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[ZAP70],Reference=Concentration>/(&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[ZAP70],Reference=Concentration>+&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[ZAP70i],Reference=Concentration>+&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[ZAP70a1],Reference=Concentration>+&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[ZAP70a2],Reference=Concentration>)*100
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="ZAP70_phos_Y315" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-27T13:58:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[ZAP70a2],Reference=Concentration>+&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[ZAP70a2],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="ZAP70_phos_Y93" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-27T14:00:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[ZAP70a2],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="LCK_phos_Y505" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-27T14:01:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[LCKyi],Reference=Concentration>+&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[LCKyiya],Reference=Concentration>+&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[LCKpi],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="LCK_phos_Y394" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-27T14:00:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[LCKya],Reference=Concentration>+&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[LCKyiya],Reference=Concentration>+&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[LCKpi],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="LAT_phosphorylated" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-27T14:05:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[LATa],Reference=Concentration>+&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[GADSa],Reference=Concentration>+&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[SLP76i],Reference=Concentration>+&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[SLP76a],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="perc_LCK_active" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-27T14:08:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[LCKactive],Reference=Concentration>/(&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[LCKi],Reference=Concentration>+&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[LCKpi],Reference=Concentration>+&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[LCKya],Reference=Concentration>+&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[LCKyi],Reference=Concentration>+&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[LCKyiya],Reference=Concentration>)*100
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="perc_LCK_inactive" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-27T14:12:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[LCKinactive],Reference=Concentration>/(&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[LCKi],Reference=Concentration>+&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[LCKpi],Reference=Concentration>+&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[LCKya],Reference=Concentration>+&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[LCKyi],Reference=Concentration>+&lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[LCKyiya],Reference=Concentration>)*100
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_0" name="LCK_switch" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-27T14:15:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_27" name="LCK_P_LCKyi_inh" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T11:33:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:0000216" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4509" name="k1" value="6e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_26" name="LCK_P_LCKya_act" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T11:36:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:0000216" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4510" name="k1" value="1e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="LCKya_P_LCKyiya_act" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T11:37:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:0000216" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4169" name="k1" value="6e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="LCKyi_P_LCKpi_inh" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T11:38:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:0000216" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4167" name="k1" value="0.00075"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="LCKyiya_DP_LCKyi" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T11:40:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:0000330" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4170" name="ka" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_389">
              <SourceParameter reference="ModelValue_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_390">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_391">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="LCKya_DP_LCKi" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T11:43:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:0000330" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4172" name="ka" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_389">
              <SourceParameter reference="ModelValue_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_390">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_391">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="LCKyi_DP_LCKi" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T11:44:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:0000330" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4171" name="ka" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_389">
              <SourceParameter reference="ModelValue_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_390">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_391">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="LCKyiya_DP_LCKya" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T11:44:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:0000330" />
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
          <Modifier metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4168" name="ka" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_389">
              <SourceParameter reference="ModelValue_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_390">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_391">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="LCKpi_DP_LCKyi" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T11:46:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:0000330" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4175" name="ka" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_389">
              <SourceParameter reference="ModelValue_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_390">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_391">
              <SourceParameter reference="Metabolite_34"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="PD1_P_PD1p1_act" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T13:27:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:0000216" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_32" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_30" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_29" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4173" name="Km" value="1000"/>
          <Constant key="Parameter_4176" name="kcat" value="7.5"/>
          <Constant key="Parameter_4178" name="k" value="41"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_404">
              <SourceParameter reference="ModelValue_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_403">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_402">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_401">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_400">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_399">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_398">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_397">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="PD1p1_P_PD1p2_act" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T13:28:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:0000216" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4177" name="Km" value="1000"/>
          <Constant key="Parameter_4174" name="kcat" value="7.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_56" unitType="Default" scalingCompartment="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_394">
              <SourceParameter reference="ModelValue_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_393">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_392">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_395">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="PD1p1_Bd_SHP2" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T13:28:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:0000117" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_30" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4181" name="k1" value="0.0065"/>
          <Constant key="Parameter_4179" name="k2" value="10"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_30"/>
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="PD1p2_Bd_SHP2" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T13:28:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:0000117" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_29" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4182" name="k1" value="0.0065"/>
          <Constant key="Parameter_4184" name="k2" value="10"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_29"/>
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="CP2_Diss_SHP2_PD1p1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T13:28:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:0000180" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_27" stoichiometry="1"/>
          <Product metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4183" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="CP2_DP_CP1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T13:28:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:0000330" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4180" name="k1" value="5e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="CP1_Diss_PD1_SHP2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T13:31:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:0000180" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_27" stoichiometry="1"/>
          <Product metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4187" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="CD28i_P_CD28a" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T16:19:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:0000216" />
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
          <Modifier metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4185" name="kcat" value="1"/>
          <Constant key="Parameter_4188" name="Km" value="1000"/>
        </ListOfConstants>
        <KineticLaw function="Function_56" unitType="Default" scalingCompartment="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_394">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_393">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_392">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_395">
              <SourceParameter reference="ModelValue_32"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="CD28a_DP_CD28i" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T16:20:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:0000330" />
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
          <Modifier metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4190" name="kcat" value="5"/>
          <Constant key="Parameter_4189" name="Km" value="500"/>
        </ListOfConstants>
        <KineticLaw function="Function_56" unitType="Default" scalingCompartment="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_394">
              <SourceParameter reference="ModelValue_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_393">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_392">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_395">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="CD28a_Bd_PI3K" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T16:20:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:0000117" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_24" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4186" name="k1" value="1.4e-06"/>
          <Constant key="Parameter_4193" name="k2" value="0.0009"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_24"/>
              <SourceParameter reference="Metabolite_22"/>
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
      <Reaction key="Reaction_8" name="CD3i_P_CD3a" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T16:22:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:0000216" />
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
          <Modifier metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4191" name="kcat" value="3.29"/>
          <Constant key="Parameter_4194" name="Km" value="80"/>
        </ListOfConstants>
        <KineticLaw function="Function_56" unitType="Default" scalingCompartment="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_394">
              <SourceParameter reference="ModelValue_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_393">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_392">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_395">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="CD3a_DP_CD3i" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-20T16:22:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:0000330" />
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
          <Modifier metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4196" name="kcat" value="5"/>
          <Constant key="Parameter_4195" name="Km" value="150"/>
        </ListOfConstants>
        <KineticLaw function="Function_56" unitType="Default" scalingCompartment="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_394">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_393">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_392">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_395">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="CD3a_Bd_ZAP70" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-21T09:48:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:0000117" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4192" name="k1" value="7e-05"/>
          <Constant key="Parameter_4199" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_19"/>
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="ZAP70i_P_ZAP70a1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-21T09:56:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:0000216" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4197" name="ka" value="2e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_389">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_390">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_391">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="ZAP70a1_P_ZAP70a2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-21T10:00:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:0000216" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4200" name="ka" value="3e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_389">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_390">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_391">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="LATi_P_LATa" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-21T10:45:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:0000216" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4202" name="ka" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_389">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_390">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_391">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="LATa_Bd_GADS" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-21T10:52:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:0000117" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4201" name="k1" value="0.0005"/>
          <Constant key="Parameter_4198" name="k2" value="1.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_11"/>
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="GADSa_Bd_SLP76" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-21T10:56:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:0000117" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4205" name="k1" value="0.015"/>
          <Constant key="Parameter_4203" name="k2" value="0.12"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_1"/>
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_0" name="SLP76i_P_SLC76a" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-21T11:05:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:0000216" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4206" name="ka" value="0.003"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_389">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_390">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_391">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[LCKi]" value="15055352142500000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[LCKyi]" value="15055352142500000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[LCKya]" value="15055352142500000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[LCKyiya]" value="15055352142500000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[LCKpi]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[LCKt]" value="60221408570000000" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[LCKactive]" value="30110704285000000" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[PD1]" value="3.0110704285e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[PD1p1]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[PD1p2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[CP1]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[SHP2]" value="1.8066422571e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[CP2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[CPactive]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[CD28a]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[CD28i]" value="1.50553521425e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[PI3K]" value="3.0110704285e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[PI3Kb]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[CD28t]" value="1.50553521425e+17" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[CD3a]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[CD3i]" value="30110704285000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[ZAP70a1]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[ZAP70i]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[ZAP70]" value="1.8066422571e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[ZAP70a2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[PI3Kt]" value="3.0110704285e+17" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[ZAP70t]" value="1.8066422571e+17" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[LATa]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[LATi]" value="1.8066422571e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[LATt]" value="1.8066422571e+17" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[GADS]" value="1.8066422571e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[SLP76]" value="1.8066422571e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[SLP76i]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[GADSt]" value="1.8066422571e+17" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[SLP76t]" value="1.8066422571e+17" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[CD3t]" value="30110704285000000" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[SLP76a]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[GADSa]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[LCKinactive]" value="30110704285000000" type="Species" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Kdpa\,yiya]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Kdpi\,yi]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Kdpi\,yiya]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Kdpa\,ya]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Kdpa\,pi]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Kpi\,i]" value="5.9999999999999997e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Kpi\,ya]" value="6.0000000000000002e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Kpa\,i]" value="9.9999999999999995e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Kpa\,yi]" value="0.00075000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[k]" value="41" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Kp\,pd1]" value="7.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[KMp\,pd1]" value="1000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Ka\,shp]" value="0.0064999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Kd1\,shp]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Kd2\,shp]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Kdp\,cp2]" value="4.9999999999999998e-08" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Kp\,cd28]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[KMp\,cd28]" value="1000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Kdp\,cd28]" value="5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[KMdp\,cd28]" value="500" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Ka\,pi3k]" value="1.3999999999999999e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Kd\,pi3k]" value="0.00089999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Kp\,cd3]" value="3.29" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[KMp\,cd3]" value="80" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Kdp\,cd3]" value="5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[KMdp\,cd3]" value="150" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Ka\,zap]" value="6.9999999999999994e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Kd\,zap]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Kp1\,zap]" value="1.9999999999999999e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Kp2\,zap]" value="3.0000000000000001e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Kp\,lat]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Ka\,gads]" value="0.00050000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Kd\,gads]" value="1.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Ka\,slp]" value="0.014999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Kd\,slp]" value="0.12" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Kp\,slp]" value="0.0030000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[perc_SHP2_bound]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[CD3z_phosphorylated]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[CD28_phosphorylated]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[perc_SHP2_free]" value="100" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[perc_PI3K_free]" value="100" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[perc_ZAP70_free]" value="100" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[ZAP70_phos_Y315]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[ZAP70_phos_Y93]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[LCK_phos_Y505]" value="50" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[LCK_phos_Y394]" value="50" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[LAT_phosphorylated]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[perc_LCK_active]" value="50" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[perc_LCK_inactive]" value="50" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[LCK_switch]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[LCK_P_LCKyi_inh]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[LCK_P_LCKyi_inh],ParameterGroup=Parameters,Parameter=k1" value="5.9999999999999997e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Kpi\,i],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[LCK_P_LCKya_act]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[LCK_P_LCKya_act],ParameterGroup=Parameters,Parameter=k1" value="9.9999999999999995e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Kpa\,i],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[LCKya_P_LCKyiya_act]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[LCKya_P_LCKyiya_act],ParameterGroup=Parameters,Parameter=k1" value="6.0000000000000002e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Kpi\,ya],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[LCKyi_P_LCKpi_inh]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[LCKyi_P_LCKpi_inh],ParameterGroup=Parameters,Parameter=k1" value="0.00075000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Kpa\,yi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[LCKyiya_DP_LCKyi]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[LCKyiya_DP_LCKyi],ParameterGroup=Parameters,Parameter=ka" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Kdpi\,yiya],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[LCKya_DP_LCKi]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[LCKya_DP_LCKi],ParameterGroup=Parameters,Parameter=ka" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Kdpa\,ya],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[LCKyi_DP_LCKi]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[LCKyi_DP_LCKi],ParameterGroup=Parameters,Parameter=ka" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Kdpi\,yi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[LCKyiya_DP_LCKya]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[LCKyiya_DP_LCKya],ParameterGroup=Parameters,Parameter=ka" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Kdpi\,yiya],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[LCKpi_DP_LCKyi]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[LCKpi_DP_LCKyi],ParameterGroup=Parameters,Parameter=ka" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Kdpa\,pi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[PD1_P_PD1p1_act]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[PD1_P_PD1p1_act],ParameterGroup=Parameters,Parameter=Km" value="1000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[KMp\,pd1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[PD1_P_PD1p1_act],ParameterGroup=Parameters,Parameter=kcat" value="7.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Kp\,pd1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[PD1_P_PD1p1_act],ParameterGroup=Parameters,Parameter=k" value="41" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[k],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[PD1p1_P_PD1p2_act]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[PD1p1_P_PD1p2_act],ParameterGroup=Parameters,Parameter=Km" value="1000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[KMp\,pd1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[PD1p1_P_PD1p2_act],ParameterGroup=Parameters,Parameter=kcat" value="7.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Kp\,pd1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[PD1p1_Bd_SHP2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[PD1p1_Bd_SHP2],ParameterGroup=Parameters,Parameter=k1" value="0.0064999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Ka\,shp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[PD1p1_Bd_SHP2],ParameterGroup=Parameters,Parameter=k2" value="10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Kd1\,shp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[PD1p2_Bd_SHP2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[PD1p2_Bd_SHP2],ParameterGroup=Parameters,Parameter=k1" value="0.0064999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Ka\,shp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[PD1p2_Bd_SHP2],ParameterGroup=Parameters,Parameter=k2" value="10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Kd1\,shp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[CP2_Diss_SHP2_PD1p1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[CP2_Diss_SHP2_PD1p1],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Kd2\,shp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[CP2_DP_CP1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[CP2_DP_CP1],ParameterGroup=Parameters,Parameter=k1" value="4.9999999999999998e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Kdp\,cp2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[CP1_Diss_PD1_SHP2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[CP1_Diss_PD1_SHP2],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Kd2\,shp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[CD28i_P_CD28a]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[CD28i_P_CD28a],ParameterGroup=Parameters,Parameter=kcat" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Kp\,cd28],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[CD28i_P_CD28a],ParameterGroup=Parameters,Parameter=Km" value="1000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[KMp\,cd28],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[CD28a_DP_CD28i]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[CD28a_DP_CD28i],ParameterGroup=Parameters,Parameter=kcat" value="5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Kdp\,cd28],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[CD28a_DP_CD28i],ParameterGroup=Parameters,Parameter=Km" value="500" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[KMdp\,cd28],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[CD28a_Bd_PI3K]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[CD28a_Bd_PI3K],ParameterGroup=Parameters,Parameter=k1" value="1.3999999999999999e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Ka\,pi3k],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[CD28a_Bd_PI3K],ParameterGroup=Parameters,Parameter=k2" value="0.00089999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Kd\,pi3k],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[CD3i_P_CD3a]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[CD3i_P_CD3a],ParameterGroup=Parameters,Parameter=kcat" value="3.29" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Kp\,cd3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[CD3i_P_CD3a],ParameterGroup=Parameters,Parameter=Km" value="80" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[KMp\,cd3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[CD3a_DP_CD3i]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[CD3a_DP_CD3i],ParameterGroup=Parameters,Parameter=kcat" value="5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Kdp\,cd3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[CD3a_DP_CD3i],ParameterGroup=Parameters,Parameter=Km" value="150" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[KMdp\,cd3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[CD3a_Bd_ZAP70]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[CD3a_Bd_ZAP70],ParameterGroup=Parameters,Parameter=k1" value="6.9999999999999994e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Ka\,zap],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[CD3a_Bd_ZAP70],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Kd\,zap],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[ZAP70i_P_ZAP70a1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[ZAP70i_P_ZAP70a1],ParameterGroup=Parameters,Parameter=ka" value="1.9999999999999999e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Kp1\,zap],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[ZAP70a1_P_ZAP70a2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[ZAP70a1_P_ZAP70a2],ParameterGroup=Parameters,Parameter=ka" value="3.0000000000000001e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Kp2\,zap],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[LATi_P_LATa]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[LATi_P_LATa],ParameterGroup=Parameters,Parameter=ka" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Kp\,lat],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[LATa_Bd_GADS]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[LATa_Bd_GADS],ParameterGroup=Parameters,Parameter=k1" value="0.00050000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Ka\,gads],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[LATa_Bd_GADS],ParameterGroup=Parameters,Parameter=k2" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Kd\,gads],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[GADSa_Bd_SLP76]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[GADSa_Bd_SLP76],ParameterGroup=Parameters,Parameter=k1" value="0.014999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Ka\,slp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[GADSa_Bd_SLP76],ParameterGroup=Parameters,Parameter=k2" value="0.12" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Kd\,slp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[SLP76i_P_SLC76a]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Reactions[SLP76i_P_SLC76a],ParameterGroup=Parameters,Parameter=ka" value="0.0030000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Kp\,slp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_37"/>
      <StateTemplateVariable objectReference="Metabolite_36"/>
      <StateTemplateVariable objectReference="Metabolite_30"/>
      <StateTemplateVariable objectReference="Metabolite_27"/>
      <StateTemplateVariable objectReference="Metabolite_24"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_38"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_26"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_34"/>
      <StateTemplateVariable objectReference="Metabolite_31"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_18"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_35"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_22"/>
      <StateTemplateVariable objectReference="Metabolite_29"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_28"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_33"/>
      <StateTemplateVariable objectReference="Metabolite_32"/>
      <StateTemplateVariable objectReference="Metabolite_25"/>
      <StateTemplateVariable objectReference="Metabolite_20"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="ModelValue_49"/>
      <StateTemplateVariable objectReference="ModelValue_48"/>
      <StateTemplateVariable objectReference="ModelValue_47"/>
      <StateTemplateVariable objectReference="ModelValue_46"/>
      <StateTemplateVariable objectReference="ModelValue_45"/>
      <StateTemplateVariable objectReference="ModelValue_13"/>
      <StateTemplateVariable objectReference="ModelValue_12"/>
      <StateTemplateVariable objectReference="ModelValue_11"/>
      <StateTemplateVariable objectReference="ModelValue_10"/>
      <StateTemplateVariable objectReference="ModelValue_9"/>
      <StateTemplateVariable objectReference="ModelValue_8"/>
      <StateTemplateVariable objectReference="ModelValue_7"/>
      <StateTemplateVariable objectReference="ModelValue_6"/>
      <StateTemplateVariable objectReference="ModelValue_5"/>
      <StateTemplateVariable objectReference="ModelValue_4"/>
      <StateTemplateVariable objectReference="ModelValue_3"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="ModelValue_44"/>
      <StateTemplateVariable objectReference="ModelValue_43"/>
      <StateTemplateVariable objectReference="ModelValue_42"/>
      <StateTemplateVariable objectReference="ModelValue_41"/>
      <StateTemplateVariable objectReference="ModelValue_40"/>
      <StateTemplateVariable objectReference="ModelValue_39"/>
      <StateTemplateVariable objectReference="ModelValue_38"/>
      <StateTemplateVariable objectReference="ModelValue_37"/>
      <StateTemplateVariable objectReference="ModelValue_36"/>
      <StateTemplateVariable objectReference="ModelValue_35"/>
      <StateTemplateVariable objectReference="ModelValue_34"/>
      <StateTemplateVariable objectReference="ModelValue_33"/>
      <StateTemplateVariable objectReference="ModelValue_32"/>
      <StateTemplateVariable objectReference="ModelValue_31"/>
      <StateTemplateVariable objectReference="ModelValue_30"/>
      <StateTemplateVariable objectReference="ModelValue_29"/>
      <StateTemplateVariable objectReference="ModelValue_28"/>
      <StateTemplateVariable objectReference="ModelValue_27"/>
      <StateTemplateVariable objectReference="ModelValue_26"/>
      <StateTemplateVariable objectReference="ModelValue_25"/>
      <StateTemplateVariable objectReference="ModelValue_24"/>
      <StateTemplateVariable objectReference="ModelValue_23"/>
      <StateTemplateVariable objectReference="ModelValue_22"/>
      <StateTemplateVariable objectReference="ModelValue_21"/>
      <StateTemplateVariable objectReference="ModelValue_20"/>
      <StateTemplateVariable objectReference="ModelValue_19"/>
      <StateTemplateVariable objectReference="ModelValue_18"/>
      <StateTemplateVariable objectReference="ModelValue_17"/>
      <StateTemplateVariable objectReference="ModelValue_16"/>
      <StateTemplateVariable objectReference="ModelValue_15"/>
      <StateTemplateVariable objectReference="ModelValue_14"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 15055352142500000 15055352142500000 0 1.8066422571e+17 0 0 15055352142500000 0 0 0 0 0 0 0 3.0110704285e+17 1.50553521425e+17 30110704285000000 1.8066422571e+17 15055352142500000 0 3.0110704285e+17 0 0 1.8066422571e+17 0 1.8066422571e+17 0 1.8066422571e+17 60221408570000000 30110704285000000 0 1.50553521425e+17 3.0110704285e+17 1.8066422571e+17 1.8066422571e+17 1.8066422571e+17 1.8066422571e+17 30110704285000000 30110704285000000 0 0 0 0 0 0 0 0 100 100 100 0 0 50 50 0 50 50 1 5.9999999999999997e-07 6.0000000000000002e-05 9.9999999999999995e-07 0.00075000000000000002 41 7.5 1000 0.0064999999999999997 10 1 4.9999999999999998e-08 1 1000 5 500 1.3999999999999999e-06 0.00089999999999999998 3.29 80 5 150 6.9999999999999994e-05 0.001 1.9999999999999999e-06 3.0000000000000001e-05 0.001 0.00050000000000000001 1.5 0.014999999999999999 0.12 0.0030000000000000001 0 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_13" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
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
        <Parameter name="Use Back Integration" type="bool" value="0"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000"/>
      </Method>
    </Task>
    <Task key="Task_1" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="18"/>
        <Parameter name="Duration" type="float" value="1800"/>
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
    <Task key="Task_2" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="1"/>
            <Parameter name="Type" type="unsignedInteger" value="1"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[LCK_switch],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="0"/>
            <Parameter name="Maximum" type="float" value="1"/>
            <Parameter name="log" type="bool" value="0"/>
          </ParameterGroup>
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="1"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
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
        <Parameter name="Number of Iterations" type="unsignedInteger" value="100000"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
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
      <Method name="Evolutionary Programming" type="EvolutionaryProgram">
        <Parameter name="Number of Generations" type="unsignedInteger" value="200"/>
        <Parameter name="Population Size" type="unsignedInteger" value="20"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_6" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_4" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_13"/>
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
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="0.0001"/>
      </Method>
    </Task>
    <Task key="Task_9" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_7" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="SubtaskType" type="unsignedInteger" value="2"/>
        <ParameterGroup name="TargetFunctions">
          <Parameter name="SingleObject" type="cn" value=""/>
          <Parameter name="ObjectListType" type="unsignedInteger" value="7"/>
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
    <Task key="Task_0" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_8" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value=""/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
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
  </ListOfReports>
  <ListOfPlots>
    <PlotSpecification name="plot" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[perc_PI3K_free]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[perc_PI3K_free],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="plot_1" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[perc_ZAP70_free]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[perc_ZAP70_free],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="plot_2" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[perc_LCK_active]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[perc_LCK_active],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[perc_LCK_inactive]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[perc_LCK_inactive],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="plot_3" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[SLP76a]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[SLP76a],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="plot_4" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[ZAP70a2]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[ZAP70a2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Concentrations, Volumes, and Global Quantity Values" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[CD28_phosphorylated]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[CD28_phosphorylated],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[CD3z_phosphorylated]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[CD3z_phosphorylated],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Kdpa,pi]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Kdpa\,pi],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Kdpa,ya]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Kdpa\,ya],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Kdpa,yiya]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Kdpa\,yiya],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Kdpi,yi]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Kdpi\,yi],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Kdpi,yiya]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[Kdpi\,yiya],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[LAT_phosphorylated]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[LAT_phosphorylated],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[LCK_phos_Y394]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[LCK_phos_Y394],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[LCK_phos_Y505]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[LCK_phos_Y505],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[ZAP70_phos_Y315]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[ZAP70_phos_Y315],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[ZAP70_phos_Y93]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[ZAP70_phos_Y93],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[perc_LCK_active]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[perc_LCK_active],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[perc_LCK_inactive]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[perc_LCK_inactive],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[perc_PI3K_free]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[perc_PI3K_free],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[perc_SHP2_bound]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[perc_SHP2_bound],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[perc_SHP2_free]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[perc_SHP2_free],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[perc_ZAP70_free]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Values[perc_ZAP70_free],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CD28a]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[CD28a],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CD28i]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[CD28i],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CD28t]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[CD28t],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CD3a]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[CD3a],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CD3i]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[CD3i],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CD3t]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[CD3t],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CP1]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[CP1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CP2]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[CP2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CPactive]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[CPactive],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[GADS]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[GADS],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[GADSa]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[GADSa],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[GADSt]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[GADSt],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[LATa]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[LATa],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[LATi]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[LATi],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[LATt]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[LATt],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[LCKactive]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[LCKactive],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[LCKi]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[LCKi],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[LCKinactive]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[LCKinactive],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[LCKpi]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[LCKpi],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[LCKt]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[LCKt],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[LCKya]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[LCKya],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[LCKyi]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[LCKyi],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[LCKyiya]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[LCKyiya],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PD1]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[PD1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PD1p1]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[PD1p1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PD1p2]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[PD1p2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PI3K]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[PI3K],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PI3Kb]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[PI3Kb],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PI3Kt]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[PI3Kt],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[SHP2]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[SHP2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[SLP76]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[SLP76],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[SLP76a]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[SLP76a],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[SLP76i]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[SLP76i],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[SLP76t]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[SLP76t],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[ZAP70]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[ZAP70],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[ZAP70a1]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[ZAP70a1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[ZAP70a2]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[ZAP70a2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[ZAP70i]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[ZAP70i],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[ZAP70t]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[ZAP70t],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
    <ListOfSliders>
      <Slider key="Slider_0" associatedEntityKey="Task_1" objectCN="CN=Root,Model=30356330_Theinmozhi_PDL1_TCR_regulation,Vector=Compartments[Cell],Vector=Metabolites[CD3i],Reference=InitialConcentration" objectType="float" objectValue="50" minValue="50" maxValue="200" tickNumber="1000" tickFactor="100" scaling="linear"/>
    </ListOfSliders>
  </GUI>
  <SBMLReference file="30356330_Theinmozhi.xml">
    <SBMLMap SBMLid="CD28a" COPASIkey="Metabolite_24"/>
    <SBMLMap SBMLid="CD28a_Bd_PI3K" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="CD28a_DP_CD28i" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="CD28i" COPASIkey="Metabolite_23"/>
    <SBMLMap SBMLid="CD28i_P_CD28a" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="CD28t" COPASIkey="Metabolite_20"/>
    <SBMLMap SBMLid="CD3a" COPASIkey="Metabolite_19"/>
    <SBMLMap SBMLid="CD3a_Bd_ZAP70" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="CD3a_DP_CD3i" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="CD3i" COPASIkey="Metabolite_18"/>
    <SBMLMap SBMLid="CD3i_P_CD3a" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="CD3t" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="CP1" COPASIkey="Metabolite_28"/>
    <SBMLMap SBMLid="CP1_Diss_PD1_SHP2" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="CP2" COPASIkey="Metabolite_26"/>
    <SBMLMap SBMLid="CP2_DP_CP1" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="CP2_Diss_SHP2_PD1p1" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="CPactive" COPASIkey="Metabolite_25"/>
    <SBMLMap SBMLid="Cell" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="Equation_for_Enzymatic_Dephosphorylation" COPASIkey="Function_55"/>
    <SBMLMap SBMLid="Equation_for_PD1_activation" COPASIkey="Function_54"/>
    <SBMLMap SBMLid="GADS" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="GADSa" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="GADSa_Bd_SLP76" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="GADSt" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="KMdp_cd28" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="KMdp_cd3" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="KMp_cd28" COPASIkey="ModelValue_32"/>
    <SBMLMap SBMLid="KMp_cd3" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="KMp_pd1" COPASIkey="ModelValue_38"/>
    <SBMLMap SBMLid="Ka_gads" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="Ka_pi3k" COPASIkey="ModelValue_29"/>
    <SBMLMap SBMLid="Ka_shp" COPASIkey="ModelValue_37"/>
    <SBMLMap SBMLid="Ka_slp" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="Ka_zap" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="Kd1_shp" COPASIkey="ModelValue_36"/>
    <SBMLMap SBMLid="Kd2_shp" COPASIkey="ModelValue_35"/>
    <SBMLMap SBMLid="Kd_gads" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="Kd_pi3k" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="Kd_slp" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="Kd_zap" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="Kdp_cd28" COPASIkey="ModelValue_31"/>
    <SBMLMap SBMLid="Kdp_cd3" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="Kdp_cp2" COPASIkey="ModelValue_34"/>
    <SBMLMap SBMLid="Kdpa_pi" COPASIkey="ModelValue_45"/>
    <SBMLMap SBMLid="Kdpa_ya" COPASIkey="ModelValue_46"/>
    <SBMLMap SBMLid="Kdpa_yiya" COPASIkey="ModelValue_49"/>
    <SBMLMap SBMLid="Kdpi_yi" COPASIkey="ModelValue_48"/>
    <SBMLMap SBMLid="Kdpi_yiya" COPASIkey="ModelValue_47"/>
    <SBMLMap SBMLid="Kp1_zap" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="Kp2_zap" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="Kp_cd28" COPASIkey="ModelValue_33"/>
    <SBMLMap SBMLid="Kp_cd3" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="Kp_lat" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="Kp_pd1" COPASIkey="ModelValue_39"/>
    <SBMLMap SBMLid="Kp_slp" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="Kpa_i" COPASIkey="ModelValue_42"/>
    <SBMLMap SBMLid="Kpa_yi" COPASIkey="ModelValue_41"/>
    <SBMLMap SBMLid="Kpi_i" COPASIkey="ModelValue_44"/>
    <SBMLMap SBMLid="Kpi_ya" COPASIkey="ModelValue_43"/>
    <SBMLMap SBMLid="LATa" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="LATa_Bd_GADS" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="LATi" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="LATi_P_LATa" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="LATt" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="LCK_P_LCKya_act" COPASIkey="Reaction_26"/>
    <SBMLMap SBMLid="LCK_P_LCKyi_inh" COPASIkey="Reaction_27"/>
    <SBMLMap SBMLid="LCKactive" COPASIkey="Metabolite_32"/>
    <SBMLMap SBMLid="LCKi" COPASIkey="Metabolite_38"/>
    <SBMLMap SBMLid="LCKinactive" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="LCKpi" COPASIkey="Metabolite_34"/>
    <SBMLMap SBMLid="LCKpi_DP_LCKyi" COPASIkey="Reaction_19"/>
    <SBMLMap SBMLid="LCKt" COPASIkey="Metabolite_33"/>
    <SBMLMap SBMLid="LCKya" COPASIkey="Metabolite_36"/>
    <SBMLMap SBMLid="LCKya_DP_LCKi" COPASIkey="Reaction_22"/>
    <SBMLMap SBMLid="LCKya_P_LCKyiya_act" COPASIkey="Reaction_25"/>
    <SBMLMap SBMLid="LCKyi" COPASIkey="Metabolite_37"/>
    <SBMLMap SBMLid="LCKyi_DP_LCKi" COPASIkey="Reaction_21"/>
    <SBMLMap SBMLid="LCKyi_P_LCKpi_inh" COPASIkey="Reaction_24"/>
    <SBMLMap SBMLid="LCKyiya" COPASIkey="Metabolite_35"/>
    <SBMLMap SBMLid="LCKyiya_DP_LCKya" COPASIkey="Reaction_20"/>
    <SBMLMap SBMLid="LCKyiya_DP_LCKyi" COPASIkey="Reaction_23"/>
    <SBMLMap SBMLid="PD1" COPASIkey="Metabolite_31"/>
    <SBMLMap SBMLid="PD1_P_PD1p1_act" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="PD1p1" COPASIkey="Metabolite_30"/>
    <SBMLMap SBMLid="PD1p1_Bd_SHP2" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="PD1p1_P_PD1p2_act" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="PD1p2" COPASIkey="Metabolite_29"/>
    <SBMLMap SBMLid="PD1p2_Bd_SHP2" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="PI3K" COPASIkey="Metabolite_22"/>
    <SBMLMap SBMLid="PI3Kb" COPASIkey="Metabolite_21"/>
    <SBMLMap SBMLid="PI3Kt" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="SHP2" COPASIkey="Metabolite_27"/>
    <SBMLMap SBMLid="SLP76" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="SLP76a" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="SLP76i" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="SLP76i_P_SLC76a" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="SLP76t" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="SMM_Enzyme_based" COPASIkey="Function_56"/>
    <SBMLMap SBMLid="ZAP70" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="ZAP70a1" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="ZAP70a1_P_ZAP70a2" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="ZAP70a2" COPASIkey="Metabolite_14"/>
    <SBMLMap SBMLid="ZAP70i" COPASIkey="Metabolite_16"/>
    <SBMLMap SBMLid="ZAP70i_P_ZAP70a1" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="ZAP70t" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="k" COPASIkey="ModelValue_40"/>
    <SBMLMap SBMLid="perc_SHP2_bound" COPASIkey="ModelValue_13"/>
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
  </ListOfUnitDefinitions>
</COPASI>
