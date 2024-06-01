<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.40 (Build 275) (http://www.copasi.org) at 2024-01-29T09:48:02Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="40" versionDevel="275" copasiSourcesModified="0">
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
  <Model key="Model_1" name="Hammaren-Geissen2022_PPToP_Model12" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mol" type="deterministic" avogadroConstant="6.0221407599999999e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go.ref:GO:0036211"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:mamo:MAMO_0000045"/>
    <bqbiol:hasTaxon rdf:resource="urn:miriam:taxonomy:9606"/>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Protein-Peptide Turnover Profiling reveals the order of PTM addition and removal during protein maturation</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:36460637"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Protein-Peptide Turnover Profiling reveals the order of PTM addition and removal during protein maturation</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1038/s41467-022-35054-2"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2022-12-16T08:59:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>eva.geissen@embl.de</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Geissen</vCard:Family>
            <vCard:Given>Eva-Maria</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>EMBL</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
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
    <CopasiMT:is rdf:resource="urn:miriam:biomodels.db:MODEL2212160002"/>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
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
      <Metabolite key="Metabolite_0" name="Pu_old" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:36080" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[Pu_old+new],Reference=InitialValue>
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="Pp_old" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:36080" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[Pp_old+new],Reference=InitialValue>
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="Pu_new" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:36080" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[Pu_old+new],Reference=InitialValue>-&lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Compartments[compartment],Vector=Metabolites[Pu_old],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="Pp_new" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:36080" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[Pp_old+new],Reference=InitialValue>-&lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Compartments[compartment],Vector=Metabolites[Pp_old],Reference=Concentration>
        </Expression>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="kdegu" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_0">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="kdegp" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_1">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="ke" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_2">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="kw" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_3">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="Pu_old+new" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_4">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[ksyn],Reference=InitialValue>*(&lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[kdegp],Reference=InitialValue>+&lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[ke],Reference=InitialValue>)/(&lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[kdegp],Reference=InitialValue>*&lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[kdegu],Reference=InitialValue>+&lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[kdegu],Reference=InitialValue>*&lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[ke],Reference=InitialValue>+&lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[kdegp],Reference=InitialValue>*&lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[kw],Reference=InitialValue>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="Pp_old+new" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[ksyn],Reference=InitialValue>*&lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[kw],Reference=InitialValue>/(&lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[kdegp],Reference=InitialValue>*&lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[kdegu],Reference=InitialValue>+&lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[kdegu],Reference=InitialValue>*&lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[ke],Reference=InitialValue>+&lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[kdegp],Reference=InitialValue>*&lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[kw],Reference=InitialValue>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="ksyn" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_6">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="Ou_Pu_old_observable" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Compartments[compartment],Vector=Metabolites[Pu_old],Reference=Concentration>/&lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[Pu_old+new],Reference=InitialValue>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="Op_Pp_old_observable" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_8">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Compartments[compartment],Vector=Metabolites[Pp_old],Reference=Concentration>/&lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[Pp_old+new],Reference=InitialValue>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="O_P_observable" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_9">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Compartments[compartment],Vector=Metabolites[Pp_old],Reference=Concentration>+&lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Compartments[compartment],Vector=Metabolites[Pu_old],Reference=Concentration>)/(&lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[Pp_old+new],Reference=InitialValue>+&lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[Pu_old+new],Reference=InitialValue>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="Pu_old_clearanceProfile" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_10">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          log(&lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[Ou_Pu_old_observable],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="Pp_old_clearanceProfile" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_11">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          log(&lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[Op_Pp_old_observable],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="P_old_clearanceProfile" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_12">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          log(&lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[O_P_observable],Reference=Value>)
        </Expression>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="Pu degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7456" name="k1" value="0.0625"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Compartments[compartment]">
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
      <Reaction key="Reaction_1" name="PTM writing" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C17019" />
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
          <Constant key="Parameter_7455" name="k1" value="0.0625"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="PTM erasing" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go.ref:GO:1903321" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7453" name="k1" value="0.0625"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Compartments[compartment]">
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
      <Reaction key="Reaction_3" name="Pp degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7452" name="k1" value="0.0625"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Compartments[compartment]">
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
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Compartments[compartment],Vector=Metabolites[Pu_old]" value="4.0147605066666661e+23" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[Pu_old+new],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Compartments[compartment],Vector=Metabolites[Pp_old]" value="2.0073802533333331e+23" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[Pp_old+new],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Compartments[compartment],Vector=Metabolites[Pu_new]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Compartments[compartment],Vector=Metabolites[Pp_new]" value="0" type="Species" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[kdegu]" value="0.0625" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[kdegp]" value="0.0625" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[ke]" value="0.0625" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[kw]" value="0.0625" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[Pu_old+new]" value="0.66666666666666663" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[Pp_old+new]" value="0.33333333333333331" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[ksyn]" value="0.0625" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[Ou_Pu_old_observable]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[Op_Pp_old_observable]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[O_P_observable]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[Pu_old_clearanceProfile]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[Pp_old_clearanceProfile]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[P_old_clearanceProfile]" value="0" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Reactions[Pu degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Reactions[Pu degradation],ParameterGroup=Parameters,Parameter=k1" value="0.0625" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[kdegu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Reactions[PTM writing]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Reactions[PTM writing],ParameterGroup=Parameters,Parameter=k1" value="0.0625" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[kw],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Reactions[PTM erasing]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Reactions[PTM erasing],ParameterGroup=Parameters,Parameter=k1" value="0.0625" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[ke],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Reactions[Pp degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Reactions[Pp degradation],ParameterGroup=Parameters,Parameter=k1" value="0.0625" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[kdegp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_3" name="PTM degron">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_3">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Compartments[compartment],Vector=Metabolites[Pu_old]" value="5.9115244715303134e+23" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[Pu_old+new],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Compartments[compartment],Vector=Metabolites[Pp_old]" value="6.5216106269551498e+22" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[Pp_old+new],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Compartments[compartment],Vector=Metabolites[Pu_new]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Compartments[compartment],Vector=Metabolites[Pp_new]" value="0" type="Species" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[kdegu]" value="0.0080000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[kdegp]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[ke]" value="0.0625" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[kw]" value="0.0625" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[Pu_old+new]" value="0.98339160839160833" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[Pp_old+new]" value="0.10926573426573426" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[ksyn]" value="0.0625" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[Ou_Pu_old_observable]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[Op_Pp_old_observable]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[O_P_observable]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[Pu_old_clearanceProfile]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[Pp_old_clearanceProfile]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[P_old_clearanceProfile]" value="0" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Reactions[Pu degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Reactions[Pu degradation],ParameterGroup=Parameters,Parameter=k1" value="0.0080000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[kdegu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Reactions[PTM writing]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Reactions[PTM writing],ParameterGroup=Parameters,Parameter=k1" value="0.0625" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[kw],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Reactions[PTM erasing]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Reactions[PTM erasing],ParameterGroup=Parameters,Parameter=k1" value="0.0625" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[ke],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Reactions[Pp degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Reactions[Pp degradation],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[kdegp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_4" name="PTM stabilon">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_4">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Compartments[compartment],Vector=Metabolites[Pu_old]" value="7.3631087723687166e+22" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[Pu_old+new],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Compartments[compartment],Vector=Metabolites[Pp_old]" value="6.5216106269551482e+22" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[Pp_old+new],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Compartments[compartment],Vector=Metabolites[Pu_new]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Compartments[compartment],Vector=Metabolites[Pp_new]" value="0" type="Species" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[kdegu]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[kdegp]" value="0.0080000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[ke]" value="0.0625" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[kw]" value="0.0625" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[Pu_old+new]" value="0.98339160839160833" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[Pp_old+new]" value="0.10926573426573426" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[ksyn]" value="0.0625" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[Ou_Pu_old_observable]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[Op_Pp_old_observable]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[O_P_observable]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[Pu_old_clearanceProfile]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[Pp_old_clearanceProfile]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[P_old_clearanceProfile]" value="0" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Reactions[Pu degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Reactions[Pu degradation],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[kdegu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Reactions[PTM writing]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Reactions[PTM writing],ParameterGroup=Parameters,Parameter=k1" value="0.0625" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[kw],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Reactions[PTM erasing]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Reactions[PTM erasing],ParameterGroup=Parameters,Parameter=k1" value="0.0625" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[ke],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Reactions[Pp degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Reactions[Pp degradation],ParameterGroup=Parameters,Parameter=k1" value="0.0080000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[kdegp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_5" name="kdeg,u =  kdeg,P">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_5">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Compartments[compartment],Vector=Metabolites[Pu_old]" value="4.0147605066666668e+23" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[Pu_old+new],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Compartments[compartment],Vector=Metabolites[Pp_old]" value="2.0073802533333334e+23" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[Pp_old+new],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Compartments[compartment],Vector=Metabolites[Pu_new]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Compartments[compartment],Vector=Metabolites[Pp_new]" value="0" type="Species" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[kdegu]" value="0.0625" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[kdegp]" value="0.0625" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[ke]" value="0.0625" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[kw]" value="0.0625" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[Pu_old+new]" value="0.98339160839160833" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[Pp_old+new]" value="0.10926573426573426" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[ksyn]" value="0.0625" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[Ou_Pu_old_observable]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[Op_Pp_old_observable]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[O_P_observable]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[Pu_old_clearanceProfile]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[Pp_old_clearanceProfile]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[P_old_clearanceProfile]" value="0" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Reactions[Pu degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Reactions[Pu degradation],ParameterGroup=Parameters,Parameter=k1" value="0.0625" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[kdegu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Reactions[PTM writing]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Reactions[PTM writing],ParameterGroup=Parameters,Parameter=k1" value="0.0625" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[kw],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Reactions[PTM erasing]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Reactions[PTM erasing],ParameterGroup=Parameters,Parameter=k1" value="0.0625" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[ke],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Reactions[Pp degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Reactions[Pp degradation],ParameterGroup=Parameters,Parameter=k1" value="0.0625" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[kdegp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_6" name="high kw ke">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_6">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Compartments[compartment],Vector=Metabolites[Pu_old]" value="3.1868579163088508e+23" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[Pu_old+new],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Compartments[compartment],Vector=Metabolites[Pp_old]" value="2.8352828436911487e+23" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[Pp_old+new],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Compartments[compartment],Vector=Metabolites[Pu_new]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Compartments[compartment],Vector=Metabolites[Pp_new]" value="0" type="Species" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[kdegu]" value="0.0625" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[kdegp]" value="0.0625" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[ke]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[kw]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[Pu_old+new]" value="0.12325174825174826" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[Pp_old+new]" value="0.10926573426573426" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[ksyn]" value="0.0625" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[Ou_Pu_old_observable]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[Op_Pp_old_observable]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[O_P_observable]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[Pu_old_clearanceProfile]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[Pp_old_clearanceProfile]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[P_old_clearanceProfile]" value="0" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Reactions[Pu degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Reactions[Pu degradation],ParameterGroup=Parameters,Parameter=k1" value="0.0625" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[kdegu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Reactions[PTM writing]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Reactions[PTM writing],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[kw],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Reactions[PTM erasing]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Reactions[PTM erasing],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[ke],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Reactions[Pp degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Reactions[Pp degradation],ParameterGroup=Parameters,Parameter=k1" value="0.0625" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[kdegp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_7" name="low kw ke">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_7">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Compartments[compartment],Vector=Metabolites[Pu_old]" value="5.4044852974358972e+23" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[Pu_old+new],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Compartments[compartment],Vector=Metabolites[Pp_old]" value="6.1765546256410264e+22" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[Pp_old+new],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Compartments[compartment],Vector=Metabolites[Pu_new]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Compartments[compartment],Vector=Metabolites[Pp_new]" value="0" type="Species" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[kdegu]" value="0.0625" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[kdegp]" value="0.0625" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[ke]" value="0.0080000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[kw]" value="0.0080000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[Pu_old+new]" value="0.52941176470588236" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[Pp_old+new]" value="0.47058823529411764" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[ksyn]" value="0.0625" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[Ou_Pu_old_observable]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[Op_Pp_old_observable]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[O_P_observable]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[Pu_old_clearanceProfile]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[Pp_old_clearanceProfile]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[P_old_clearanceProfile]" value="0" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Reactions[Pu degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Reactions[Pu degradation],ParameterGroup=Parameters,Parameter=k1" value="0.0625" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[kdegu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Reactions[PTM writing]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Reactions[PTM writing],ParameterGroup=Parameters,Parameter=k1" value="0.0080000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[kw],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Reactions[PTM erasing]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Reactions[PTM erasing],ParameterGroup=Parameters,Parameter=k1" value="0.0080000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[ke],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Reactions[Pp degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Reactions[Pp degradation],ParameterGroup=Parameters,Parameter=k1" value="0.0625" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[kdegp],Reference=InitialValue>
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
      <StateTemplateVariable objectReference="ModelValue_4"/>
      <StateTemplateVariable objectReference="ModelValue_5"/>
      <StateTemplateVariable objectReference="ModelValue_7"/>
      <StateTemplateVariable objectReference="ModelValue_8"/>
      <StateTemplateVariable objectReference="ModelValue_9"/>
      <StateTemplateVariable objectReference="ModelValue_10"/>
      <StateTemplateVariable objectReference="ModelValue_11"/>
      <StateTemplateVariable objectReference="ModelValue_12"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
      <StateTemplateVariable objectReference="ModelValue_3"/>
      <StateTemplateVariable objectReference="ModelValue_6"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 4.0147605066666661e+23 2.0073802533333331e+23 0 0 0.66666666666666663 0.33333333333333331 1 1 1 0 0 0 1 0.0625 0.0625 0.0625 0.0625 0.0625 
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
        <Parameter name="StepNumber" type="unsignedInteger" value="20000"/>
        <Parameter name="StepSize" type="float" value="0.0025000000000000001"/>
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
    <PlotSpecification name="Time course model species" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <Parameter name="x axis" type="string" value=""/>
      <Parameter name="y axis" type="string" value=""/>
      <Parameter name="z axis" type="string" value=""/>
      <Parameter name="plot engine" type="string" value="QWT"/>
      <ListOfPlotItems>
        <PlotItem name="[Pu_old]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Compartments[compartment],Vector=Metabolites[Pu_old],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Pp_old]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Compartments[compartment],Vector=Metabolites[Pp_old],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Pu_new]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Compartments[compartment],Vector=Metabolites[Pu_new],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Pp_new]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Compartments[compartment],Vector=Metabolites[Pp_new],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Clearance profiles" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <Parameter name="x axis" type="string" value=""/>
      <Parameter name="y axis" type="string" value=""/>
      <Parameter name="z axis" type="string" value=""/>
      <Parameter name="plot engine" type="string" value="QWT"/>
      <ListOfPlotItems>
        <PlotItem name="Values[Pu_old_clearanceProfile]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[Pu_old_clearanceProfile],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Pp_old_clearanceProfile]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[Pp_old_clearanceProfile],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[P_old_clearanceProfile]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hammaren-Geissen2022_PPToP_Model12,Vector=Values[P_old_clearanceProfile],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="Hammaren-Geissen2022_PPToP_Model12_withParameterSets.xml">
    <SBMLMap SBMLid="EntProt_observable" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="PTM_erasing" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="PTM_writing" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="P_old_clearance" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="Pp" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="Pp_degradation" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="Pp_new" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="Pp_observable" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="Pp_old_clearance" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="Pp_total" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="Pu" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="Pu_degradation" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="Pu_new" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="Pu_observable" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="Pu_old_clearance" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="Pu_total" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="compartment" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="kdegp" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="kdegu" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="ke" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="ksyn" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="kw" COPASIkey="ModelValue_3"/>
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
