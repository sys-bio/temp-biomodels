<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.33 (Build 246) (http://www.copasi.org) at 2021-07-22T15:16:59Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="33" versionDevel="246" copasiSourcesModified="0">
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
    <Function key="Function_40" name="Rate Law for Infection" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        Beta*V*T
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_264" name="Beta" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_263" name="V" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_262" name="T" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Rate Law for Refractory_state" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

      </MiriamAnnotation>
      <Expression>
        Phi*F*T-Rho*R
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_265" name="Phi" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_250" name="F" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_261" name="T" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_266" name="R" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_267" name="Rho" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="Rate Law for Antiviral_response" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        k*I + Phi*F*I
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_272" name="Phi" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_271" name="F" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_270" name="I" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_269" name="k" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="Rate Law for Virus_release" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        p*I + (1-f)*p*"I*"
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_275" name="p" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_274" name="I" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_273" name="f" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_268" name="&quot;I*&quot;" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="Rate Law for IFN_release" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        Pi*p*(I + "I*")
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_279" name="Pi" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_278" name="p" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_277" name="I" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_276" name="&quot;I*&quot;" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection" simulationType="time" timeUnit="d" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="#" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0035425"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0038001"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:mamo:MAMO_0000046"/>
    <bqbiol:hasTaxon rdf:resource="urn:miriam:taxonomy:9606"/>
    <bqbiol:isPropertyOf rdf:resource="urn:miriam:go:GO:0019221"/>
    <bqbiol:isPropertyOf rdf:resource="urn:miriam:go:GO:0071345"/>
    <bqbiol:isPropertyOf rdf:resource="urn:miriam:go:GO:0140374"/>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:33622135"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-07-19T12:35:42Z</dcterms:W3CDTF>
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
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      This ordinary differential equation model is described in the following article:
"Autocrine and paracrine interferon signalling as ‘ring vaccination’ and ‘contact tracing’ strategies to suppress virus infection in a host"
G. Michael Lavigne, Hayley Russell, Barbara Sherry and Ruian Ke
DOI: 10.1098/rspb.2020.3002

Comment:
This model is based on the ordinary differential equations of the non-spatial model of well-mixed viral infection stated in the manuscript (Eq. 2.1 in the article).

Abstract:
The innate immune response, particularly the interferon response, represents a
first line of defence against viral infections. The interferon molecules produced
from infected cells act through autocrine and paracrine signalling to turn host
cells into an antiviral state. Although the molecular mechanisms of IFN signalling
have been well characterized, how the interferon response collectively
contribute to the regulation of host cells to stop or suppress viral infection
during early infection remain unclear. Here, we use mathematical models to
delineate the roles of the autocrine and the paracrine signalling, and show
that their impacts on viral spread are dependent on how infection proceeds.
In particular, we found that when infection is well-mixed, the paracrine signalling
is not as effective; by contrast, when infection spreads in a spatial manner,
a likely scenario during initial infection in tissue, the paracrine signalling can
impede the spread of infection by decreasing the number of susceptible cells
close to the site of infection. Furthermore, we argue that the interferon response
can be seen as a parallel to population-level epidemic prevention strategies such
as ‘contact tracing’ or ‘ring vaccination’. Thus, our results here may have
implications for the outbreak control at the population scale more broadly.
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="whole_organism" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0001993" />
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:obi:OBI_0100026" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="Target_cells" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <bqbiol:hasProperty rdf:resource="urn:miriam:efo:0001460"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:cl:CL:0000000"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="Infected_cells" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:bto:BTO:0000152"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="Infected_cells_antiviral" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ido:0000440"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:bto:BTO:0000152"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="Refractory_cells" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <bqbiol:hasProperty rdf:resource="urn:miriam:efo:0001460"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:mp:MP:0002409"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:cl:CL:0000000"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="Virions" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ido:0000508"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="IFN" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C20493"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="Fraction_target_cells_remaining" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <bqbiol:hasProperty rdf:resource="urn:miriam:efo:0001460"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:cl:CL:0000000"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Compartments[whole_organism],Vector=Metabolites[Target_cells],Reference=Concentration>/&lt;CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Compartments[whole_organism],Vector=Metabolites[Target_cells],Reference=InitialConcentration>
        </Expression>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="Beta" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <Unit>
          cm/(#*d)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="Phi" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <Unit>
          cm/(#*d)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="Rho" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <Unit>
          1/d
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="Delta" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <Unit>
          1/d
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="k" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <Unit>
          1/d
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="p" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <Unit>
          1/(#*d)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="f" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="c" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <Unit>
          1/d
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="Pi" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="Infection" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ido:0000586"/>
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
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6099" name="Beta" value="5e-10"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Compartments[whole_organism]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="Refractory_state" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0051607"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000650"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6097" name="Phi" value="5e-10"/>
          <Constant key="Parameter_6100" name="Rho" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Compartments[whole_organism]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="Antiviral_response" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0051607"/>
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
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5604" name="k" value="2"/>
          <Constant key="Parameter_5603" name="Phi" value="5e-10"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Compartments[whole_organism]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="Infected_cell_death" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0008219"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000394"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5602" name="k1" value="4"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Compartments[whole_organism]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="Antiviral_infected_cell_death" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0008219"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000394"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5601" name="k1" value="4"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Compartments[whole_organism]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="Virus_release" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0019076"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000393"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5600" name="f" value="0.9"/>
          <Constant key="Parameter_5599" name="p" value="2400"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Compartments[whole_organism]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="IFN_release" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0001816"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000393"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5598" name="Pi" value="1"/>
          <Constant key="Parameter_5597" name="p" value="2400"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Compartments[whole_organism]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="Virus_clearence" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000394"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_6206" name="k1" value="14"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Compartments[whole_organism]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="IFN_clearence" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000394"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_6207" name="k1" value="14"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Compartments[whole_organism]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_5"/>
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
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Compartments[whole_organism]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Compartments[whole_organism],Vector=Metabolites[Target_cells]" value="400000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Compartments[whole_organism],Vector=Metabolites[Infected_cells]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Compartments[whole_organism],Vector=Metabolites[Infected_cells_antiviral]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Compartments[whole_organism],Vector=Metabolites[Refractory_cells]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Compartments[whole_organism],Vector=Metabolites[Virions]" value="100" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Compartments[whole_organism],Vector=Metabolites[IFN]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Compartments[whole_organism],Vector=Metabolites[Fraction_target_cells_remaining]" value="1" type="Species" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[Beta]" value="5.0000000000000003e-10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[Phi]" value="5.0000000000000003e-10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[Rho]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[Delta]" value="4" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[k]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[p]" value="2400" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[f]" value="0.90000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[c]" value="14" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[Pi]" value="1" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Infection]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Infection],ParameterGroup=Parameters,Parameter=Beta" value="5.0000000000000003e-10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[Beta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Refractory_state]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Refractory_state],ParameterGroup=Parameters,Parameter=Phi" value="5.0000000000000003e-10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[Phi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Refractory_state],ParameterGroup=Parameters,Parameter=Rho" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[Rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Antiviral_response]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Antiviral_response],ParameterGroup=Parameters,Parameter=k" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[k],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Antiviral_response],ParameterGroup=Parameters,Parameter=Phi" value="5.0000000000000003e-10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[Phi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Infected_cell_death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Infected_cell_death],ParameterGroup=Parameters,Parameter=k1" value="4" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[Delta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Antiviral_infected_cell_death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Antiviral_infected_cell_death],ParameterGroup=Parameters,Parameter=k1" value="4" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[Delta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Virus_release]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Virus_release],ParameterGroup=Parameters,Parameter=f" value="0.90000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Virus_release],ParameterGroup=Parameters,Parameter=p" value="2400" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[p],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[IFN_release]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[IFN_release],ParameterGroup=Parameters,Parameter=Pi" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[Pi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[IFN_release],ParameterGroup=Parameters,Parameter=p" value="2400" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[p],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Virus_clearence]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Virus_clearence],ParameterGroup=Parameters,Parameter=k1" value="14" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[c],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[IFN_clearence]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[IFN_clearence],ParameterGroup=Parameters,Parameter=k1" value="14" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[c],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_3" name="Fig.1_with_IFN">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Compartments[whole_organism]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Compartments[whole_organism],Vector=Metabolites[Target_cells]" value="400000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Compartments[whole_organism],Vector=Metabolites[Infected_cells]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Compartments[whole_organism],Vector=Metabolites[Infected_cells_antiviral]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Compartments[whole_organism],Vector=Metabolites[Refractory_cells]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Compartments[whole_organism],Vector=Metabolites[Virions]" value="100" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Compartments[whole_organism],Vector=Metabolites[IFN]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[Beta]" value="5.0000000000000003e-10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[Phi]" value="5.0000000000000003e-10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[Rho]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[Delta]" value="4" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[k]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[p]" value="2400" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[f]" value="0.90000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[c]" value="14" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[Pi]" value="1" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Infection]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Infection],ParameterGroup=Parameters,Parameter=Beta" value="5.0000000000000003e-10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[Beta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Refractory_state]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Refractory_state],ParameterGroup=Parameters,Parameter=Phi" value="5.0000000000000003e-10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[Phi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Antiviral_response]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Antiviral_response],ParameterGroup=Parameters,Parameter=k" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[k],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Antiviral_response],ParameterGroup=Parameters,Parameter=Phi" value="5.0000000000000003e-10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[Phi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Infected_cell_death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Infected_cell_death],ParameterGroup=Parameters,Parameter=k1" value="4" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[Delta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Antiviral_infected_cell_death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Antiviral_infected_cell_death],ParameterGroup=Parameters,Parameter=k1" value="4" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[Delta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Susceptiple_state_return]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Susceptiple_state_return],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[Rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Virus_release]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Virus_release],ParameterGroup=Parameters,Parameter=f" value="0.90000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Virus_release],ParameterGroup=Parameters,Parameter=p" value="2400" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[p],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[IFN_release]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[IFN_release],ParameterGroup=Parameters,Parameter=Pi" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[Pi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[IFN_release],ParameterGroup=Parameters,Parameter=p" value="2400" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[p],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Virus_clearence]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Virus_clearence],ParameterGroup=Parameters,Parameter=k1" value="14" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[c],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[IFN_clearence]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[IFN_clearence],ParameterGroup=Parameters,Parameter=k1" value="14" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[c],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_4" name="Fig.1_paracrine_only">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Compartments[whole_organism]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Compartments[whole_organism],Vector=Metabolites[Target_cells]" value="400000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Compartments[whole_organism],Vector=Metabolites[Infected_cells]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Compartments[whole_organism],Vector=Metabolites[Infected_cells_antiviral]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Compartments[whole_organism],Vector=Metabolites[Refractory_cells]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Compartments[whole_organism],Vector=Metabolites[Virions]" value="100" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Compartments[whole_organism],Vector=Metabolites[IFN]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[Beta]" value="5.0000000000000003e-10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[Phi]" value="5.0000000000000003e-10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[Rho]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[Delta]" value="4" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[k]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[p]" value="2400" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[f]" value="0.90000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[c]" value="14" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[Pi]" value="1" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Infection]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Infection],ParameterGroup=Parameters,Parameter=Beta" value="5.0000000000000003e-10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[Beta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Refractory_state]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Refractory_state],ParameterGroup=Parameters,Parameter=Phi" value="5.0000000000000003e-10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[Phi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Antiviral_response]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Antiviral_response],ParameterGroup=Parameters,Parameter=k" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[k],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Antiviral_response],ParameterGroup=Parameters,Parameter=Phi" value="5.0000000000000003e-10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[Phi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Infected_cell_death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Infected_cell_death],ParameterGroup=Parameters,Parameter=k1" value="4" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[Delta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Antiviral_infected_cell_death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Antiviral_infected_cell_death],ParameterGroup=Parameters,Parameter=k1" value="4" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[Delta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Susceptiple_state_return]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Susceptiple_state_return],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[Rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Virus_release]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Virus_release],ParameterGroup=Parameters,Parameter=f" value="0.90000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Virus_release],ParameterGroup=Parameters,Parameter=p" value="2400" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[p],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[IFN_release]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[IFN_release],ParameterGroup=Parameters,Parameter=Pi" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[Pi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[IFN_release],ParameterGroup=Parameters,Parameter=p" value="2400" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[p],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Virus_clearence]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Virus_clearence],ParameterGroup=Parameters,Parameter=k1" value="14" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[c],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[IFN_clearence]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[IFN_clearence],ParameterGroup=Parameters,Parameter=k1" value="14" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[c],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_5" name="Fig.1_no_IFN">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Compartments[whole_organism]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Compartments[whole_organism],Vector=Metabolites[Target_cells]" value="400000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Compartments[whole_organism],Vector=Metabolites[Infected_cells]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Compartments[whole_organism],Vector=Metabolites[Infected_cells_antiviral]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Compartments[whole_organism],Vector=Metabolites[Refractory_cells]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Compartments[whole_organism],Vector=Metabolites[Virions]" value="100" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Compartments[whole_organism],Vector=Metabolites[IFN]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[Beta]" value="5.0000000000000003e-10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[Phi]" value="5.0000000000000003e-10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[Rho]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[Delta]" value="4" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[k]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[p]" value="2400" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[f]" value="0.90000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[c]" value="14" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[Pi]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Infection]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Infection],ParameterGroup=Parameters,Parameter=Beta" value="5.0000000000000003e-10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[Beta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Refractory_state]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Refractory_state],ParameterGroup=Parameters,Parameter=Phi" value="5.0000000000000003e-10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[Phi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Antiviral_response]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Antiviral_response],ParameterGroup=Parameters,Parameter=k" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[k],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Antiviral_response],ParameterGroup=Parameters,Parameter=Phi" value="5.0000000000000003e-10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[Phi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Infected_cell_death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Infected_cell_death],ParameterGroup=Parameters,Parameter=k1" value="4" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[Delta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Antiviral_infected_cell_death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Antiviral_infected_cell_death],ParameterGroup=Parameters,Parameter=k1" value="4" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[Delta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Susceptiple_state_return]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Susceptiple_state_return],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[Rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Virus_release]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Virus_release],ParameterGroup=Parameters,Parameter=f" value="0.90000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Virus_release],ParameterGroup=Parameters,Parameter=p" value="2400" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[p],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[IFN_release]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[IFN_release],ParameterGroup=Parameters,Parameter=Pi" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[Pi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[IFN_release],ParameterGroup=Parameters,Parameter=p" value="2400" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[p],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Virus_clearence]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[Virus_clearence],ParameterGroup=Parameters,Parameter=k1" value="14" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[c],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[IFN_clearence]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Reactions[IFN_clearence],ParameterGroup=Parameters,Parameter=k1" value="14" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Values[c],Reference=InitialValue>
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
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
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
      0 0 100 0 400000000 0 0 1 1 5.0000000000000003e-10 5.0000000000000003e-10 1 4 2 2400 0.90000000000000002 14 1 
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
        <Parameter name="StepNumber" type="unsignedInteger" value="400"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="4"/>
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
    <PlotSpecification name="Virions" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="1"/>
      <ListOfPlotItems>
        <PlotItem name="[Virions]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Compartments[whole_organism],Vector=Metabolites[Virions],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Fraction_target_cells_remaining" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[Fraction_target_cells_remaining]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#000000"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Lavigne2021 - non-spatial model of viral infection dynamics and interferon response of well-mixed viral infection,Vector=Compartments[whole_organism],Vector=Metabolites[Fraction_target_cells_remaining],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
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
