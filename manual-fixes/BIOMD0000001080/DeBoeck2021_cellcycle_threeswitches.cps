<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.40 (Build 275) (http://www.copasi.org) at 2024-01-26T16:23:00Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="40" versionDevel="275" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_42" name="xi" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_42">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        1+alpha*x*(x-1)*(x-r)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_275" name="x" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_274" name="alpha" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_273" name="r" order="2" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="Function for _J0" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_43">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        d_syn/default_compartment
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_276" name="d_syn" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_266" name="default_compartment" order="1" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="Function for _J1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_44">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        d_deg*CycD*(APC+delta_d)/default_compartment
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_277" name="APC" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_272" name="CycD" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_278" name="d_deg" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_279" name="default_compartment" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_280" name="delta_d" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="Function for _J2" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_45">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        b_syn*E2F/default_compartment
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_285" name="E2F" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_284" name="b_syn" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_283" name="default_compartment" order="2" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="Function for _J3" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_46">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        b_deg*CycB*(APC+delta_b)/default_compartment
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_286" name="APC" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_281" name="CycB" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_282" name="b_deg" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_287" name="default_compartment" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_288" name="delta_b" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="DeBoeck2021 - Modular approach to modeling the cell cycle, 5 ODE model with 3 bistable switches" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mol" type="deterministic" avogadroConstant="6.0221417899999999e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go.ref:GO:0007049"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:go.ref:GO:0051301"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C19987"/>
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/mamo/MAMO_0000045"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:34379640"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2023-06-23T10:24:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>ktiwari@ebi.ac.uk</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Tiwari</vCard:Family>
            <vCard:Given>Krishna</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>EMBL-EBI</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
    <CopasiMT:is rdf:resource="urn:miriam:biomodels.db:MODEL2212060002"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:ncit:C12508"/>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      <body xmlns="http://www.w3.org/1999/xhtml">
    <p>Model of the mammalian cell cycle as a chain of bistable switches. 
There are three bistable responses: response of E2F to Cyclin D, of Cdk1 to Cyclin B and of APC/C to Cdk1 activity. 
The model for the given parameters admits a complex limit cycle characterized by transitions through the bistable switches. 
The bistable responses are modeled directly using a functional motif, not through biochemical interactions. This modular approach allows to easily modify the properties of the bistable response curves. This version of the model correspond to Fig. 7 in the publication. 
We illustrated how, using this model, the system can be coupled to the circadian clock, by periodically modifying thresholds of one of the switches. We also illustrated how to implement the restriction point checkpoint using this model (those applications are not coded in the associated sbml file and can be seen in Fig. 8 of the publication). 

A related, simpler model that illustrates the bistable motif is MODEL2212060001</p>
  </body>
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="default_compartment" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000410"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="CycD" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go.ref:P24385"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="CycB" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P14635"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="d_syn" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_0">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="d_deg" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_1">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="APC" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_2">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go.ref:GO:0005680"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          1/&lt;CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[epsilon_apc],Reference=Value>*(&lt;CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[Cdk],Reference=Value>^&lt;CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[n],Reference=Value>/((&lt;CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[K_cdk_apc],Reference=Value>*xi(&lt;CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[APC],Reference=Value>,&lt;CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[alpha_apc],Reference=Value>,&lt;CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[r],Reference=Value>))^&lt;CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[n],Reference=Value>+&lt;CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[Cdk],Reference=Value>^&lt;CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[n],Reference=Value>)-&lt;CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[APC],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="delta_d" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_3">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="b_syn" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_4">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="E2F" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_5">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q01094"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          1/&lt;CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[epsilon_e2f],Reference=Value>*(&lt;CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Compartments[default_compartment],Vector=Metabolites[CycD],Reference=Concentration>^&lt;CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[n],Reference=Value>/((&lt;CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[K_cyc_e2f],Reference=Value>*xi(&lt;CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[E2F],Reference=Value>,&lt;CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[alpha_e2f],Reference=Value>,&lt;CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[r],Reference=Value>))^&lt;CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[n],Reference=Value>+&lt;CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Compartments[default_compartment],Vector=Metabolites[CycD],Reference=Concentration>^&lt;CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[n],Reference=Value>)-&lt;CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[E2F],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="b_deg" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_6">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="delta_b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_7">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="epsilon_e2f" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_8">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="n" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_9">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="K_cyc_e2f" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_10">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="alpha_e2f" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_11">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="r" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_12">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="Cdk" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_13">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P06493"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          1/&lt;CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[epsilon_cdk],Reference=Value>*(&lt;CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Compartments[default_compartment],Vector=Metabolites[CycB],Reference=Concentration>^&lt;CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[n],Reference=Value>/((&lt;CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[K_cyc_cdk],Reference=Value>*xi(&lt;CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[Cdk],Reference=Value>/&lt;CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Compartments[default_compartment],Vector=Metabolites[CycB],Reference=Concentration>,&lt;CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[alpha_cdk],Reference=Value>,&lt;CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[r],Reference=Value>))^&lt;CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[n],Reference=Value>+&lt;CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Compartments[default_compartment],Vector=Metabolites[CycB],Reference=Concentration>^&lt;CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[n],Reference=Value>)*&lt;CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Compartments[default_compartment],Vector=Metabolites[CycB],Reference=Concentration>-&lt;CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[Cdk],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="epsilon_cdk" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_14">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="K_cyc_cdk" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_15">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="alpha_cdk" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_17" name="epsilon_apc" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_17">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_18" name="K_cdk_apc" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_18">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_19" name="alpha_apc" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_19">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_20" name="CycD_max" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_20">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Compartments[default_compartment],Vector=Metabolites[CycD],Reference=Concentration>/185.74
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_21" name="CycB_max" simulationType="assignment" addNoise="false">
        <Expression>
          &lt;CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Compartments[default_compartment],Vector=Metabolites[CycB],Reference=Concentration>/45.92
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_22" name="APC_max" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_22">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[APC],Reference=Value>/0.999992
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_23" name="E2F_max" simulationType="assignment" addNoise="false">
        <Expression>
          &lt;CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[E2F],Reference=Value>/0.998646
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_24" name="Cdk_max" simulationType="assignment" addNoise="false">
        <Expression>
          &lt;CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[Cdk],Reference=Value>/44
        </Expression>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="CycD_Synthesis" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C61408"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7456" name="d_syn" value="0.15"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Compartments[default_compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="CycD_degradation" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7455" name="APC" value="1e-12"/>
          <Constant key="Parameter_7453" name="d_deg" value="0.009"/>
          <Constant key="Parameter_7452" name="delta_d" value="0.05"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Compartments[default_compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="CycB_synthesis" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C61408"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7454" name="E2F" value="1e-12"/>
          <Constant key="Parameter_7451" name="b_syn" value="0.03"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Compartments[default_compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="CycB_degradation" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7450" name="APC" value="1e-12"/>
          <Constant key="Parameter_7448" name="b_deg" value="0.003"/>
          <Constant key="Parameter_7447" name="delta_b" value="0.05"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Compartments[default_compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="ModelValue_7"/>
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
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Compartments[default_compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Compartments[default_compartment],Vector=Metabolites[CycD]" value="4.1914106858399994e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Compartments[default_compartment],Vector=Metabolites[CycB]" value="1.98128464891e+25" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[d_syn]" value="0.14999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[d_deg]" value="0.0089999999999999993" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[APC]" value="9.9999999999999998e-13" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[delta_d]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[b_syn]" value="0.029999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[E2F]" value="9.9999999999999998e-13" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[b_deg]" value="0.0030000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[delta_b]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[epsilon_e2f]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[n]" value="15" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[K_cyc_e2f]" value="120" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[alpha_e2f]" value="5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[r]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[Cdk]" value="0.80000000000000004" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[epsilon_cdk]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[K_cyc_cdk]" value="40" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[alpha_cdk]" value="5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[epsilon_apc]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[K_cdk_apc]" value="20" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[alpha_apc]" value="5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[CycD_max]" value="0.37471734682890057" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[CycB_max]" value="0.71646341463414631" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[APC_max]" value="1.0000080000640004e-12" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[E2F_max]" value="1.0013558358016753e-12" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[Cdk_max]" value="0.018181818181818184" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Reactions[CycD_Synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Reactions[CycD_Synthesis],ParameterGroup=Parameters,Parameter=d_syn" value="0.14999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[d_syn],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Reactions[CycD_degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Reactions[CycD_degradation],ParameterGroup=Parameters,Parameter=APC" value="9.9999999999999998e-13" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[APC],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Reactions[CycD_degradation],ParameterGroup=Parameters,Parameter=d_deg" value="0.0089999999999999993" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[d_deg],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Reactions[CycD_degradation],ParameterGroup=Parameters,Parameter=delta_d" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[delta_d],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Reactions[CycB_synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Reactions[CycB_synthesis],ParameterGroup=Parameters,Parameter=E2F" value="9.9999999999999998e-13" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[E2F],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Reactions[CycB_synthesis],ParameterGroup=Parameters,Parameter=b_syn" value="0.029999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[b_syn],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Reactions[CycB_degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Reactions[CycB_degradation],ParameterGroup=Parameters,Parameter=APC" value="9.9999999999999998e-13" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[APC],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Reactions[CycB_degradation],ParameterGroup=Parameters,Parameter=b_deg" value="0.0030000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[b_deg],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Reactions[CycB_degradation],ParameterGroup=Parameters,Parameter=delta_b" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[delta_b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
      <StateTemplateVariable objectReference="ModelValue_5"/>
      <StateTemplateVariable objectReference="ModelValue_13"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="ModelValue_20"/>
      <StateTemplateVariable objectReference="ModelValue_21"/>
      <StateTemplateVariable objectReference="ModelValue_22"/>
      <StateTemplateVariable objectReference="ModelValue_23"/>
      <StateTemplateVariable objectReference="ModelValue_24"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="ModelValue_3"/>
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
    </StateTemplate>
    <InitialState type="initialState">
      0 9.9999999999999998e-13 9.9999999999999998e-13 0.80000000000000004 4.1914106858399994e+25 1.98128464891e+25 0.37471734682890057 0.71646341463414631 1.0000080000640004e-12 1.0013558358016753e-12 0.018181818181818184 1 0.14999999999999999 0.0089999999999999993 0.050000000000000003 0.029999999999999999 0.0030000000000000001 0.050000000000000003 0.01 15 120 5 0.5 0.01 40 5 0.01 20 5 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_17" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
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
    <Task key="Task_18" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_12" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="3000"/>
        <Parameter name="StepSize" type="float" value="1"/>
        <Parameter name="Duration" type="float" value="3000"/>
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
    <Task key="Task_19" name="Scan" type="scan" scheduled="false" updateModel="false">
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
    <Task key="Task_20" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_13" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_21" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_14" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_22" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_15" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_23" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_16" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_17"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_24" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_17" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_25" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_18" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_26" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_19" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_27" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Report reference="Report_20" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_28" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
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
    <Task key="Task_29" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_21" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_17"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
    <Task key="Task_30" name="Time-Course Sensitivities" type="timeSensitivities" scheduled="false" updateModel="false">
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
    <Report key="Report_12" name="Time-Course" taskType="timeCourse" separator="&#x09;" precision="6">
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
    <Report key="Report_13" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_14" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
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
    <Report key="Report_15" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
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
    <Report key="Report_16" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_17" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
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
    <Report key="Report_18" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_19" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
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
    <Report key="Report_20" name="Moieties" taskType="moieties" separator="&#x09;" precision="6">
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
    <Report key="Report_21" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
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
      <Parameter name="x axis" type="string" value=""/>
      <Parameter name="y axis" type="string" value=""/>
      <Parameter name="z axis" type="string" value=""/>
      <Parameter name="plot engine" type="string" value="QWT"/>
      <ListOfPlotItems>
        <PlotItem name="Values[E2F]|[CycD]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Compartments[default_compartment],Vector=Metabolites[CycD],Reference=Concentration"/>
            <ChannelSpec cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[E2F],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="plot_1" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <Parameter name="x axis" type="string" value=""/>
      <Parameter name="y axis" type="string" value=""/>
      <Parameter name="z axis" type="string" value=""/>
      <Parameter name="plot engine" type="string" value="QWT"/>
      <ListOfPlotItems>
        <PlotItem name="Values[Cdk]|[CycB]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Compartments[default_compartment],Vector=Metabolites[CycB],Reference=Concentration"/>
            <ChannelSpec cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[Cdk],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Concentrations, Volumes, and Global Quantity Values" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <Parameter name="plot engine" type="string" value="QCustomPlot"/>
      <ListOfPlotItems>
        <PlotItem name="[CycD]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Compartments[default_compartment],Vector=Metabolites[CycD],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CycB]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Compartments[default_compartment],Vector=Metabolites[CycB],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[APC]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[APC],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[E2F]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[E2F],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Cdk]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[Cdk],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[CycD_max]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[CycD_max],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[CycB_max]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[CycB_max],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[APC_max]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[APC_max],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[E2F_max]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[E2F_max],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="CycB_max" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <Parameter name="x axis" type="string" value=""/>
      <Parameter name="y axis" type="string" value=""/>
      <Parameter name="z axis" type="string" value=""/>
      <Parameter name="plot engine" type="string" value="QWT"/>
      <ListOfPlotItems>
        <PlotItem name="Values[CycB_max]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[CycB_max],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="CycD_max" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <Parameter name="x axis" type="string" value=""/>
      <Parameter name="y axis" type="string" value=""/>
      <Parameter name="z axis" type="string" value=""/>
      <Parameter name="plot engine" type="string" value="QWT"/>
      <ListOfPlotItems>
        <PlotItem name="Values[CycD_max]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[CycD_max],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="APC_max" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <Parameter name="x axis" type="string" value=""/>
      <Parameter name="y axis" type="string" value=""/>
      <Parameter name="z axis" type="string" value=""/>
      <Parameter name="plot engine" type="string" value="QWT"/>
      <ListOfPlotItems>
        <PlotItem name="Values[APC_max]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[APC_max],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="E2F_max" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <Parameter name="x axis" type="string" value=""/>
      <Parameter name="y axis" type="string" value=""/>
      <Parameter name="z axis" type="string" value=""/>
      <Parameter name="plot engine" type="string" value="QWT"/>
      <ListOfPlotItems>
        <PlotItem name="Values[E2F_max]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[E2F_max],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Cdk" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <Parameter name="x axis" type="string" value=""/>
      <Parameter name="y axis" type="string" value=""/>
      <Parameter name="z axis" type="string" value=""/>
      <Parameter name="plot engine" type="string" value="QWT"/>
      <ListOfPlotItems>
        <PlotItem name="Values[Cdk_max]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=DeBoeck2021 - Modular approach to modeling the cell cycle\, 5 ODE model with 3 bistable switches,Vector=Values[Cdk_max],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="cellcycle_threeswitches.xml">
    <SBMLMap SBMLid="APC" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="Cdk" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="CycB" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="CycD" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="E2F" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="K_cdk_apc" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="K_cyc_cdk" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="K_cyc_e2f" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="_J0" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="_J1" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="_J2" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="_J3" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="alpha_apc" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="alpha_cdk" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="alpha_e2f" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="b_deg" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="b_syn" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="d_deg" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="d_syn" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="default_compartment" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="delta_b" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="delta_d" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="epsilon_apc" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="epsilon_cdk" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="epsilon_e2f" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="n" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="r" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="xi" COPASIkey="Function_42"/>
  </SBMLReference>
  <ListOfUnitDefinitions>
    <UnitDefinition key="Unit_1" name="meter" symbol="m">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_0">
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
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro*#
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
