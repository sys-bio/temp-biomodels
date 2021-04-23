<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.27 (Build 217) (http://www.copasi.org) at 2020-02-28T13:03:52Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="27" versionDevel="217" copasiSourcesModified="0">
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
  </ListOfFunctions>
  <Model key="Model_0" name="Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1" simulationType="time" timeUnit="d" volumeUnit="ml" areaUnit="m²" lengthUnit="m" quantityUnit="mmol" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_0">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:vario:VariO:0139"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ncit:C94346"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/mamo/MAMO_0000046"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:efo:0002618"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/efo/0000311"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqbiol:hasTaxon rdf:resource="urn:miriam:taxonomy:9606"/>
    <bqmodel:isDerivedFrom>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/DOI/10.1109/BIBM.2017.8217639"/>
      </rdf:Bag>
    </bqmodel:isDerivedFrom>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:30463617"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T14:12:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>muffet0307@gmail.com</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Ng</vCard:Family>
                <vCard:Given>Szeyi</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>EMBL-EBI</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>azyoud@ebi.ac.uk</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Zyoud</vCard:Family>
                <vCard:Given>Ahmad</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>EMBL-EBI</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:creator>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T14:12:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2020-02-28T10:54:46</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <CopasiMT:is rdf:resource="urn:miriam:biomodels.db:MODEL1909300002"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:ncit:C12393"/>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      <body xmlns="http://www.w3.org/1999/xhtml">
    <p>Background

Cancer is one of the leading causes for the morbidity and mortality worldwide. Although substantial studies have been conducted theoretically and experimentally in recent years, it is still a challenge to explore the mechanisms of cancer initiation and progression. The investigation for these problems is very important for the diagnosis of cancer diseases and development of treatment schemes.
Results

To accurately describe the process of cancer initiation, we propose a new concept of gene initial mutation rate based on our recently designed mathematical model using the non-constant mutation rate. Unlike the widely-used average gene mutation rate that depends on the number of mutations, the gene initial mutation rate can be used to describe the initiation process of a single patient. In addition, we propose the instantaneous tumour doubling time that is a continuous function of time based on the non-constant mutation rate. Our proposed concepts are supported by the clinic data of seven patients with advanced pancreatic cancer. The regression results suggest that, compared with the average mutation rate, the estimated initial mutation rate has a larger value of correlation coefficient with the patient survival time. We also provide the estimated tumour size of these seven patients over time.
Conclusions

The proposed concepts can be used to describe the cancer initiation and progression for different patients more accurately. Since a quantitative understanding of cancer progression is important for clinical treatment, our proposed model and calculated results may provide insights into the development of treatment schemes and also have other clinic implications.</p>
  </body>
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="Cell" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ncit:C12917" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="patient_0" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <CopasiMT:hasVersion rdf:resource="urn:miriam:efo:0002618"/>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C19700"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="patient_1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <CopasiMT:hasVersion rdf:resource="urn:miriam:efo:0002618" />
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C19700" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="patient_2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C19700"/>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:efo:0002618"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="patient_3" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C19700" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:efo:0002618" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="patient_4" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C19700"/>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:efo:0002618"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="patient_5" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C19700" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:efo:0002618" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="patient_6" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C19700" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:efo:0002618" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="patient_7" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C19700" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:efo:0002618" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="patient_8" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_8">
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C19700" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:efo:0002618" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="myu" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C25636" />
    <bqbiol:hasProperty rdf:resource="urn:miriam:vario:VariO:0139" />
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000001" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[a],Reference=Value>*exp(&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[b],Reference=Value>*&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Reference=Time>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="a*" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-02-12T15:42:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="b*" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-02-12T15:42:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="DB" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_3">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C94346" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-02-13T11:43:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[a*],Reference=Value>*&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Reference=Time>/(&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[K],Reference=Value>+&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Reference=Time>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="K" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-02-13T16:05:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="DT1" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_5">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C94346" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-02-14T11:43:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[Mo_1],Reference=Value>/&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[M0_AVG],Reference=Value>*exp((&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[b1*],Reference=Value>-&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[b_AVG*],Reference=Value>)*&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Reference=Time>)*(&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[a*],Reference=Value>*&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Reference=Time>/(&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[K],Reference=Value>+&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Reference=Time>))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="Mo_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-02-14T11:43:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="M0_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-02-14T11:45:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="M0_3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-02-14T11:45:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="M0_4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-02-14T11:45:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="M0_5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-02-14T11:46:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="M0_6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-02-14T11:46:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="M0_7" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-02-14T11:46:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="M0_AVG" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-02-14T11:46:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[Mo_1],Reference=Value>+&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[M0_2],Reference=Value>+&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[M0_3],Reference=Value>+&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[M0_4],Reference=Value>+&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[M0_5],Reference=Value>+&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[M0_6],Reference=Value>+&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[M0_7],Reference=Value>)/7
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="b1*" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-02-14T11:49:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="b2*" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-02-14T11:50:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="b3*" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-02-14T11:50:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="b4*" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-02-14T11:50:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_18" name="b5*" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-02-14T11:51:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_19" name="b6*" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-02-14T11:51:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_20" name="b7*" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-02-14T11:51:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_21" name="b_AVG*" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-02-14T11:52:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[b1*],Reference=Value>+&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[b2*],Reference=Value>+&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[b3*],Reference=Value>+&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[b4*],Reference=Value>+&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[b5*],Reference=Value>+&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[b6*],Reference=Value>+&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[b7*],Reference=Value>)/7
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_22" name="DT2" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_22">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C94346" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-02-14T12:47:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[M0_2],Reference=Value>/&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[M0_AVG],Reference=Value>*exp((&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[b2*],Reference=Value>-&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[b_AVG*],Reference=Value>)*&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Reference=Time>)*(&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[a*],Reference=Value>*&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Reference=Time>/(&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[K],Reference=Value>+&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Reference=Time>))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_23" name="DT3" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_23">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C94346" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-02-14T12:49:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[M0_3],Reference=Value>/&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[M0_AVG],Reference=Value>*exp((&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[b3*],Reference=Value>-&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[b_AVG*],Reference=Value>)*&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Reference=Time>)*(&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[a*],Reference=Value>*&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Reference=Time>/(&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[K],Reference=Value>+&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Reference=Time>))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_24" name="DT4" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_24">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C94346" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-02-14T12:52:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[M0_4],Reference=Value>/&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[M0_AVG],Reference=Value>*exp((&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[b4*],Reference=Value>-&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[b_AVG*],Reference=Value>)*&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Reference=Time>)*(&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[a*],Reference=Value>*&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Reference=Time>/(&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[K],Reference=Value>+&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Reference=Time>))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_25" name="DT5" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_25">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C94346" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-02-14T12:52:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[M0_5],Reference=Value>/&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[M0_AVG],Reference=Value>*exp((&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[b5*],Reference=Value>-&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[b_AVG*],Reference=Value>)*&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Reference=Time>)*(&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[a*],Reference=Value>*&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Reference=Time>/(&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[K],Reference=Value>+&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Reference=Time>))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_26" name="DT6" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_26">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C94346" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-02-14T12:53:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[M0_6],Reference=Value>/&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[M0_AVG],Reference=Value>*exp((&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[b6*],Reference=Value>-&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[b_AVG*],Reference=Value>)*&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Reference=Time>)*(&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[a*],Reference=Value>*&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Reference=Time>/(&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[K],Reference=Value>+&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Reference=Time>))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_27" name="DT7" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_27">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C94346" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-02-14T12:54:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[M0_7],Reference=Value>/&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[M0_AVG],Reference=Value>*exp((&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[b7*],Reference=Value>-&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[b_AVG*],Reference=Value>)*&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Reference=Time>)*(&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[a*],Reference=Value>*&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Reference=Time>/(&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[K],Reference=Value>+&lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Reference=Time>))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_28" name="a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-02-14T14:00:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_29" name="b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-02-14T14:00:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="mutation 1-2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <bqbiol:hasProperty rdf:resource="urn:miriam:vario:VariO:0139" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T14:44:31Z</dcterms:W3CDTF>
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
          <Constant key="Parameter_5408" name="k1" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Compartments[Cell]">
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
      <Reaction key="Reaction_1" name="mutation 2-3" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:vario:VariO:0139" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T14:44:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
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
          <Constant key="Parameter_5407" name="k1" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="mutation 3-4" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <bqbiol:hasProperty rdf:resource="urn:miriam:vario:VariO:0139" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T14:44:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5411" name="k1" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="mutation 4-5" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <bqbiol:hasProperty rdf:resource="urn:miriam:vario:VariO:0139" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T14:45:02Z</dcterms:W3CDTF>
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
          <Constant key="Parameter_5409" name="k1" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="mutation 5-6" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <bqbiol:hasProperty rdf:resource="urn:miriam:vario:VariO:0139" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T14:45:13Z</dcterms:W3CDTF>
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
        <ListOfConstants>
          <Constant key="Parameter_5412" name="k1" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="mutation 6-7" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <bqbiol:hasProperty rdf:resource="urn:miriam:vario:VariO:0139" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T14:45:21Z</dcterms:W3CDTF>
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
          <Constant key="Parameter_5413" name="k1" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="mutation 7-8" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <bqbiol:hasProperty rdf:resource="urn:miriam:vario:VariO:0139" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-24T14:45:30Z</dcterms:W3CDTF>
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
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5417" name="k1" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="mutation 0-1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <bqbiol:hasProperty rdf:resource="urn:miriam:vario:VariO:0139" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-30T09:56:49Z</dcterms:W3CDTF>
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
        <ListOfConstants>
          <Constant key="Parameter_5419" name="k1" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Compartments[Cell]">
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
<dcterms:W3CDTF>2020-02-28T12:27:44Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Compartments[Cell]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Compartments[Cell],Vector=Metabolites[patient_0]" value="6.0221408570000002e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Compartments[Cell],Vector=Metabolites[patient_1]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Compartments[Cell],Vector=Metabolites[patient_2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Compartments[Cell],Vector=Metabolites[patient_3]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Compartments[Cell],Vector=Metabolites[patient_4]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Compartments[Cell],Vector=Metabolites[patient_5]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Compartments[Cell],Vector=Metabolites[patient_6]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Compartments[Cell],Vector=Metabolites[patient_7]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Compartments[Cell],Vector=Metabolites[patient_8]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[myu]" value="0.001" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[a*]" value="40.740000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[b*]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[DB]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[K]" value="62.039999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[DT1]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[Mo_1]" value="49" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[M0_2]" value="35" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[M0_3]" value="28" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[M0_4]" value="34" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[M0_5]" value="28" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[M0_6]" value="50" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[M0_7]" value="35" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[M0_AVG]" value="37" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[b1*]" value="1.0000000000000001e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[b2*]" value="1.8e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[b3*]" value="3.0000000000000001e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[b4*]" value="1.9000000000000001e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[b5*]" value="2.9e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[b6*]" value="1.0000000000000001e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[b7*]" value="1.8e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[b_AVG*]" value="1.9142857142857143e-05" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[DT2]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[DT3]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[DT4]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[DT5]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[DT6]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[DT7]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[a]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[b]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Reactions[mutation 1-2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Reactions[mutation 1-2],ParameterGroup=Parameters,Parameter=k1" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[myu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Reactions[mutation 2-3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Reactions[mutation 2-3],ParameterGroup=Parameters,Parameter=k1" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[myu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Reactions[mutation 3-4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Reactions[mutation 3-4],ParameterGroup=Parameters,Parameter=k1" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[myu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Reactions[mutation 4-5]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Reactions[mutation 4-5],ParameterGroup=Parameters,Parameter=k1" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[myu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Reactions[mutation 5-6]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Reactions[mutation 5-6],ParameterGroup=Parameters,Parameter=k1" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[myu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Reactions[mutation 6-7]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Reactions[mutation 6-7],ParameterGroup=Parameters,Parameter=k1" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[myu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Reactions[mutation 7-8]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Reactions[mutation 7-8],ParameterGroup=Parameters,Parameter=k1" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[myu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Reactions[mutation 0-1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Reactions[mutation 0-1],ParameterGroup=Parameters,Parameter=k1" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[myu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_3"/>
      <StateTemplateVariable objectReference="ModelValue_5"/>
      <StateTemplateVariable objectReference="ModelValue_13"/>
      <StateTemplateVariable objectReference="ModelValue_21"/>
      <StateTemplateVariable objectReference="ModelValue_22"/>
      <StateTemplateVariable objectReference="ModelValue_23"/>
      <StateTemplateVariable objectReference="ModelValue_24"/>
      <StateTemplateVariable objectReference="ModelValue_25"/>
      <StateTemplateVariable objectReference="ModelValue_26"/>
      <StateTemplateVariable objectReference="ModelValue_27"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
      <StateTemplateVariable objectReference="ModelValue_4"/>
      <StateTemplateVariable objectReference="ModelValue_6"/>
      <StateTemplateVariable objectReference="ModelValue_7"/>
      <StateTemplateVariable objectReference="ModelValue_8"/>
      <StateTemplateVariable objectReference="ModelValue_9"/>
      <StateTemplateVariable objectReference="ModelValue_10"/>
      <StateTemplateVariable objectReference="ModelValue_11"/>
      <StateTemplateVariable objectReference="ModelValue_12"/>
      <StateTemplateVariable objectReference="ModelValue_14"/>
      <StateTemplateVariable objectReference="ModelValue_15"/>
      <StateTemplateVariable objectReference="ModelValue_16"/>
      <StateTemplateVariable objectReference="ModelValue_17"/>
      <StateTemplateVariable objectReference="ModelValue_18"/>
      <StateTemplateVariable objectReference="ModelValue_19"/>
      <StateTemplateVariable objectReference="ModelValue_20"/>
      <StateTemplateVariable objectReference="ModelValue_28"/>
      <StateTemplateVariable objectReference="ModelValue_29"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 0 0 0 0 0 0 0 0 6.0221408570000002e+20 0.001 0 0 37 1.9142857142857143e-05 0 0 0 0 0 0 1 40.740000000000002 0 62.039999999999999 49 35 28 34 28 50 35 1.0000000000000001e-05 1.8e-05 3.0000000000000001e-05 1.9000000000000001e-05 2.9e-05 1.0000000000000001e-05 1.8e-05 0.001 0 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_13" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
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
    <Task key="Task_12" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="36"/>
        <Parameter name="Duration" type="float" value="3600"/>
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
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="1"/>
            <Parameter name="Type" type="unsignedInteger" value="1"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[b],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="0"/>
            <Parameter name="Maximum" type="float" value="3.0000000000000001e-05"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Values" type="string" value=""/>
            <Parameter name="Use Values" type="bool" value="0"/>
          </ParameterGroup>
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
    <Report key="Report_9" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
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
    <PlotSpecification name="Concentrations, Volumes, and Global Quantity Values" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[DB]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[DB],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[DT1]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[DT1],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[DT2]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[DT2],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[DT3]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[DT3],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[DT4]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[DT4],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[DT5]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[DT5],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[DT6]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[DT6],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[DT7]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[DT7],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[M0_AVG]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[M0_AVG],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[b_AVG*]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[b_AVG*],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[myu]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Values[myu],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[p_0]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Compartments[Cell],Vector=Metabolites[patient_0],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[p_1]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Compartments[Cell],Vector=Metabolites[patient_1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[p_2]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Compartments[Cell],Vector=Metabolites[patient_2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[p_3]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Compartments[Cell],Vector=Metabolites[patient_3],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[p_4]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Compartments[Cell],Vector=Metabolites[patient_4],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[p_5]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Compartments[Cell],Vector=Metabolites[patient_5],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[p_6]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Compartments[Cell],Vector=Metabolites[patient_6],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[p_7]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Compartments[Cell],Vector=Metabolites[patient_7],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[p_8]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Compartments[Cell],Vector=Metabolites[patient_8],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Fig1" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[patient_2]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Compartments[Cell],Vector=Metabolites[patient_2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[patient_8]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Sun2018 - Instantaneous mutation rate in cancer initiation and progression_1,Vector=Compartments[Cell],Vector=Metabolites[patient_8],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="Sun2018.xml">
    <SBMLMap SBMLid="DT1" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="DT2" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="DT3" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="DT4" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="DT5" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="DT6" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="DT7" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="K" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="M0_2" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="M0_3" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="M0_4" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="M0_5" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="M0_6" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="M0_7" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="M0_AVG" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="Mo_1" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="a" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="a_0" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="b" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="b1" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="b2" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="b3" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="b4" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="b5" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="b6" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="b7" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="b_0" COPASIkey="ModelValue_29"/>
    <SBMLMap SBMLid="b_AVG" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="c" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="compartment" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="mutation_0_1" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="mutation_1_2" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="mutation_2_3" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="mutation_3_4" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="mutation_4_5" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="mutation_5_6" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="mutation_6_7" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="mutation_7_8" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="myu" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="p_0" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="p_1" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="p_2" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="p_3" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="p_4" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="p_5" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="p_6" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="p_7" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="p_8" COPASIkey="Metabolite_8"/>
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
<dcterms:W3CDTF>2020-02-28T12:27:27Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2020-02-28T12:27:27Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2020-02-28T12:27:27Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2020-02-28T12:27:27Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2020-02-28T12:27:27Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2020-02-28T12:27:27Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2020-02-28T12:27:27Z</dcterms:W3CDTF>
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
