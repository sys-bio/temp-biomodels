<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.33 (Build 246) (http://www.copasi.org) at 2021-08-05T11:52:49Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="33" versionDevel="246" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_40" name="Rate Law for Tumour_cell_growth" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        F_cure*g*U*((log10(U_max)-log10(U))/log10(U_max))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_264" name="F_cure" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_263" name="g" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_262" name="U" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_261" name="U_max" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Rate Law for Tumour_cell_death" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        d*(C_E*U/(EC_50_d+C_E+U))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_267" name="d" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_266" name="C_E" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_265" name="U" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_250" name="EC_50_d" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics" simulationType="time" timeUnit="d" volumeUnit="µl" areaUnit="m²" lengthUnit="m" quantityUnit="#" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:doid:DOID:0060058"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0002837"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:mamo:MAMO_0000046"/>
    <bqbiol:hasTaxon rdf:resource="urn:miriam:taxonomy:9606"/>
    <bqbiol:isPropertyOf rdf:resource="urn:miriam:ncit:C126102"/>
    <bqbiol:isPropertyOf rdf:resource="urn:miriam:ncit:C15438"/>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:33205434"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-08-02T15:51:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>eblc2@cam.ac.uk</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Chen</vCard:Family>
            <vCard:Given>Emilia</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>University of Cambridge</vCard:Orgname>
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
    <CopasiMT:hasPart rdf:resource="urn:miriam:doid:DOID:1240"/>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      This ordinary differential equation model of the cellular kinetics and pharmacodynamics of CAR-T cell therapy is described in the publication:
Chaudhury, A., Zhu, X., Chu, L., Goliaei, A., June, C., Kearns, J. and Stein, A., 2020. Chimeric Antigen Receptor T Cell Therapies: A Review of Cellular Kinetic‐Pharmacodynamic Modeling Approaches. The Journal of Clinical Pharmacology, 60(S1).
DOI: 10.1002/jcph.1691

Comment:
This model is based on equations 7-9 from the manuscript.

Abstract:
Chimeric antigen receptor T cell (CAR-T cell) therapies have shown significant efficacy in CD19+ leukemias and lymphomas. There remain many challenges and questions for improving next-generation CAR-T cell therapies, and mathematical modeling of CAR-T cells may play a role in supporting further development. In this review, we introduce a mathematical modeling taxonomy for a set of relatively simple cellular kinetic-pharmacodynamic models that describe the in vivo dynamics of CAR-T cell and their interactions with cancer cells. We then discuss potential extensions of this model to include target binding, tumor distribution, cytokine-release syndrome, immunophenotype differentiation, and genotypic heterogeneity.
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="Whole_organism_blood" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0001993" />
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:bto:BTO:0000089" />
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C13413" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="Expanding_CAR-T_cells" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002102" />
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:cl:CL:0000084" />
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C137999" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          if(&lt;CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Reference=Time> &lt;= &lt;CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[T_max],Reference=Value>,&lt;CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[rho],Reference=Value>*(&lt;CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Compartments[Whole_organism_blood],Vector=Metabolites[Expanding_CAR-T_cells],Reference=Concentration>*&lt;CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Compartments[Whole_organism_blood],Vector=Metabolites[Tumor_cells],Reference=Concentration>/(&lt;CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[EC_50\,rho],Reference=Value>+&lt;CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Compartments[Whole_organism_blood],Vector=Metabolites[Expanding_CAR-T_cells],Reference=Concentration>+&lt;CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Compartments[Whole_organism_blood],Vector=Metabolites[Tumor_cells],Reference=Concentration>)),-(&lt;CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[k_EP],Reference=Value>+&lt;CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[k_E],Reference=Value>)*&lt;CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Compartments[Whole_organism_blood],Vector=Metabolites[Expanding_CAR-T_cells],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="Persistent_CAR-T_cells" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C43623" />
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:cl:CL:0000084" />
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C137999" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          if(&lt;CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Reference=Time> &lt;= &lt;CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[T_max],Reference=Value>,0,&lt;CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[k_EP],Reference=Value>*&lt;CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Compartments[Whole_organism_blood],Vector=Metabolites[Expanding_CAR-T_cells],Reference=Concentration>-&lt;CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[beta],Reference=Value>*&lt;CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Compartments[Whole_organism_blood],Vector=Metabolites[Persistent_CAR-T_cells],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="Tumor_cells" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <bqbiol:hasProperty rdf:resource="urn:miriam:chebi:CHEBI:144829" />
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:cl:CL:0001063" />
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:cl:CL:0001201" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="CAR-T_cells" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:cl:CL:0000084" />
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C137999" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Compartments[Whole_organism_blood],Vector=Metabolites[Expanding_CAR-T_cells],Reference=Concentration>+&lt;CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Compartments[Whole_organism_blood],Vector=Metabolites[Persistent_CAR-T_cells],Reference=Concentration>
        </Expression>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="rho" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Unit>
          1/d
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="k_E" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Unit>
          1/d
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="EC_50,rho" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Unit>
          #/ul
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="g" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Unit>
          1/d
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="d" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Unit>
          1/d
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="k_EP" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Unit>
          1/d
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="beta" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Unit>
          1/d
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="U_crit" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Unit>
          #/ul
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="U_max" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Unit>
          #/ul
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="h" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_9">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="EC_50,d" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Unit>
          #/ul
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="T_max" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Unit>
          d
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="h_T" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_12">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="F_cure" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Expression>
          1/(1+(&lt;CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[U_crit],Reference=Value>/&lt;CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Compartments[Whole_organism_blood],Vector=Metabolites[Tumor_cells],Reference=Concentration>)^&lt;CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[h],Reference=Value>)
        </Expression>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="Tumor_cell_growth" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0008283" />
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000393" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6099" name="g" value="0.2"/>
          <Constant key="Parameter_6097" name="F_cure" value="1"/>
          <Constant key="Parameter_6100" name="U_max" value="1000"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Compartments[Whole_organism_blood]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="Tumor_cell_death" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0008219" />
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000394" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5604" name="EC_50_d" value="10"/>
          <Constant key="Parameter_5603" name="d" value="0.34"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Compartments[Whole_organism_blood]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="ModelValue_10"/>
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
          <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Compartments[Whole_organism_blood]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Compartments[Whole_organism_blood],Vector=Metabolites[Expanding_CAR-T_cells]" value="10" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Compartments[Whole_organism_blood],Vector=Metabolites[Persistent_CAR-T_cells]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Compartments[Whole_organism_blood],Vector=Metabolites[Tumor_cells]" value="900" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Compartments[Whole_organism_blood],Vector=Metabolites[CAR-T_cells]" value="10" type="Species" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[rho]" value="8.8000000000000007" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[k_E]" value="0.16" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[EC_50\,rho]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[g]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[d]" value="0.34000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[k_EP]" value="0.0011999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[beta]" value="0.0032000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[U_crit]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[U_max]" value="1000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[h]" value="3" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[EC_50\,d]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[T_max]" value="9.3000000000000007" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[h_T]" value="3" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[F_cure]" value="0.99999999999862821" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Reactions[Tumor_cell_growth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Reactions[Tumor_cell_growth],ParameterGroup=Parameters,Parameter=g" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[g],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Reactions[Tumor_cell_growth],ParameterGroup=Parameters,Parameter=F_cure" value="0.99999999999862821" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[F_cure],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Reactions[Tumor_cell_growth],ParameterGroup=Parameters,Parameter=U_max" value="1000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[U_max],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Reactions[Tumor_cell_death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Reactions[Tumor_cell_death],ParameterGroup=Parameters,Parameter=EC_50_d" value="10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[EC_50\,d],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Reactions[Tumor_cell_death],ParameterGroup=Parameters,Parameter=d" value="0.34000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[d],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_3" name="EC50_expansion_without_B-cell_recovery">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <Comment>
          Parameter set, from supplementary table S1 of the publication, used to reproduce Fig. 3(A).
        </Comment>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Compartments[Whole_organism_blood]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Compartments[Whole_organism_blood],Vector=Metabolites[Expanding_CAR-T_cells]" value="10" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Compartments[Whole_organism_blood],Vector=Metabolites[Persistent_CAR-T_cells]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Compartments[Whole_organism_blood],Vector=Metabolites[Tumor_cells]" value="900" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Compartments[Whole_organism_blood],Vector=Metabolites[CAR-T_cells]" value="10" type="Species" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[rho]" value="8.8000000000000007" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[k_E]" value="0.16" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[EC_50\,rho]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[g]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[d]" value="0.34999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[k_EP]" value="0.0011999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[beta]" value="0.0032000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[U_crit]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[U_max]" value="1000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[h]" value="3" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[EC_50\,d]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[T_max]" value="9.3000000000000007" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[h_T]" value="3" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[F_cure]" value="0.99999999999862821" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Reactions[Tumor_cell_growth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Reactions[Tumor_cell_growth],ParameterGroup=Parameters,Parameter=g" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[g],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Reactions[Tumor_cell_growth],ParameterGroup=Parameters,Parameter=F_cure" value="0.99999999999862821" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[F_cure],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Reactions[Tumor_cell_growth],ParameterGroup=Parameters,Parameter=U_max" value="1000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[U_max],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Reactions[Tumor_cell_death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Reactions[Tumor_cell_death],ParameterGroup=Parameters,Parameter=EC_50_d" value="10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[EC_50\,d],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Reactions[Tumor_cell_death],ParameterGroup=Parameters,Parameter=d" value="0.34999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[d],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Reactions[Expanding_CAR-T_cell_proliferation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Reactions[Expanding_CAR-T_cell_proliferation],ParameterGroup=Parameters,Parameter=EC_50_rho" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[EC_50\,rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Reactions[Expanding_CAR-T_cell_proliferation],ParameterGroup=Parameters,Parameter=rho" value="8.8000000000000007" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Reactions[Expanding_CAR-T_cells_to_persistent_CAR-T_cells]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Reactions[Expanding_CAR-T_cells_to_persistent_CAR-T_cells],ParameterGroup=Parameters,Parameter=k1" value="0.0011999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[k_EP],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Reactions[Expanding_CAR-T_cell_death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Reactions[Expanding_CAR-T_cell_death],ParameterGroup=Parameters,Parameter=k1" value="0.16" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[k_E],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Reactions[Persistent_CAR-T_cell_death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Reactions[Persistent_CAR-T_cell_death],ParameterGroup=Parameters,Parameter=k1" value="0.0032000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[beta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_4" name="EC50_expansion_with_B-cell_recovery">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <Comment>
          Parameter set, from supplementary table S1 of the publication, used to reproduce Fig. 3(B).
        </Comment>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Compartments[Whole_organism_blood]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Compartments[Whole_organism_blood],Vector=Metabolites[Expanding_CAR-T_cells]" value="10" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Compartments[Whole_organism_blood],Vector=Metabolites[Persistent_CAR-T_cells]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Compartments[Whole_organism_blood],Vector=Metabolites[Tumor_cells]" value="900" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Compartments[Whole_organism_blood],Vector=Metabolites[CAR-T_cells]" value="10" type="Species" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[rho]" value="8.8000000000000007" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[k_E]" value="0.16" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[EC_50\,rho]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[g]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[d]" value="0.34000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[k_EP]" value="0.0011999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[beta]" value="0.0032000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[U_crit]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[U_max]" value="1000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[h]" value="3" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[EC_50\,d]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[T_max]" value="9.3000000000000007" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[h_T]" value="3" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[F_cure]" value="0.99999999999862821" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Reactions[Tumor_cell_growth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Reactions[Tumor_cell_growth],ParameterGroup=Parameters,Parameter=g" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[g],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Reactions[Tumor_cell_growth],ParameterGroup=Parameters,Parameter=F_cure" value="0.99999999999862821" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[F_cure],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Reactions[Tumor_cell_growth],ParameterGroup=Parameters,Parameter=U_max" value="1000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[U_max],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Reactions[Tumor_cell_death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Reactions[Tumor_cell_death],ParameterGroup=Parameters,Parameter=EC_50_d" value="10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[EC_50\,d],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Reactions[Tumor_cell_death],ParameterGroup=Parameters,Parameter=d" value="0.34000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[d],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Reactions[Expanding_CAR-T_cell_proliferation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Reactions[Expanding_CAR-T_cell_proliferation],ParameterGroup=Parameters,Parameter=EC_50_rho" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[EC_50\,rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Reactions[Expanding_CAR-T_cell_proliferation],ParameterGroup=Parameters,Parameter=rho" value="8.8000000000000007" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Reactions[Expanding_CAR-T_cells_to_persistent_CAR-T_cells]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Reactions[Expanding_CAR-T_cells_to_persistent_CAR-T_cells],ParameterGroup=Parameters,Parameter=k1" value="0.0011999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[k_EP],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Reactions[Expanding_CAR-T_cell_death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Reactions[Expanding_CAR-T_cell_death],ParameterGroup=Parameters,Parameter=k1" value="0.16" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[k_E],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Reactions[Persistent_CAR-T_cell_death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Reactions[Persistent_CAR-T_cell_death],ParameterGroup=Parameters,Parameter=k1" value="0.0032000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[beta],Reference=InitialValue>
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
      <StateTemplateVariable objectReference="ModelValue_13"/>
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
    </StateTemplate>
    <InitialState type="initialState">
      0 10 0 900 10 0.99999999999862821 1 8.8000000000000007 0.16 1 0.20000000000000001 0.34000000000000002 0.0011999999999999999 0.0032000000000000002 0.10000000000000001 1000 3 10 9.3000000000000007 3 
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
        <Parameter name="StepNumber" type="unsignedInteger" value="10000"/>
        <Parameter name="StepSize" type="float" value="0.035999999999999997"/>
        <Parameter name="Duration" type="float" value="360"/>
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
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="10"/>
            <Parameter name="Type" type="unsignedInteger" value="1"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Compartments[Whole_organism_blood],Vector=Metabolites[Tumor_cells],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="450"/>
            <Parameter name="Maximum" type="float" value="1800"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Values" type="string" value="9; 90; 900; 9000; 90000"/>
            <Parameter name="Use Values" type="bool" value="1"/>
          </ParameterGroup>
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
    <PlotSpecification name="Concentrations, Volumes, and Global Quantity Values" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="1"/>
      <ListOfPlotItems>
        <PlotItem name="B_cells" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Compartments[Whole_organism_blood],Vector=Metabolites[Tumor_cells],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="CAR-T_cells" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#00BEF0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Compartments[Whole_organism_blood],Vector=Metabolites[CAR-T_cells],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Concentrations, Volumes, and Global Quantity Values 1" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[Expanding_CAR-T_cells]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Compartments[Whole_organism_blood],Vector=Metabolites[Expanding_CAR-T_cells],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Persistent_CAR-T_cells]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Compartments[Whole_organism_blood],Vector=Metabolites[Persistent_CAR-T_cells],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Tumor_cells]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Compartments[Whole_organism_blood],Vector=Metabolites[Tumor_cells],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CAR-T_cells]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Compartments[Whole_organism_blood],Vector=Metabolites[CAR-T_cells],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
    <ListOfSliders>
      <Slider key="Slider_0" associatedEntityKey="Task_18" objectCN="CN=Root,Model=Chaudhury2020 - EC50 expansion and killing mathematical model of CAR-T cell and tumour kinetics,Vector=Values[d],Reference=InitialValue" objectType="float" objectValue="0.34" minValue="0.034" maxValue="3.4" tickNumber="1000" tickFactor="100" scaling="logarithmic"/>
    </ListOfSliders>
  </GUI>
  <SBMLReference file="Chaudhury2020 Eq 7-9.xml">
    <SBMLMap SBMLid="CAR_T_cells" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="EC_50_d" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="EC_50_rho" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="Expanding_CAR_T_cells" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="F_cure" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="Persistent_CAR_T_cells" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="Rate_Law_for_Tumour_cell_death" COPASIkey="Function_41"/>
    <SBMLMap SBMLid="Rate_Law_for_Tumour_cell_growth" COPASIkey="Function_40"/>
    <SBMLMap SBMLid="T_max" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="Tumor_cell_death" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="Tumor_cell_growth" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="Tumor_cells" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="U_crit" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="U_max" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="Whole_organism_blood" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="beta" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="d" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="g" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="h" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="h_T" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="k_E" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="k_EP" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="rho" COPASIkey="ModelValue_0"/>
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
