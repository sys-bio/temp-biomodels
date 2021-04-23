<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.29 (Build 228) (http://www.copasi.org) at 2020-10-09T13:37:29Z -->
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
    <Function key="Function_40" name="Rate Law for R3" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-03T17:17:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k1a*Dw*Py1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_264" name="k1a" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_263" name="Dw" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_262" name="Py1" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Rate Law for R1_3" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-04T06:59:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k*substrate*(parameter^2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_265" name="k" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_250" name="substrate" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_261" name="parameter" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="Cui2008 - in vitro transcriptional response of zinc homeostasis system in Escherichia coli" simulationType="time" timeUnit="min" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="nmol" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C19077"/>
    <bqbiol:hasTaxon rdf:resource="urn:miriam:taxonomy:562"/>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:18950480"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-03T16:38:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
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
    <CopasiMT:is rdf:resource="urn:miriam:biomodels.db:MODEL1172501439"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0055069"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:mamo:MAMO_0000046"/>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      Background
The zinc homeostasis system in Escherichia coli is one of the most intensively studied prokaryotic zinc homeostasis systems. Its underlying regulatory machine consists of repression on zinc influx through ZnuABC by Zur (Z n2+ u ptake r egulator) and activation on zinc efflux via ZntA by ZntR (a zinc-responsive regulator). Although these transcriptional regulations seem to be well characterized, and there is an abundance of detailed in vitro experimental data available, as yet there is no mathematical model to help interpret these data. To our knowledge, the work described here is the first attempt to use a mathematical model to simulate these regulatory relations and to help explain the in vitro experimental data.

Results
We develop a unified mathematical model consisting of 14 reactions to simulate the in vitro transcriptional response of the zinc homeostasis system in E. coli. Firstly, we simulate the in vitro Zur-DNA interaction by using two of these reactions, which are expressed as 4 ordinary differential equations (ODEs). By imposing the conservation restraints and solving the relevant steady state equations, we find that the simulated sigmoidal curve matches the corresponding experimental data. Secondly, by numerically solving the ODEs for simulating the Zur and ZntR run-off transcription experiments, and depicting the simulated concentrations of zntA and znuC transcripts as a function of free zinc concentration, we find that the simulated curves fit the corresponding in vitro experimental data. Moreover, we also perform simulations, after taking into consideration the competitive effects of ZntR with the zinc buffer, and depict the simulated concentration of zntA transcripts as a function of the total ZntR concentration, both in the presence and absence of Zn(II). The obtained simulation results are in general agreement with the corresponding experimental data.

Conclusion
Simulation results show that our model can quantitatively reproduce the results of several of the in vitro experiments conducted by Outten CE and her colleagues. Our model provides a detailed insight into the dynamics of the regulatory system and also provides a general framework for simulating in vitro metal-binding and transcription experiments and interpreting the relevant experimental data.
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="Cell" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Compartment_0">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C48694"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-03T16:39:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
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
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="Py" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C19398" />
    <bqmodel:isDescribedBy rdf:resource="urn:miriam:ncit:C948" />
    <bqmodel:isDescribedBy rdf:resource="urn:miriam:uniprot:P0AC51" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-03T16:48:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Zn2Zur Complex
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="Py1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <bqmodel:isDescribedBy rdf:resource="urn:miriam:ncit:C948" />
    <bqmodel:isDescribedBy rdf:resource="urn:miriam:uniprot:P0AC51" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-03T16:49:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isPartOf rdf:resource="urn:miriam:ncit:C19398" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Zn4Zur Complex
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="Dw" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <bqmodel:isDerivedFrom rdf:resource="urn:miriam:ecogene:EG13132" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-03T16:49:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          free znuC DNA
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="Rw" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-03T16:49:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C20076" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          RNA polymerase
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="Qw1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <bqmodel:isDerivedFrom rdf:resource="urn:miriam:ecogene:EG13132" />
    <bqmodel:isDescribedBy rdf:resource="urn:miriam:go:GO:0006352" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-03T16:50:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          znuC transcription initiation complex
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="Qw2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <bqmodel:isDescribedBy rdf:resource="urn:miriam:ncit:C449" />
    <bqmodel:isDescribedBy rdf:resource="urn:miriam:ncit:C948" />
    <bqmodel:isDescribedBy rdf:resource="urn:miriam:uniprot:P0AC51" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-03T16:50:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isPartOf rdf:resource="urn:miriam:ncit:C19398" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Zn4Zur-DNA complex
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="Zn^2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-04T12:44:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:29105" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Zinc 2+
        </Comment>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="r3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000153" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-03T16:44:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          (l)²/((nmol)²*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="r4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000156" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-03T16:44:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="k_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_2">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000156" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-03T16:44:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="k2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_3">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000153" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-03T16:44:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          l/(nmol*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="k_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_4">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000156" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-03T16:44:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="Zn" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-03T16:44:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="k1a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_6">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000153" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-03T17:02:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          l/(nmol*s)
        </Unit>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="Formation of the Zn4Zur complex" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C82888" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-04T12:44:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Zn2Zur (Py) +   Zn2+ -> Zn4Zur (Py1)
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5390" name="k" value="4.41e+10"/>
          <Constant key="Parameter_5389" name="parameter" value="1e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Cui2008 - in vitro transcriptional response of zinc homeostasis system in Escherichia coli,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="Dissociation of Zn4Zur complex" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C82888" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-04T12:44:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Zn4Zur (Py1) -> Zn2Zur (Py) + Zn2+
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5388" name="k1" value="0.009"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Cui2008 - in vitro transcriptional response of zinc homeostasis system in Escherichia coli,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="Formation of DNA binding complex" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C82888" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-03T17:00:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          free znuC DNA (Dw) + Zn4Zur (Py1) -> Zn4Zur-DNA complex (Qw2)
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5387" name="k1a" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Cui2008 - in vitro transcriptional response of zinc homeostasis system in Escherichia coli,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="Disassociation of DNA binding complex" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C82888" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-03T17:01:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5386" name="k1" value="0.9"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Cui2008 - in vitro transcriptional response of zinc homeostasis system in Escherichia coli,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="Formation of transcription initiation complex" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C82888" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-03T17:03:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Rna polymerase (Rw) binds to the free Znu DNA (Dw) to form the transcription initiation complex (Qw1)
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5385" name="k1a" value="0.02"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Cui2008 - in vitro transcriptional response of zinc homeostasis system in Escherichia coli,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="Disassociation of transcription initiation complex" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C82888" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-03T17:04:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          The transcription initiation complex (Qw1) disassociates to form Rna polymerase (Rw) binds to the free Znu DNA (Dw)
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5384" name="k1" value="0.3"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Cui2008 - in vitro transcriptional response of zinc homeostasis system in Escherichia coli,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_4"/>
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
<dcterms:W3CDTF>2020-10-09T13:18:24Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Cui2008 - in vitro transcriptional response of zinc homeostasis system in Escherichia coli" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Cui2008 - in vitro transcriptional response of zinc homeostasis system in Escherichia coli,Vector=Compartments[Cell]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Cui2008 - in vitro transcriptional response of zinc homeostasis system in Escherichia coli,Vector=Compartments[Cell],Vector=Metabolites[Py]" value="15055352142500000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Cui2008 - in vitro transcriptional response of zinc homeostasis system in Escherichia coli,Vector=Compartments[Cell],Vector=Metabolites[Py1]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Cui2008 - in vitro transcriptional response of zinc homeostasis system in Escherichia coli,Vector=Compartments[Cell],Vector=Metabolites[Dw]" value="2408856342800000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Cui2008 - in vitro transcriptional response of zinc homeostasis system in Escherichia coli,Vector=Compartments[Cell],Vector=Metabolites[Rw]" value="30110704285000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Cui2008 - in vitro transcriptional response of zinc homeostasis system in Escherichia coli,Vector=Compartments[Cell],Vector=Metabolites[Qw1]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Cui2008 - in vitro transcriptional response of zinc homeostasis system in Escherichia coli,Vector=Compartments[Cell],Vector=Metabolites[Qw2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Cui2008 - in vitro transcriptional response of zinc homeostasis system in Escherichia coli,Vector=Compartments[Cell],Vector=Metabolites[Zn^2]" value="602214085700000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Cui2008 - in vitro transcriptional response of zinc homeostasis system in Escherichia coli,Vector=Values[r3]" value="44100000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cui2008 - in vitro transcriptional response of zinc homeostasis system in Escherichia coli,Vector=Values[r4]" value="0.0089999999999999993" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cui2008 - in vitro transcriptional response of zinc homeostasis system in Escherichia coli,Vector=Values[k_1]" value="0.90000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cui2008 - in vitro transcriptional response of zinc homeostasis system in Escherichia coli,Vector=Values[k2]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cui2008 - in vitro transcriptional response of zinc homeostasis system in Escherichia coli,Vector=Values[k_2]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cui2008 - in vitro transcriptional response of zinc homeostasis system in Escherichia coli,Vector=Values[Zn]" value="1.0000000000000001e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cui2008 - in vitro transcriptional response of zinc homeostasis system in Escherichia coli,Vector=Values[k1a]" value="1" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Cui2008 - in vitro transcriptional response of zinc homeostasis system in Escherichia coli,Vector=Reactions[Formation of the Zn4Zur complex]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Cui2008 - in vitro transcriptional response of zinc homeostasis system in Escherichia coli,Vector=Reactions[Formation of the Zn4Zur complex],ParameterGroup=Parameters,Parameter=k" value="44100000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Cui2008 - in vitro transcriptional response of zinc homeostasis system in Escherichia coli,Vector=Values[r3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Cui2008 - in vitro transcriptional response of zinc homeostasis system in Escherichia coli,Vector=Reactions[Formation of the Zn4Zur complex],ParameterGroup=Parameters,Parameter=parameter" value="1.0000000000000001e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Cui2008 - in vitro transcriptional response of zinc homeostasis system in Escherichia coli,Vector=Values[Zn],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Cui2008 - in vitro transcriptional response of zinc homeostasis system in Escherichia coli,Vector=Reactions[Dissociation of Zn4Zur complex]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Cui2008 - in vitro transcriptional response of zinc homeostasis system in Escherichia coli,Vector=Reactions[Dissociation of Zn4Zur complex],ParameterGroup=Parameters,Parameter=k1" value="0.0089999999999999993" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Cui2008 - in vitro transcriptional response of zinc homeostasis system in Escherichia coli,Vector=Values[r4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Cui2008 - in vitro transcriptional response of zinc homeostasis system in Escherichia coli,Vector=Reactions[Formation of DNA binding complex]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Cui2008 - in vitro transcriptional response of zinc homeostasis system in Escherichia coli,Vector=Reactions[Formation of DNA binding complex],ParameterGroup=Parameters,Parameter=k1a" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Cui2008 - in vitro transcriptional response of zinc homeostasis system in Escherichia coli,Vector=Values[k1a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Cui2008 - in vitro transcriptional response of zinc homeostasis system in Escherichia coli,Vector=Reactions[Disassociation of DNA binding complex]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Cui2008 - in vitro transcriptional response of zinc homeostasis system in Escherichia coli,Vector=Reactions[Disassociation of DNA binding complex],ParameterGroup=Parameters,Parameter=k1" value="0.90000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Cui2008 - in vitro transcriptional response of zinc homeostasis system in Escherichia coli,Vector=Values[k_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Cui2008 - in vitro transcriptional response of zinc homeostasis system in Escherichia coli,Vector=Reactions[Formation of transcription initiation complex]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Cui2008 - in vitro transcriptional response of zinc homeostasis system in Escherichia coli,Vector=Reactions[Formation of transcription initiation complex],ParameterGroup=Parameters,Parameter=k1a" value="0.02" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Cui2008 - in vitro transcriptional response of zinc homeostasis system in Escherichia coli,Vector=Values[k2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Cui2008 - in vitro transcriptional response of zinc homeostasis system in Escherichia coli,Vector=Reactions[Disassociation of transcription initiation complex]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Cui2008 - in vitro transcriptional response of zinc homeostasis system in Escherichia coli,Vector=Reactions[Disassociation of transcription initiation complex],ParameterGroup=Parameters,Parameter=k1" value="0.29999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Cui2008 - in vitro transcriptional response of zinc homeostasis system in Escherichia coli,Vector=Values[k_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
      <StateTemplateVariable objectReference="ModelValue_3"/>
      <StateTemplateVariable objectReference="ModelValue_4"/>
      <StateTemplateVariable objectReference="ModelValue_5"/>
      <StateTemplateVariable objectReference="ModelValue_6"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 0 2408856342800000 15055352142500000 602214085700000 0 30110704285000000 0 1 44100000000 0.0089999999999999993 0.90000000000000002 0.02 0.29999999999999999 1.0000000000000001e-05 1 
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
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="450"/>
        <Parameter name="StepSize" type="float" value="0.10000000000000001"/>
        <Parameter name="Duration" type="float" value="45"/>
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
    <PlotSpecification name="Concentrations, Volumes, and Global Quantity Values" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[Py]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Cui2008 - in vitro transcriptional response of zinc homeostasis system in Escherichia coli,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Cui2008 - in vitro transcriptional response of zinc homeostasis system in Escherichia coli,Vector=Compartments[Cell],Vector=Metabolites[Py],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Py1]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Cui2008 - in vitro transcriptional response of zinc homeostasis system in Escherichia coli,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Cui2008 - in vitro transcriptional response of zinc homeostasis system in Escherichia coli,Vector=Compartments[Cell],Vector=Metabolites[Py1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Rw]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Cui2008 - in vitro transcriptional response of zinc homeostasis system in Escherichia coli,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Cui2008 - in vitro transcriptional response of zinc homeostasis system in Escherichia coli,Vector=Compartments[Cell],Vector=Metabolites[Rw],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Concentrations, Volumes, and Global Quantity Values 1" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[Dw]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Cui2008 - in vitro transcriptional response of zinc homeostasis system in Escherichia coli,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Cui2008 - in vitro transcriptional response of zinc homeostasis system in Escherichia coli,Vector=Compartments[Cell],Vector=Metabolites[Dw],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Qw1]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Cui2008 - in vitro transcriptional response of zinc homeostasis system in Escherichia coli,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Cui2008 - in vitro transcriptional response of zinc homeostasis system in Escherichia coli,Vector=Compartments[Cell],Vector=Metabolites[Qw1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Qw2]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Cui2008 - in vitro transcriptional response of zinc homeostasis system in Escherichia coli,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Cui2008 - in vitro transcriptional response of zinc homeostasis system in Escherichia coli,Vector=Compartments[Cell],Vector=Metabolites[Qw2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <ListOfLayouts xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <Layout key="Layout_2" name="COPASI autolayout">
      <Dimensions width="135.2460079093571" height="88.113496424889547"/>
      <ListOfMetabGlyphs>
        <MetaboliteGlyph key="Layout_3" name="MetabGlyph" metabolite="">
          <BoundingBox>
            <Position x="385.57386798107655" y="488.07363925932259"/>
            <Dimensions width="52" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_4" name="MetabGlyph" metabolite="">
          <BoundingBox>
            <Position x="366.9765242979629" y="876.58310221705688"/>
            <Dimensions width="36" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_5" name="MetabGlyph" metabolite="">
          <BoundingBox>
            <Position x="88.510193198007073" y="708.49990658822389"/>
            <Dimensions width="68" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_6" name="MetabGlyph" metabolite="">
          <BoundingBox>
            <Position x="1318.1278445985918" y="1006.4093411086851"/>
            <Dimensions width="52" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_7" name="MetabGlyph" metabolite="">
          <BoundingBox>
            <Position x="193.74037830799352" y="504.30312905251594"/>
            <Dimensions width="36" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_8" name="MetabGlyph" metabolite="">
          <BoundingBox>
            <Position x="1196.3184794805111" y="430.75884466988828"/>
            <Dimensions width="52" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_9" name="MetabGlyph" metabolite="">
          <BoundingBox>
            <Position x="750.64489308965767" y="359.8513531064491"/>
            <Dimensions width="52" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_10" name="MetabGlyph" metabolite="">
          <BoundingBox>
            <Position x="1301.110718566526" y="601.60246806176474"/>
            <Dimensions width="52" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_11" name="MetabGlyph" metabolite="">
          <BoundingBox>
            <Position x="1462.3355321663093" y="480.99360683132181"/>
            <Dimensions width="52" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_12" name="MetabGlyph" metabolite="">
          <BoundingBox>
            <Position x="1156.8689031508711" y="1126.768385615871"/>
            <Dimensions width="36" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_13" name="MetabGlyph" metabolite="Metabolite_6">
          <BoundingBox>
            <Position x="934.53053327426096" y="263.21278206909119"/>
            <Dimensions width="68" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_14" name="MetabGlyph" metabolite="Metabolite_0">
          <BoundingBox>
            <Position x="1018.8377381586397" y="258.90870450411239"/>
            <Dimensions width="36" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_15" name="MetabGlyph" metabolite="Metabolite_1">
          <BoundingBox>
            <Position x="974.63373966281961" y="409.70125334954082"/>
            <Dimensions width="52" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_16" name="MetabGlyph" metabolite="Metabolite_4">
          <BoundingBox>
            <Position x="881.97742064506565" y="663.53787851040852"/>
            <Dimensions width="52" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_17" name="MetabGlyph" metabolite="Metabolite_5">
          <BoundingBox>
            <Position x="1036.2588039017146" y="551.32413443478436"/>
            <Dimensions width="52" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_18" name="MetabGlyph" metabolite="">
          <BoundingBox>
            <Position x="1499.7614137170749" y="282.66924211829792"/>
            <Dimensions width="36" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_19" name="MetabGlyph" metabolite="">
          <BoundingBox>
            <Position x="994.68702367843434" y="1244.4668646029713"/>
            <Dimensions width="36" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_20" name="MetabGlyph" metabolite="">
          <BoundingBox>
            <Position x="494.21066196333777" y="658.47829948934668"/>
            <Dimensions width="52" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_21" name="MetabGlyph" metabolite="">
          <BoundingBox>
            <Position x="1282.6842570564258" y="5.2996158877649577"/>
            <Dimensions width="36" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_22" name="MetabGlyph" metabolite="">
          <BoundingBox>
            <Position x="562.21570536836407" y="922.25094598039686"/>
            <Dimensions width="36" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_23" name="MetabGlyph" metabolite="">
          <BoundingBox>
            <Position x="1317.4919304005816" y="805.90956226173876"/>
            <Dimensions width="52" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_24" name="MetabGlyph" metabolite="">
          <BoundingBox>
            <Position x="670.06534162786193" y="754.65712137421269"/>
            <Dimensions width="52" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_25" name="MetabGlyph" metabolite="">
          <BoundingBox>
            <Position x="0" y="1048.9134292107374"/>
            <Dimensions width="52" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_26" name="MetabGlyph" metabolite="">
          <BoundingBox>
            <Position x="585.91195174017594" y="480.23909384071976"/>
            <Dimensions width="52" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_27" name="MetabGlyph" metabolite="Metabolite_2">
          <BoundingBox>
            <Position x="924.80952587350566" y="549.29857811045804"/>
            <Dimensions width="36" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_28" name="MetabGlyph" metabolite="Metabolite_3">
          <BoundingBox>
            <Position x="778.09863382774256" y="559.29317140555122"/>
            <Dimensions width="36" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_29" name="MetabGlyph" metabolite="">
          <BoundingBox>
            <Position x="302.65942184989308" y="677.92795769015538"/>
            <Dimensions width="36" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_30" name="MetabGlyph" metabolite="">
          <BoundingBox>
            <Position x="1465.1938704386812" y="1234.5137682156528"/>
            <Dimensions width="36" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_31" name="MetabGlyph" metabolite="">
          <BoundingBox>
            <Position x="339.11445942381943" y="295.13192005872952"/>
            <Dimensions width="36" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_32" name="MetabGlyph" metabolite="">
          <BoundingBox>
            <Position x="671.16792292811442" y="0"/>
            <Dimensions width="36" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_33" name="MetabGlyph" metabolite="">
          <BoundingBox>
            <Position x="1141.4684330414439" y="726.44959308549551"/>
            <Dimensions width="36" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_34" name="MetabGlyph" metabolite="">
          <BoundingBox>
            <Position x="1134.1413336699534" y="926.85709265345758"/>
            <Dimensions width="52" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_35" name="MetabGlyph" metabolite="">
          <BoundingBox>
            <Position x="950.53694231921691" y="858.24177307707942"/>
            <Dimensions width="36" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_36" name="MetabGlyph" metabolite="">
          <BoundingBox>
            <Position x="1494.5235312522491" y="711.92112138572338"/>
            <Dimensions width="52" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_37" name="MetabGlyph" metabolite="">
          <BoundingBox>
            <Position x="616.69887665166516" y="210.90731421505916"/>
            <Dimensions width="52" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_38" name="MetabGlyph" metabolite="">
          <BoundingBox>
            <Position x="923.81984904012745" y="1056.9473045058321"/>
            <Dimensions width="36" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_39" name="MetabGlyph" metabolite="">
          <BoundingBox>
            <Position x="755.71945187725396" y="935.88694737085552"/>
            <Dimensions width="52" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
      </ListOfMetabGlyphs>
      <ListOfReactionGlyphs>
        <ReactionGlyph key="Layout_40" name="ReactionGlyph" reaction="Reaction_1">
          <BoundingBox>
            <Position x="974.98484355071741" y="344.85019192945492"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="974.8823237480359" y="352.2822174326019"/>
                <End x="975.08736335339893" y="337.41816642630795"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_41" name="MetabReferenceGlyph" metaboliteGlyph="Layout_15" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="974.8823237480359" y="352.2822174326019"/>
                    <End x="991.91350650102163" y="404.70125334954082"/>
                    <BasePoint1 x="974.67728414267276" y="367.14626843889573"/>
                    <BasePoint2 x="983.2441354205065" y="389.63977364579176"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_42" name="MetabReferenceGlyph" metaboliteGlyph="Layout_13" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="975.08736335339893" y="337.41816642630795"/>
                    <End x="971.36405215230479" y="296.21278206909119"/>
                    <BasePoint1 x="975.29240295876207" y="322.55411542001406"/>
                    <BasePoint2 x="973.37948745687413" y="305.66743599297911"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_43" name="MetabReferenceGlyph" metaboliteGlyph="Layout_14" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="975.08736335339893" y="337.41816642630795"/>
                    <End x="1013.8377381586397" y="291.46160453069325"/>
                    <BasePoint1 x="975.29240295876207" y="322.55411542001406"/>
                    <BasePoint2 x="994.61633046004158" y="303.29184722378017"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_44" name="ReactionGlyph" reaction="Reaction_0">
          <BoundingBox>
            <Position x="1032.7434896632276" y="344.42577672713378"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1032.8460094659092" y="336.99375122398681"/>
                <End x="1032.640969860546" y="351.85780223028075"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_45" name="MetabReferenceGlyph" metaboliteGlyph="Layout_14" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="1032.8460094659092" y="336.99375122398681"/>
                    <End x="1035.3760226525446" y="291.90870450411239"/>
                    <BasePoint1 x="1033.0510490712722" y="322.12970021769291"/>
                    <BasePoint2 x="1034.2647957632491" y="303.30318960932914"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_46" name="MetabReferenceGlyph" metaboliteGlyph="Layout_13" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="1032.8460094659092" y="336.99375122398681"/>
                    <End x="995.82291776260718" y="296.21278206909119"/>
                    <BasePoint1 x="1033.0510490712722" y="322.12970021769291"/>
                    <BasePoint2 x="1014.4882433182804" y="305.45522839181854"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_47" name="MetabReferenceGlyph" metaboliteGlyph="Layout_15" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="1032.640969860546" y="351.85780223028075"/>
                    <End x="1011.238302365427" y="404.70125334954082"/>
                    <BasePoint1 x="1032.4359302551829" y="366.72185323657459"/>
                    <BasePoint2 x="1021.7858564089643" y="389.42756604463119"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_48" name="ReactionGlyph" reaction="Reaction_2">
          <BoundingBox>
            <Position x="1026.4862627099674" y="505.62531789693094"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1021.9594041532898" y="502.03410696169169"/>
                <End x="1031.0131212666449" y="509.21652883217018"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_49" name="MetabReferenceGlyph" metaboliteGlyph="Layout_27" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="1021.9594041532898" y="502.03410696169169"/>
                    <End x="962.26734204914544" y="544.29857811045804"/>
                    <BasePoint1 x="1012.9056870399346" y="494.8516850912132"/>
                    <BasePoint2 x="985.32308526620125" y="517.779526133216"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_50" name="MetabReferenceGlyph" metaboliteGlyph="Layout_15" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="1021.9594041532898" y="502.03410696169169"/>
                    <End x="1003.9108385427216" y="442.70125334954082"/>
                    <BasePoint1 x="1012.9056870399346" y="494.8516850912132"/>
                    <BasePoint2 x="1006.1448335129894" y="466.98086375275739"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_51" name="MetabReferenceGlyph" metaboliteGlyph="Layout_17" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="1031.0131212666449" y="509.21652883217018"/>
                    <End x="1053.6405972288264" y="546.32413443478436"/>
                    <BasePoint1 x="1040.0668383800003" y="516.39895070264868"/>
                    <BasePoint2 x="1049.1171470827521" y="533.15714803633614"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_52" name="ReactionGlyph" reaction="Reaction_3">
          <BoundingBox>
            <Position x="984.52380776886002" y="505.66428504335181"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="989.05066632553758" y="509.25549597859106"/>
                <End x="979.99694921218247" y="502.07307410811256"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_53" name="MetabReferenceGlyph" metaboliteGlyph="Layout_17" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="989.05066632553758" y="509.25549597859106"/>
                    <End x="1037.3247003051233" y="546.32413443478436"/>
                    <BasePoint1 x="998.1043834388928" y="516.43791784906955"/>
                    <BasePoint2 x="1019.9779711503469" y="533.17663160954658"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_54" name="MetabReferenceGlyph" metaboliteGlyph="Layout_27" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="979.99694921218247" y="502.07307410811256"/>
                    <End x="950.62353881807098" y="544.29857811045804"/>
                    <BasePoint1 x="970.94323209882725" y="494.89065223763407"/>
                    <BasePoint2 x="958.51995618011028" y="517.79900970642643"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_55" name="MetabReferenceGlyph" metaboliteGlyph="Layout_15" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="979.99694921218247" y="502.07307410811256"/>
                    <End x="992.70953110751736" y="442.70125334954082"/>
                    <BasePoint1 x="970.94323209882725" y="494.89065223763407"/>
                    <BasePoint2 x="979.56295232483353" y="467.00034732596782"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_56" name="ReactionGlyph" reaction="Reaction_4">
          <BoundingBox>
            <Position x="861.17842012222627" y="624.98138808437398"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="859.25225308250424" y="619.51928789675378"/>
                <End x="863.1045871619483" y="630.44348827199417"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_57" name="MetabReferenceGlyph" metaboliteGlyph="Layout_27" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="859.25225308250424" y="619.51928789675378"/>
                    <End x="919.80952587350566" y="575.21740206762797"/>
                    <BasePoint1 x="855.39991900306006" y="608.59508752151339"/>
                    <BasePoint2 x="886.64163891842179" y="589.17519470076058"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_58" name="MetabReferenceGlyph" metaboliteGlyph="Layout_28" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="859.25225308250424" y="619.51928789675378"/>
                    <End x="819.09863382774256" y="586.9850175142268"/>
                    <BasePoint1 x="855.39991900306006" y="608.59508752151339"/>
                    <BasePoint2 x="836.28619289554024" y="595.05900242405994"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_59" name="MetabReferenceGlyph" metaboliteGlyph="Layout_16" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="863.1045871619483" y="630.44348827199417"/>
                    <End x="886.42957996139501" y="658.53787851040852"/>
                    <BasePoint1 x="866.95692124139248" y="641.36768864723456"/>
                    <BasePoint2 x="877.65633412125476" y="652.68383367263164"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_60" name="ReactionGlyph" reaction="Reaction_5">
          <BoundingBox>
            <Position x="875.81848650926713" y="585.35942880762559"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="877.74465354898916" y="590.82152899524579"/>
                <End x="873.8923194695451" y="579.8973286200054"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_61" name="MetabReferenceGlyph" metaboliteGlyph="Layout_16" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="877.74465354898916" y="590.82152899524579"/>
                    <End x="901.36422609914143" y="658.53787851040852"/>
                    <BasePoint1 x="881.59698762843334" y="601.74572937048617"/>
                    <BasePoint2 x="892.44369038364835" y="632.87285403425744"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_62" name="MetabReferenceGlyph" metaboliteGlyph="Layout_27" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="873.8923194695451" y="579.8973286200054"/>
                    <End x="919.80952587350566" y="565.09211222132444"/>
                    <BasePoint1 x="870.03998539010092" y="568.97312824476501"/>
                    <BasePoint2 x="893.96167211194222" y="564.30157013923463"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_63" name="MetabReferenceGlyph" metaboliteGlyph="Layout_28" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="873.8923194695451" y="579.8973286200054"/>
                    <End x="819.09863382774256" y="571.94939027904195"/>
                    <BasePoint1 x="870.03998539010092" y="568.97312824476501"/>
                    <BasePoint2 x="843.60622608906067" y="567.73020916809344"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
      </ListOfReactionGlyphs>
      <ListOfTextGlyphs>
        <TextGlyph key="Layout_64" name="TextGlyph" graphicalObject="Layout_3" text="unset">
          <BoundingBox>
            <Position x="385.57386798107655" y="488.07363925932259"/>
            <Dimensions width="48" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_65" name="TextGlyph" graphicalObject="Layout_4" text="unset">
          <BoundingBox>
            <Position x="366.9765242979629" y="876.58310221705688"/>
            <Dimensions width="32" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_66" name="TextGlyph" graphicalObject="Layout_5" text="unset">
          <BoundingBox>
            <Position x="88.510193198007073" y="708.49990658822389"/>
            <Dimensions width="64" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_67" name="TextGlyph" graphicalObject="Layout_6" text="unset">
          <BoundingBox>
            <Position x="1318.1278445985918" y="1006.4093411086851"/>
            <Dimensions width="48" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_68" name="TextGlyph" graphicalObject="Layout_7" text="unset">
          <BoundingBox>
            <Position x="193.74037830799352" y="504.30312905251594"/>
            <Dimensions width="32" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_69" name="TextGlyph" graphicalObject="Layout_8" text="unset">
          <BoundingBox>
            <Position x="1196.3184794805111" y="430.75884466988828"/>
            <Dimensions width="48" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_70" name="TextGlyph" graphicalObject="Layout_9" text="unset">
          <BoundingBox>
            <Position x="750.64489308965767" y="359.8513531064491"/>
            <Dimensions width="48" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_71" name="TextGlyph" graphicalObject="Layout_10" text="unset">
          <BoundingBox>
            <Position x="1301.110718566526" y="601.60246806176474"/>
            <Dimensions width="48" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_72" name="TextGlyph" graphicalObject="Layout_11" text="unset">
          <BoundingBox>
            <Position x="1462.3355321663093" y="480.99360683132181"/>
            <Dimensions width="48" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_73" name="TextGlyph" graphicalObject="Layout_12" text="unset">
          <BoundingBox>
            <Position x="1156.8689031508711" y="1126.768385615871"/>
            <Dimensions width="32" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_74" name="TextGlyph" graphicalObject="Layout_13" originOfText="Metabolite_6">
          <BoundingBox>
            <Position x="934.53053327426096" y="263.21278206909119"/>
            <Dimensions width="64" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_75" name="TextGlyph" graphicalObject="Layout_14" originOfText="Metabolite_0">
          <BoundingBox>
            <Position x="1018.8377381586397" y="258.90870450411239"/>
            <Dimensions width="32" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_76" name="TextGlyph" graphicalObject="Layout_15" originOfText="Metabolite_1">
          <BoundingBox>
            <Position x="974.63373966281961" y="409.70125334954082"/>
            <Dimensions width="48" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_77" name="TextGlyph" graphicalObject="Layout_16" originOfText="Metabolite_4">
          <BoundingBox>
            <Position x="881.97742064506565" y="663.53787851040852"/>
            <Dimensions width="48" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_78" name="TextGlyph" graphicalObject="Layout_17" originOfText="Metabolite_5">
          <BoundingBox>
            <Position x="1036.2588039017146" y="551.32413443478436"/>
            <Dimensions width="48" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_79" name="TextGlyph" graphicalObject="Layout_18" text="unset">
          <BoundingBox>
            <Position x="1499.7614137170749" y="282.66924211829792"/>
            <Dimensions width="32" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_80" name="TextGlyph" graphicalObject="Layout_19" text="unset">
          <BoundingBox>
            <Position x="994.68702367843434" y="1244.4668646029713"/>
            <Dimensions width="32" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_81" name="TextGlyph" graphicalObject="Layout_20" text="unset">
          <BoundingBox>
            <Position x="494.21066196333777" y="658.47829948934668"/>
            <Dimensions width="48" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_82" name="TextGlyph" graphicalObject="Layout_21" text="unset">
          <BoundingBox>
            <Position x="1282.6842570564258" y="5.2996158877649577"/>
            <Dimensions width="32" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_83" name="TextGlyph" graphicalObject="Layout_22" text="unset">
          <BoundingBox>
            <Position x="562.21570536836407" y="922.25094598039686"/>
            <Dimensions width="32" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_84" name="TextGlyph" graphicalObject="Layout_23" text="unset">
          <BoundingBox>
            <Position x="1317.4919304005816" y="805.90956226173876"/>
            <Dimensions width="48" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_85" name="TextGlyph" graphicalObject="Layout_24" text="unset">
          <BoundingBox>
            <Position x="670.06534162786193" y="754.65712137421269"/>
            <Dimensions width="48" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_86" name="TextGlyph" graphicalObject="Layout_25" text="unset">
          <BoundingBox>
            <Position x="0" y="1048.9134292107374"/>
            <Dimensions width="48" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_87" name="TextGlyph" graphicalObject="Layout_26" text="unset">
          <BoundingBox>
            <Position x="585.91195174017594" y="480.23909384071976"/>
            <Dimensions width="48" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_88" name="TextGlyph" graphicalObject="Layout_27" originOfText="Metabolite_2">
          <BoundingBox>
            <Position x="924.80952587350566" y="549.29857811045804"/>
            <Dimensions width="32" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_89" name="TextGlyph" graphicalObject="Layout_28" originOfText="Metabolite_3">
          <BoundingBox>
            <Position x="778.09863382774256" y="559.29317140555122"/>
            <Dimensions width="32" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_90" name="TextGlyph" graphicalObject="Layout_29" text="unset">
          <BoundingBox>
            <Position x="302.65942184989308" y="677.92795769015538"/>
            <Dimensions width="32" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_91" name="TextGlyph" graphicalObject="Layout_30" text="unset">
          <BoundingBox>
            <Position x="1465.1938704386812" y="1234.5137682156528"/>
            <Dimensions width="32" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_92" name="TextGlyph" graphicalObject="Layout_31" text="unset">
          <BoundingBox>
            <Position x="339.11445942381943" y="295.13192005872952"/>
            <Dimensions width="32" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_93" name="TextGlyph" graphicalObject="Layout_32" text="unset">
          <BoundingBox>
            <Position x="671.16792292811442" y="0"/>
            <Dimensions width="32" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_94" name="TextGlyph" graphicalObject="Layout_33" text="unset">
          <BoundingBox>
            <Position x="1141.4684330414439" y="726.44959308549551"/>
            <Dimensions width="32" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_95" name="TextGlyph" graphicalObject="Layout_34" text="unset">
          <BoundingBox>
            <Position x="1134.1413336699534" y="926.85709265345758"/>
            <Dimensions width="48" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_96" name="TextGlyph" graphicalObject="Layout_35" text="unset">
          <BoundingBox>
            <Position x="950.53694231921691" y="858.24177307707942"/>
            <Dimensions width="32" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_97" name="TextGlyph" graphicalObject="Layout_36" text="unset">
          <BoundingBox>
            <Position x="1494.5235312522491" y="711.92112138572338"/>
            <Dimensions width="48" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_98" name="TextGlyph" graphicalObject="Layout_37" text="unset">
          <BoundingBox>
            <Position x="616.69887665166516" y="210.90731421505916"/>
            <Dimensions width="48" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_99" name="TextGlyph" graphicalObject="Layout_38" text="unset">
          <BoundingBox>
            <Position x="923.81984904012745" y="1056.9473045058321"/>
            <Dimensions width="32" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_100" name="TextGlyph" graphicalObject="Layout_39" text="unset">
          <BoundingBox>
            <Position x="755.71945187725396" y="935.88694737085552"/>
            <Dimensions width="48" height="24"/>
          </BoundingBox>
        </TextGlyph>
      </ListOfTextGlyphs>
    </Layout>
  </ListOfLayouts>
  <SBMLReference file="Cui2008_ZincHomeostasisSystem.xml">
    <SBMLMap SBMLid="Cell" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="Disassociation_of_DNA_binding_complex" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="Disassociation_of_transcription_initiation_complex" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="Dissociation_of_Zn4Zur_complex" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="Dw" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="Formation_of_DNA_binding_complex" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="Formation_of_the_Zn4Zur_complex" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="Formation_of_transcription_initiation_complex" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="Py" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="Py1" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="Qw1" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="Qw2" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="Rate_Law_for_R1_3" COPASIkey="Function_41"/>
    <SBMLMap SBMLid="Rate_Law_for_R3" COPASIkey="Function_40"/>
    <SBMLMap SBMLid="Rw" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="Zn" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="Zn_2" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="k1a" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="k2" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="k_1" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="k_2" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="r3" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="r4" COPASIkey="ModelValue_1"/>
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
<dcterms:W3CDTF>2020-10-09T13:18:17Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2020-10-09T13:18:17Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2020-10-09T13:18:17Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2020-10-09T13:18:17Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2020-10-09T13:18:17Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2020-10-09T13:18:17Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2020-10-09T13:18:17Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro*#
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_65" name="minute" symbol="min">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_64">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-10-09T13:18:17Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        60*s
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
