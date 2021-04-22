<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.7 (Build 34) (http://www.copasi.org) at 2011-09-19 10:26:58 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="1" versionMinor="0" versionDevel="34">
  <Model key="Model_0" name="Bertram2000_PancreaticBetaCells_Oscillations" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mol" type="deterministic" avogadroConstant="6.02214179e+023">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Model_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-09-19T00:00:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2011-09-19T15:40:11+05:30</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      
  &lt;body xmlns=&quot;http://www.w3.org/1999/xhtml&quot;&gt;
    &lt;p&gt;
      This a model from the article:
      &lt;br/&gt;
    &lt;strong&gt; The phantom burster model for pancreatic beta-cells.
&lt;/strong&gt;
    &lt;br/&gt;
Bertram R, Previte J, Sherman A, Kinard TA, Satin LS.
      &lt;em&gt;Biophys J&lt;/em&gt;2000 Dec;79(6):2880-92 
      &lt;a href=&quot;http://www.ncbi.nlm.nih.gov/pubmed/11106596&quot;&gt;11106596&lt;/a&gt;,
      &lt;br/&gt;
    &lt;strong&gt;Abstract:&lt;/strong&gt;
    &lt;br/&gt;
Pancreatic beta-cells exhibit bursting oscillations with a wide range of
periods. Whereas periods in isolated cells are generally either a few seconds or
a few minutes, in intact islets of Langerhans they are intermediate (10-60 s).
We develop a mathematical model for beta-cell electrical activity capable of
generating this wide range of bursting oscillations. Unlike previous models,
bursting is driven by the interaction of two slow processes, one with a
relatively small time constant (1-5 s) and the other with a much larger time
constant (1-2 min). Bursting on the intermediate time scale is generated without
need for a slow process having an intermediate time constant, hence phantom
bursting. The model suggests that isolated cells exhibiting a fast pattern may
nonetheless possess slower processes that can be brought out by injecting
suitable exogenous currents. Guided by this, we devise an experimental protocol
using the dynamic clamp technique that reliably elicits islet-like, medium
period oscillations from isolated cells. Finally, we show that strong electrical
coupling between a fast burster and a slow burster can produce synchronized
medium bursting, suggesting that islets may be composed of cells that are
intrinsically either fast or slow, with few or none that are intrinsically
medium.
   &lt;/p&gt;
    &lt;p&gt;
This model was taken from the
      &lt;a href=&quot;http://www.cellml.org/models&quot;&gt;CellML repository&lt;/a&gt; and automatically converted to SBML.
      &lt;br/&gt;
The original model was:
      &lt;a href=&quot;http://www.cellml.org/models/bertram_previte_sherman_kinard_satin_2000_version02&quot;&gt;
      &lt;strong&gt;Bertram R, Previte J, Sherman A, Kinard TA, Satin LS. (2000) - version02&lt;/strong&gt;
    &lt;/a&gt;
  &lt;/p&gt;
  &lt;p&gt;This model originates from BioModels Database: A Database of Annotated Published Models (http://www.ebi.ac.uk/biomodels/). It is copyright (c) 2005-2011 The BioModels.net Team.&lt;br/&gt;
For more information see the &lt;a href=&quot;http://www.ebi.ac.uk/biomodels/legal.html&quot; target=&quot;_blank&quot;&gt;terms of use&lt;/a&gt;.&lt;br/&gt;
To cite BioModels Database, please use: &lt;a href=&quot;http://www.ncbi.nlm.nih.gov/pubmed/20587024&quot; target=&quot;_blank&quot;&gt;Li C, Donizelli M, Rodriguez N, Dharuri H, Endler L, Chelliah V, Li L, He E, Henry A, Stefan MI, Snoep JL, Hucka M, Le Novère N, Laibe C (2010) BioModels Database: An enhanced, curated and annotated resource for published quantitative kinetic models. BMC Syst Biol., 4:92.&lt;/a&gt;
&lt;/p&gt;
&lt;/body&gt;

    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="Compartment" simulationType="fixed" dimensionality="3">
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="V" simulationType="ode" compartment="Compartment_0">
        <Expression>
          -(&lt;CN=Root,Model=Bertram2000_PancreaticBetaCells_Oscillations,Vector=Values[ICa],Reference=Value&gt;+&lt;CN=Root,Model=Bertram2000_PancreaticBetaCells_Oscillations,Vector=Values[IK],Reference=Value&gt;+&lt;CN=Root,Model=Bertram2000_PancreaticBetaCells_Oscillations,Vector=Values[Il],Reference=Value&gt;+&lt;CN=Root,Model=Bertram2000_PancreaticBetaCells_Oscillations,Vector=Values[Is1],Reference=Value&gt;+&lt;CN=Root,Model=Bertram2000_PancreaticBetaCells_Oscillations,Vector=Values[Is2],Reference=Value&gt;)/&lt;CN=Root,Model=Bertram2000_PancreaticBetaCells_Oscillations,Vector=Values[Cm],Reference=Value&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="n" simulationType="ode" compartment="Compartment_0">
        <Expression>
          (&lt;CN=Root,Model=Bertram2000_PancreaticBetaCells_Oscillations,Vector=Values[ninf],Reference=Value&gt;-&lt;CN=Root,Model=Bertram2000_PancreaticBetaCells_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[n],Reference=Concentration&gt;)/&lt;CN=Root,Model=Bertram2000_PancreaticBetaCells_Oscillations,Vector=Values[taun],Reference=Value&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="s1" simulationType="ode" compartment="Compartment_0">
        <Expression>
          (&lt;CN=Root,Model=Bertram2000_PancreaticBetaCells_Oscillations,Vector=Values[s1inf],Reference=Value&gt;-&lt;CN=Root,Model=Bertram2000_PancreaticBetaCells_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[s1],Reference=Concentration&gt;)/&lt;CN=Root,Model=Bertram2000_PancreaticBetaCells_Oscillations,Vector=Values[taus1],Reference=Value&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="s2" simulationType="ode" compartment="Compartment_0">
        <Expression>
          (&lt;CN=Root,Model=Bertram2000_PancreaticBetaCells_Oscillations,Vector=Values[s2inf],Reference=Value&gt;-&lt;CN=Root,Model=Bertram2000_PancreaticBetaCells_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[s2],Reference=Concentration&gt;)/&lt;CN=Root,Model=Bertram2000_PancreaticBetaCells_Oscillations,Vector=Values[taus2],Reference=Value&gt;
        </Expression>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="Cm" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_1" name="Vm" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_2" name="VCa" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_3" name="gCa" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_4" name="minf" simulationType="assignment">
        <Expression>
          1/(1+exp((&lt;CN=Root,Model=Bertram2000_PancreaticBetaCells_Oscillations,Vector=Values[Vm],Reference=Value&gt;-&lt;CN=Root,Model=Bertram2000_PancreaticBetaCells_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[V],Reference=Concentration&gt;)/&lt;CN=Root,Model=Bertram2000_PancreaticBetaCells_Oscillations,Vector=Values[sm],Reference=Value&gt;))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="sm" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_6" name="ICa" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2000_PancreaticBetaCells_Oscillations,Vector=Values[gCa],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2000_PancreaticBetaCells_Oscillations,Vector=Values[minf],Reference=Value&gt;*(&lt;CN=Root,Model=Bertram2000_PancreaticBetaCells_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[V],Reference=Concentration&gt;-&lt;CN=Root,Model=Bertram2000_PancreaticBetaCells_Oscillations,Vector=Values[VCa],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="IK" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2000_PancreaticBetaCells_Oscillations,Vector=Values[gK],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2000_PancreaticBetaCells_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[n],Reference=Concentration&gt;*(&lt;CN=Root,Model=Bertram2000_PancreaticBetaCells_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[V],Reference=Concentration&gt;-&lt;CN=Root,Model=Bertram2000_PancreaticBetaCells_Oscillations,Vector=Values[VK],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="VK" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_9" name="gK" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_10" name="lambda" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_11" name="tnbar" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_12" name="Vn" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_13" name="sn" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_14" name="taun" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2000_PancreaticBetaCells_Oscillations,Vector=Values[tnbar],Reference=Value&gt;/(1+exp((&lt;CN=Root,Model=Bertram2000_PancreaticBetaCells_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[V],Reference=Concentration&gt;-&lt;CN=Root,Model=Bertram2000_PancreaticBetaCells_Oscillations,Vector=Values[Vn],Reference=Value&gt;)/&lt;CN=Root,Model=Bertram2000_PancreaticBetaCells_Oscillations,Vector=Values[sn],Reference=Value&gt;))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="ninf" simulationType="assignment">
        <Expression>
          1/(1+exp((&lt;CN=Root,Model=Bertram2000_PancreaticBetaCells_Oscillations,Vector=Values[Vn],Reference=Value&gt;-&lt;CN=Root,Model=Bertram2000_PancreaticBetaCells_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[V],Reference=Concentration&gt;)/&lt;CN=Root,Model=Bertram2000_PancreaticBetaCells_Oscillations,Vector=Values[sn],Reference=Value&gt;))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="Is1" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2000_PancreaticBetaCells_Oscillations,Vector=Values[gs1],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2000_PancreaticBetaCells_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[s1],Reference=Concentration&gt;*(&lt;CN=Root,Model=Bertram2000_PancreaticBetaCells_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[V],Reference=Concentration&gt;-&lt;CN=Root,Model=Bertram2000_PancreaticBetaCells_Oscillations,Vector=Values[VK],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="gs1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_18" name="s1inf" simulationType="assignment">
        <Expression>
          1/(1+exp((&lt;CN=Root,Model=Bertram2000_PancreaticBetaCells_Oscillations,Vector=Values[Vs1],Reference=Value&gt;-&lt;CN=Root,Model=Bertram2000_PancreaticBetaCells_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[V],Reference=Concentration&gt;)/&lt;CN=Root,Model=Bertram2000_PancreaticBetaCells_Oscillations,Vector=Values[ss1],Reference=Value&gt;))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_19" name="Vs1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_20" name="ss1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_21" name="taus1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_22" name="Vs2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_23" name="s2inf" simulationType="assignment">
        <Expression>
          1/(1+exp((&lt;CN=Root,Model=Bertram2000_PancreaticBetaCells_Oscillations,Vector=Values[Vs2],Reference=Value&gt;-&lt;CN=Root,Model=Bertram2000_PancreaticBetaCells_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[V],Reference=Concentration&gt;)/&lt;CN=Root,Model=Bertram2000_PancreaticBetaCells_Oscillations,Vector=Values[ss2],Reference=Value&gt;))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_24" name="ss2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_25" name="gs2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_26" name="taus2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_27" name="Is2" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2000_PancreaticBetaCells_Oscillations,Vector=Values[gs2],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2000_PancreaticBetaCells_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[s2],Reference=Concentration&gt;*(&lt;CN=Root,Model=Bertram2000_PancreaticBetaCells_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[V],Reference=Concentration&gt;-&lt;CN=Root,Model=Bertram2000_PancreaticBetaCells_Oscillations,Vector=Values[VK],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_28" name="Il" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2000_PancreaticBetaCells_Oscillations,Vector=Values[gl],Reference=Value&gt;*(&lt;CN=Root,Model=Bertram2000_PancreaticBetaCells_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[V],Reference=Concentration&gt;-&lt;CN=Root,Model=Bertram2000_PancreaticBetaCells_Oscillations,Vector=Values[Vl],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_29" name="gl" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_30" name="Vl" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_31" name="I1+I2" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2000_PancreaticBetaCells_Oscillations,Vector=Values[Is1],Reference=Value&gt;+&lt;CN=Root,Model=Bertram2000_PancreaticBetaCells_Oscillations,Vector=Values[Is2],Reference=Value&gt;
        </Expression>
      </ModelValue>
    </ListOfModelValues>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="ModelValue_4"/>
      <StateTemplateVariable objectReference="ModelValue_6"/>
      <StateTemplateVariable objectReference="ModelValue_7"/>
      <StateTemplateVariable objectReference="ModelValue_14"/>
      <StateTemplateVariable objectReference="ModelValue_15"/>
      <StateTemplateVariable objectReference="ModelValue_16"/>
      <StateTemplateVariable objectReference="ModelValue_18"/>
      <StateTemplateVariable objectReference="ModelValue_23"/>
      <StateTemplateVariable objectReference="ModelValue_27"/>
      <StateTemplateVariable objectReference="ModelValue_28"/>
      <StateTemplateVariable objectReference="ModelValue_31"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
      <StateTemplateVariable objectReference="ModelValue_3"/>
      <StateTemplateVariable objectReference="ModelValue_5"/>
      <StateTemplateVariable objectReference="ModelValue_8"/>
      <StateTemplateVariable objectReference="ModelValue_9"/>
      <StateTemplateVariable objectReference="ModelValue_10"/>
      <StateTemplateVariable objectReference="ModelValue_11"/>
      <StateTemplateVariable objectReference="ModelValue_12"/>
      <StateTemplateVariable objectReference="ModelValue_13"/>
      <StateTemplateVariable objectReference="ModelValue_17"/>
      <StateTemplateVariable objectReference="ModelValue_19"/>
      <StateTemplateVariable objectReference="ModelValue_20"/>
      <StateTemplateVariable objectReference="ModelValue_21"/>
      <StateTemplateVariable objectReference="ModelValue_22"/>
      <StateTemplateVariable objectReference="ModelValue_24"/>
      <StateTemplateVariable objectReference="ModelValue_25"/>
      <StateTemplateVariable objectReference="ModelValue_26"/>
      <StateTemplateVariable objectReference="ModelValue_29"/>
      <StateTemplateVariable objectReference="ModelValue_30"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 -2.5895209697e+025 1.806642537e+022 6.02214179e+022 2.61360953686e+023 0.05732417589886876 -2295.260002990705 1443 8.031947643002861 0.03229546469845052 74 0.002472623156634774 0.07585818002124355 513.856 -75 587.856 4524 -22 100 280 7.5 -80 1300 1.1 8.300000000000001 -9 10 20 -40 0.5 1000 -42 0.4 32 120000 25 -40 1 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_10" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_7" target="" append="1"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="1e-009"/>
        <Parameter name="Derivation Factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Use Newton" type="bool" value="1"/>
        <Parameter name="Use Integration" type="bool" value="1"/>
        <Parameter name="Use Back Integration" type="bool" value="1"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000"/>
      </Method>
    </Task>
    <Task key="Task_9" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="30000"/>
        <Parameter name="StepSize" type="float" value="1"/>
        <Parameter name="Duration" type="float" value="30000"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-006"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-012"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_8" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="1"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_7" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_6" target="" append="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_6" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_5" target="" append="1"/>
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
    <Task key="Task_5" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_4" target="" append="1"/>
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
        <ParameterGroup name="Experiment Set">
        </ParameterGroup>
      </Problem>
      <Method name="Evolutionary Programming" type="EvolutionaryProgram">
        <Parameter name="Number of Generations" type="unsignedInteger" value="200"/>
        <Parameter name="Population Size" type="unsignedInteger" value="20"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_4" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_3" target="" append="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_10"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1e-009"/>
      </Method>
    </Task>
    <Task key="Task_3" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_2" target="" append="1"/>
      <Problem>
        <Parameter name="ExponentNumber" type="unsignedInteger" value="3"/>
        <Parameter name="DivergenceRequested" type="bool" value="1"/>
        <Parameter name="TransientTime" type="float" value="0"/>
      </Problem>
      <Method name="Wolf Method" type="WolfMethod">
        <Parameter name="Orthonormalization Interval" type="unsignedFloat" value="1"/>
        <Parameter name="Overall time" type="unsignedFloat" value="1000"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-006"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-012"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_2" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_1" target="" append="1"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
      </Problem>
      <Method name="ILDM (LSODA,Deuflhard)" type="TimeScaleSeparation(ILDM,Deuflhard)">
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="1e-006"/>
      </Method>
    </Task>
    <Task key="Task_1" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_0" target="" append="1"/>
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
        </ParameterGroup>
      </Problem>
      <Method name="Sensitivities Method" type="SensitivitiesMethod">
        <Parameter name="Delta factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Delta minimum" type="unsignedFloat" value="1e-012"/>
      </Method>
    </Task>
    <Task key="Task_11" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_7" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_6" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_5" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
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
    <Report key="Report_4" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
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
    <Report key="Report_3" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_2" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
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
    <Report key="Report_1" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_0" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
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
  </ListOfReports>
  <ListOfPlots>
    <PlotSpecification name="plot_1" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[V]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bertram2000_PancreaticBetaCells_Oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Bertram2000_PancreaticBetaCells_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[V],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[s1]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bertram2000_PancreaticBetaCells_Oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Bertram2000_PancreaticBetaCells_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[s1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[s2]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bertram2000_PancreaticBetaCells_Oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Bertram2000_PancreaticBetaCells_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[s2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[I1+I2]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bertram2000_PancreaticBetaCells_Oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Bertram2000_PancreaticBetaCells_Oscillations,Vector=Values[I1+I2],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="270001.xml">
    <SBMLMap SBMLid="Cm" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="Compartment" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="ICa" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="IK" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="Il" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="Is1" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="Is2" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="V" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="VCa" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="VK" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="Vl" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="Vm" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="Vn" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="Vs1" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="Vs2" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="gCa" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="gK" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="gl" COPASIkey="ModelValue_29"/>
    <SBMLMap SBMLid="gs1" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="gs2" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="lambda" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="minf" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="n" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="ninf" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="parameter_1" COPASIkey="ModelValue_31"/>
    <SBMLMap SBMLid="s1" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="s1inf" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="s2" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="s2inf" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="sm" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="sn" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="ss1" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="ss2" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="taun" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="taus1" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="taus2" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="tnbar" COPASIkey="ModelValue_11"/>
  </SBMLReference>
</COPASI>
