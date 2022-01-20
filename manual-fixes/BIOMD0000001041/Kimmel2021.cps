<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.33 (Build 246) (http://www.copasi.org) at 2021-09-01T13:53:55Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="33" versionDevel="246" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_40" name="Rate Law for Normal_T_cell_population_growth" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        -r_N*N*log((N+C)/K_N)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_264" name="r_N" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_263" name="N" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_262" name="C" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_261" name="K_N" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Rate Law for CAR_T_cell_population_growth" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        -r_C*C*log((N+C)/K_C)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_267" name="r_C" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_266" name="C" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_265" name="N" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_250" name="K_C" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="Rate Law for Tumour_growth" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        r_B*B
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_271" name="r_B" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_270" name="B" order="1" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="Rate Law for Tumour_killing" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        gamma_B*B*(C/(k_B+C))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_268" name="gamma_B" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_269" name="B" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_272" name="C" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_273" name="k_B" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy" simulationType="time" timeUnit="d" volumeUnit="ml" areaUnit="m²" lengthUnit="m" quantityUnit="#" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:doid:DOID:0060060"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0002837"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:mamo:MAMO_0000046"/>
    <bqbiol:hasTaxon rdf:resource="urn:miriam:taxonomy:9606"/>
    <bqbiol:isPropertyOf rdf:resource="urn:miriam:ncit:C126102"/>
    <bqbiol:isPropertyOf rdf:resource="urn:miriam:ncit:C15438"/>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:33757357"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-08-31T17:35:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>University of Cambridge</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Chen</vCard:Family>
            <vCard:Given>Emilia</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>eblc2@cam.ac.uk</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      This mathematical model of T cell-tumour interactions considering the roles of T cell competition and stochastic extinction events in CAR T cell therapy is described by the publication:
Kimmel GJ, Locke FL, Altrock PM. "The roles of T cell competition and stochastic extinction events in chimeric antigen receptor T cell therapy." Proc Biol Sci. 2021 Mar 31;288(1947):20210229.
doi: 10.1098/rspb.2021.0229

Comment:
Reproduction of Fig. 2(a) and (b) was simulated by using the fitted model parameter set given in Table 1 of the manuscript's Supplementary Material, however substituting the values of r_N and rho_C for those stated in Table 1 of the publication manuscript, i.e. r_N = 0.17 and rho_C = 0.0251.

Abstract:
Chimeric antigen receptor (CAR) T cell therapy is a remarkably effective immunotherapy that relies on in vivo expansion of engineered CAR T cells, after lymphodepletion (LD) by chemotherapy. The quantitative laws underlying this expansion and subsequent tumour eradication remain unknown. We develop a mathematical model of T cell–tumour cell interactions and demonstrate that expansion can be explained by immune reconstitution dynamics after LD and competition among T cells. CAR T cells rapidly grow and engage tumour cells but experience an emerging growth rate disadvantage compared to normal T cells. Since tumour eradication is deterministically unstable in our model, we define cure as a stochastic event, which, even when likely, can occur at variable times. However, we show that variability in timing is largely determined by patient variability. While cure events impacted by these fluctuations occur early and are narrowly distributed, progression events occur late and are more widely distributed in time. We parameterized our model using population-level CAR T cell and tumour data over time and compare our predictions with progression-free survival rates. We find that therapy could be improved by optimizing the tumour-killing rate and the CAR T cells' ability to adapt, as quantified by their carrying capacity. Our tumour extinction model can be leveraged to examine why therapy works in some patients but not others, and to better understand the interplay of deterministic and stochastic effects on outcomes. For example, our model implies that LD before a second CAR T injection is necessary.
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="compartment" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_0">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="Normal_T_cells" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:cl:CL:0000084"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="CAR_T_cells" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:cl:CL:0000084"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C137999"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="Antigen-presenting_tumour_cells" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <bqbiol:hasProperty rdf:resource="urn:miriam:chebi:CHEBI:144829"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:cl:CL:0001063"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:cl:CL:0001201"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="Total_lymphocyte_count" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:cl:CL:0000084"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C122157"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Compartments[compartment],Vector=Metabolites[Normal_T_cells],Reference=Concentration>+&lt;CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Compartments[compartment],Vector=Metabolites[CAR_T_cells],Reference=Concentration>
        </Expression>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="K_N" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <Unit>
          #/ul
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="K_C" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <Unit>
          #/ul
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="r_N" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <Unit>
          1/d
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="rho_C" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <Unit>
          1/d
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_4">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <Unit>
          d
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="r_B" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <Unit>
          1/d
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="gamma_B" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <Unit>
          1/d
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="k_B" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <Unit>
          #/ul
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="r_C" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[rho_C],Reference=Value>+&lt;CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[b],Reference=Value>*(&lt;CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Compartments[compartment],Vector=Metabolites[Total_lymphocyte_count],Reference=Concentration>-&lt;CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[K_N],Reference=Value>)^2/(&lt;CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[a],Reference=Value>*&lt;CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Compartments[compartment],Vector=Metabolites[Total_lymphocyte_count],Reference=Concentration>^2+(&lt;CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Compartments[compartment],Vector=Metabolites[Total_lymphocyte_count],Reference=Concentration>-&lt;CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[K_N],Reference=Value>)^2)
        </Expression>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="Normal_T_cell_population_growth" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0042098"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000393"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6099" name="r_N" value="0.17"/>
          <Constant key="Parameter_6097" name="K_N" value="2.5e+11"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="CAR_T_cell_population_growth" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0042098"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000393"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6100" name="r_C" value="0.550063"/>
          <Constant key="Parameter_5604" name="K_C" value="6.96e+10"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="Tumour_growth" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0008283"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000393"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5603" name="r_B" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="Tumour_killing" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0001906"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:obi:OBI_1110204"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000394"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5602" name="k_B" value="2.024e+09"/>
          <Constant key="Parameter_5601" name="gamma_B" value="1.15"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="ModelValue_8"/>
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
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Compartments[compartment],Vector=Metabolites[Normal_T_cells]" value="6" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Compartments[compartment],Vector=Metabolites[CAR_T_cells]" value="0.35999999999999999" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Compartments[compartment],Vector=Metabolites[Antigen-presenting_tumour_cells]" value="94.859999999999999" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Compartments[compartment],Vector=Metabolites[Total_lymphocyte_count]" value="6.3600000000000003" type="Species" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[K_N]" value="500" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[K_C]" value="139" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[r_N]" value="0.17000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[rho_C]" value="0.025100000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[a]" value="0.42299999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[b]" value="0.52500000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[r_B]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[gamma_B]" value="1.1499999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[k_B]" value="4.0499999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[r_C]" value="0.55006313937272056" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Reactions[Normal_T_cell_population_growth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Reactions[Normal_T_cell_population_growth],ParameterGroup=Parameters,Parameter=r_N" value="0.17000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[r_N],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Reactions[Normal_T_cell_population_growth],ParameterGroup=Parameters,Parameter=K_N" value="500" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[K_N],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Reactions[CAR_T_cell_population_growth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Reactions[CAR_T_cell_population_growth],ParameterGroup=Parameters,Parameter=r_C" value="0.55006313937272056" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[r_C],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Reactions[CAR_T_cell_population_growth],ParameterGroup=Parameters,Parameter=K_C" value="139" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[K_C],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Reactions[Tumour_growth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Reactions[Tumour_growth],ParameterGroup=Parameters,Parameter=r_B" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[r_B],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Reactions[Tumour_killing]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Reactions[Tumour_killing],ParameterGroup=Parameters,Parameter=k_B" value="4.0499999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[k_B],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Reactions[Tumour_killing],ParameterGroup=Parameters,Parameter=gamma_B" value="1.1499999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[gamma_B],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_0" name="Stochastic simulation model">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Compartments[compartment],Vector=Metabolites[Normal_T_cells]" value="1.8066422571000084e+33" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Compartments[compartment],Vector=Metabolites[CAR_T_cells]" value="1.08398535426e+32" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Compartments[compartment],Vector=Metabolites[Antigen-presenting_tumour_cells]" value="5.7126028169501998e+34" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Compartments[compartment],Vector=Metabolites[Total_lymphocyte_count]" value="1.9150407925260083e+33" type="Species" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[K_N]" value="250000000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[K_C]" value="69600000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[r_N]" value="0.17000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[rho_C]" value="0.025100000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[a]" value="0.42299999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[b]" value="0.52500000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[r_B]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[gamma_B]" value="1.1499999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[k_B]" value="2024000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[r_C]" value="0.55006313937272056" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Reactions[Normal_T_cell_population_growth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Reactions[Normal_T_cell_population_growth],ParameterGroup=Parameters,Parameter=r_N" value="0.17000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[r_N],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Reactions[Normal_T_cell_population_growth],ParameterGroup=Parameters,Parameter=K_N" value="250000000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[K_N],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Reactions[CAR_T_cell_population_growth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Reactions[CAR_T_cell_population_growth],ParameterGroup=Parameters,Parameter=r_C" value="0.55006313937272056" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[r_C],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Reactions[CAR_T_cell_population_growth],ParameterGroup=Parameters,Parameter=K_C" value="69600000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[K_C],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Reactions[Tumour_growth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Reactions[Tumour_growth],ParameterGroup=Parameters,Parameter=r_B" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[r_B],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Reactions[Tumour_killing]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Reactions[Tumour_killing],ParameterGroup=Parameters,Parameter=k_B" value="2024000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[k_B],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Reactions[Tumour_killing],ParameterGroup=Parameters,Parameter=gamma_B" value="1.1499999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[gamma_B],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_3" name="Fitted model (supplemental material)">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Compartments[compartment],Vector=Metabolites[Normal_T_cells]" value="3.6132845142e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Compartments[compartment],Vector=Metabolites[CAR_T_cells]" value="2.1679707085199998e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Compartments[compartment],Vector=Metabolites[Antigen-presenting_tumour_cells]" value="5.7126028169501998e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Compartments[compartment],Vector=Metabolites[Total_lymphocyte_count]" value="3.8300815850520005e+24" type="Species" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[K_N]" value="500" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[K_C]" value="139" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[r_N]" value="0.16" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[rho_C]" value="0.036999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[a]" value="0.42299999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[b]" value="0.52500000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[r_B]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[gamma_B]" value="1.1499999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[k_B]" value="4.0499999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[r_C]" value="0.56196313937272058" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Reactions[Normal_T_cell_population_growth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Reactions[Normal_T_cell_population_growth],ParameterGroup=Parameters,Parameter=r_N" value="0.16" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[r_N],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Reactions[Normal_T_cell_population_growth],ParameterGroup=Parameters,Parameter=K_N" value="500" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[K_N],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Reactions[CAR_T_cell_population_growth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Reactions[CAR_T_cell_population_growth],ParameterGroup=Parameters,Parameter=r_C" value="0.56196313937272058" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[r_C],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Reactions[CAR_T_cell_population_growth],ParameterGroup=Parameters,Parameter=K_C" value="139" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[K_C],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Reactions[Tumour_growth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Reactions[Tumour_growth],ParameterGroup=Parameters,Parameter=r_B" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[r_B],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Reactions[Tumour_killing]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Reactions[Tumour_killing],ParameterGroup=Parameters,Parameter=k_B" value="4.0499999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[k_B],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Reactions[Tumour_killing],ParameterGroup=Parameters,Parameter=gamma_B" value="1.1499999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[gamma_B],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_2" name="Fitted model (values for r_N and rho_C taken from manuscript)">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Compartments[compartment],Vector=Metabolites[Normal_T_cells]" value="6" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Compartments[compartment],Vector=Metabolites[CAR_T_cells]" value="0.35999999999999999" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Compartments[compartment],Vector=Metabolites[Antigen-presenting_tumour_cells]" value="94.859999999999999" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Compartments[compartment],Vector=Metabolites[Total_lymphocyte_count]" value="6.3600000000000003" type="Species" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[K_N]" value="500" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[K_C]" value="139" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[r_N]" value="0.17000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[rho_C]" value="0.025100000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[a]" value="0.42299999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[b]" value="0.52500000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[r_B]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[gamma_B]" value="1.1499999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[k_B]" value="4.0499999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[r_C]" value="0.55006313937272056" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Reactions[Normal_T_cell_population_growth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Reactions[Normal_T_cell_population_growth],ParameterGroup=Parameters,Parameter=r_N" value="0.17000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[r_N],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Reactions[Normal_T_cell_population_growth],ParameterGroup=Parameters,Parameter=K_N" value="500" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[K_N],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Reactions[CAR_T_cell_population_growth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Reactions[CAR_T_cell_population_growth],ParameterGroup=Parameters,Parameter=r_C" value="0.55006313937272056" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[r_C],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Reactions[CAR_T_cell_population_growth],ParameterGroup=Parameters,Parameter=K_C" value="139" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[K_C],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Reactions[Tumour_growth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Reactions[Tumour_growth],ParameterGroup=Parameters,Parameter=r_B" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[r_B],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Reactions[Tumour_killing]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Reactions[Tumour_killing],ParameterGroup=Parameters,Parameter=k_B" value="4.0499999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[k_B],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Reactions[Tumour_killing],ParameterGroup=Parameters,Parameter=gamma_B" value="1.1499999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Values[gamma_B],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="ModelValue_9"/>
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
    </StateTemplate>
    <InitialState type="initialState">
      0 94.859999999999999 0.35999999999999999 6 6.3600000000000003 0.55006313937272056 1 500 139 0.17000000000000001 0.025100000000000001 0.42299999999999999 0.52500000000000002 0.01 1.1499999999999999 4.0499999999999998 
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
        <Parameter name="StepNumber" type="unsignedInteger" value="2000"/>
        <Parameter name="StepSize" type="float" value="0.10000000000000001"/>
        <Parameter name="Duration" type="float" value="200"/>
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
    <PlotSpecification name="Fig. 2" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Normal T cells" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Compartments[compartment],Vector=Metabolites[Normal_T_cells],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="CAR T cells" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Kimmel2021 - T cell competition and stochastic extinction events in CAR T cell therapy,Vector=Compartments[compartment],Vector=Metabolites[CAR_T_cells],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="Kimmel2021.xml">
    <SBMLMap SBMLid="Antigen_presenting_tumour_cells" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="CAR_T_cell_population_growth" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="CAR_T_cells" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="K_C" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="K_N" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="Normal_T_cell_population_growth" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="Normal_T_cells" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="Rate_Law_for_CAR_T_cell_population_growth" COPASIkey="Function_41"/>
    <SBMLMap SBMLid="Rate_Law_for_Normal_T_cell_population_growth" COPASIkey="Function_40"/>
    <SBMLMap SBMLid="Rate_Law_for_Tumour_growth" COPASIkey="Function_42"/>
    <SBMLMap SBMLid="Rate_Law_for_Tumour_killing" COPASIkey="Function_43"/>
    <SBMLMap SBMLid="Total_lymphocyte_count" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="Tumour_growth" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="Tumour_killing" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="a" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="b" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="compartment" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="gamma_B" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="k_B" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="r_B" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="r_C" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="r_N" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="rho_C" COPASIkey="ModelValue_3"/>
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
    <UnitDefinition key="Unit_15" name="dimensionless" symbol="1">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_14">
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
    <UnitDefinition key="Unit_69" name="day" symbol="d">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_68">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        86400*s
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
