<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.6.32 (Debug) (http://www.copasi.org) at 2010-11-19 12:59:03 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="1" versionMinor="0" versionDevel="32">
  <Model key="Model_1" name="Lemaire2004_BoneRemodeling_addRespondingOsteoblast" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mol" type="deterministic">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Model_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-11-19T12:57:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
  <rdf:Description rdf:about="#model01">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-11-18T11:20:34+00:00</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2010-11-18T15:43:31+00:00</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      <body xmlns="http://www.w3.org/1999/xhtml">
  <p>
      This a model from the article:
      <br/>
  <strong> Modeling the interactions between osteoblast and osteoclast activities in bone remodeling.
</strong>
  <br/>
Lemaire V, Tobin FL, Greller LD, Cho CR, Suva LJ.
      <em>J Theor Biol.</em>2004 Aug 7;229(3):293-309.
      <a href="http://www.ncbi.nlm.nih.gov/pubmed/15234198">15234198</a>,
      <br/>
  <strong>Abstract:</strong>
  <br/>
We propose a mathematical model explaining the interactions between osteoblasts and osteoclasts, two cell types specialized in the maintenance of the bone integrity. Bone is a dynamic, living tissue whose structure and shape continuously evolves during life. It has the ability to change architecture by removal of old bone and replacement with newly formed bone in a localized process called remodeling. The model described here is based on the idea that the relative proportions of immature and mature osteoblasts control the degree of osteoclastic activity. In addition, osteoclasts control osteoblasts differentially depending on their stage of differentiation. Despite the tremendous complexity of the bone regulatory system and its fragmentary understanding, we obtain surprisingly good correlations between the model simulations and the experimental observations extracted from the literature. The model results corroborate all behaviors of the bone remodeling system that we have simulated, including the tight coupling between osteoblasts and osteoclasts, the catabolic effect induced by continuous administration of PTH, the catabolic action of RANKL, as well as its reversal by soluble antagonist OPG. The model is also able to simulate metabolic bone diseases such as estrogen deficiency, vitamin D deficiency, senescence and glucocorticoid excess. Conversely, possible routes for therapeutic interventions are tested and evaluated. Our model confirms that anti-resorptive therapies are unable to partially restore bone loss, whereas bone formation therapies yield better results. The model enables us to determine and evaluate potential therapies based on their efficacy. In particular, the model predicts that combinations of anti-resorptive and anabolic therapies provide significant benefits compared with monotherapy, especially for certain type of skeletal disease. Finally, the model clearly indicates that increasing the size of the pool of preosteoblasts is an essential ingredient for the therapeutic manipulation of bone formation. This model was conceived as the first step in a bone turnover modeling platform. These initial modeling results are extremely encouraging and lead us to proceed with additional explorations into bone turnover and skeletal remodeling.
   </p>
  <p> This model is an extension of the core model in which the Responding Osteoblasts (R) are being added constantly from day 20 to day 80 (i.e for 60 days) at 0.0001pM/day. The model reproduces (Figure 3 of the curation figure), the last plot of Figure 2A of the reference publication.
</p>
</body>

    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="Compartment" simulationType="fixed" dimensionality="3">
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_2" name="Responding_Osteoblasts" simulationType="ode" compartment="Compartment_0">
        <Expression>
          &lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Values[D_R],Reference=Value&gt;*&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Values[Phi_C],Reference=Value&gt;-&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Values[D_B],Reference=Value&gt;*&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Compartments[Compartment],Vector=Metabolites[Responding_Osteoblasts],Reference=Concentration&gt;/&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Values[Phi_C],Reference=Value&gt;+&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Values[add_Rcells],Reference=Value&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="Active_Osteoblasts" simulationType="ode" compartment="Compartment_0">
        <Expression>
          &lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Values[D_B],Reference=Value&gt;*&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Compartments[Compartment],Vector=Metabolites[Responding_Osteoblasts],Reference=Concentration&gt;/&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Values[Phi_C],Reference=Value&gt;-&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Values[k_B],Reference=Value&gt;*&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Compartments[Compartment],Vector=Metabolites[Active_Osteoblasts],Reference=Concentration&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_0" name="Active_Osteoclasts" simulationType="ode" compartment="Compartment_0">
        <Expression>
          &lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Values[D_C],Reference=Value&gt;*&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Values[Phi_L],Reference=Value&gt;-&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Values[D_A],Reference=Value&gt;*&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Values[Phi_C],Reference=Value&gt;*&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Compartments[Compartment],Vector=Metabolites[Active_Osteoclasts],Reference=Concentration&gt;
        </Expression>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_61" name="C_s" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_29" name="D_A" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_28" name="d_B" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_27" name="D_C" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_26" name="D_R" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_25" name="f0" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_24" name="I_L" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_23" name="I_O" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_22" name="I_P" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_21" name="K" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_20" name="k1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_19" name="k2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_18" name="k3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_17" name="k4" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_16" name="k5" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_15" name="k6" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_14" name="k_B" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_13" name="K_L_P" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_12" name="kO" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_11" name="K_O_P" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_10" name="k_P" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_9" name="r_L" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_8" name="S_P" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_7" name="Phi_C" simulationType="assignment">
        <Expression>
          (&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Compartments[Compartment],Vector=Metabolites[Active_Osteoclasts],Reference=Concentration&gt;+&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Values[f0],Reference=Value&gt;*&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Values[C_s],Reference=Value&gt;)/(&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Compartments[Compartment],Vector=Metabolites[Active_Osteoclasts],Reference=Concentration&gt;+&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Values[C_s],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="D_B" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Values[f0],Reference=Value&gt;*&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Values[d_B],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="Phi_L" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Values[k3],Reference=Value&gt;/&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Values[k4],Reference=Value&gt;*&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Values[K_L_P],Reference=Value&gt;*&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Values[Phi_P],Reference=Value&gt;*&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Compartments[Compartment],Vector=Metabolites[Active_Osteoblasts],Reference=Concentration&gt;/(1+&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Values[k3],Reference=Value&gt;*&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Values[K],Reference=Value&gt;/&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Values[k4],Reference=Value&gt;+&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Values[k1],Reference=Value&gt;/(&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Values[k2],Reference=Value&gt;*&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Values[kO],Reference=Value&gt;)*(&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Values[I_O],Reference=Value&gt;+&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Values[K_O_P],Reference=Value&gt;*&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Compartments[Compartment],Vector=Metabolites[Responding_Osteoblasts],Reference=Concentration&gt;/&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Values[Phi_P],Reference=Value&gt;))*(1+&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Values[I_L],Reference=Value&gt;/&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Values[r_L],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="Phi_P" simulationType="assignment">
        <Expression>
          (&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Values[Pbar],Reference=Value&gt;+&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Values[P_O],Reference=Value&gt;)/(&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Values[Pbar],Reference=Value&gt;+&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Values[P_S],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="Pbar" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Values[I_P],Reference=Value&gt;/&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Values[k_P],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="P_O" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Values[S_P],Reference=Value&gt;/&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Values[k_P],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="P_S" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Values[k6],Reference=Value&gt;/&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Values[k5],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_0" name="add_Rcells" simulationType="assignment">
        <Expression>
          if(&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Reference=Time&gt; le 80 and &lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Reference=Time&gt; gt 20,0.0001,0)
        </Expression>
      </ModelValue>
    </ListOfModelValues>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="ModelValue_7"/>
      <StateTemplateVariable objectReference="ModelValue_6"/>
      <StateTemplateVariable objectReference="ModelValue_5"/>
      <StateTemplateVariable objectReference="ModelValue_4"/>
      <StateTemplateVariable objectReference="ModelValue_3"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_61"/>
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
      <StateTemplateVariable objectReference="ModelValue_13"/>
      <StateTemplateVariable objectReference="ModelValue_12"/>
      <StateTemplateVariable objectReference="ModelValue_11"/>
      <StateTemplateVariable objectReference="ModelValue_10"/>
      <StateTemplateVariable objectReference="ModelValue_9"/>
      <StateTemplateVariable objectReference="ModelValue_8"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 4.657524236100003e+20 4.385323440300003e+20 5.49640854705e+20 0.1966445109679165 0.035 0.05982275279878373 0.01937984496124031 0 2.906976744186046 150 0 0.005 0.7 0.7 0.0021 0.0007 0.05 0 0 0 10 0.01 10 0.00058 0.017 0.02 3 0.189 3000000 0.35 200000 86 1000 250 1 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_0" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_18" target="" append="1"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="1e-09"/>
        <Parameter name="Derivation Factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Use Newton" type="bool" value="1"/>
        <Parameter name="Use Integration" type="bool" value="1"/>
        <Parameter name="Use Back Integration" type="bool" value="1"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1e+09"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1e+06"/>
      </Method>
    </Task>
    <Task key="Task_10" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_6" target="fig3.dat" append="0"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="14000"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="140"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-06"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-12"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_1" name="Scan" type="scan" scheduled="false" updateModel="false">
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
    <Task key="Task_2" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_17" target="" append="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_3" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_0" target="" append="1"/>
      <Problem>
        <Parameter name="Subtask" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <ParameterText name="ObjectiveExpression" type="expression">
          
        </ParameterText>
        <Parameter name="Maximize" type="bool" value="0"/>
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
    <Task key="Task_4" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_1" target="" append="1"/>
      <Problem>
        <Parameter name="Maximize" type="bool" value="0"/>
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
    <Task key="Task_5" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_2" target="" append="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_0"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1e-09"/>
      </Method>
    </Task>
    <Task key="Task_6" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_3" target="" append="1"/>
      <Problem>
        <Parameter name="ExponentNumber" type="unsignedInteger" value="3"/>
        <Parameter name="DivergenceRequested" type="bool" value="1"/>
        <Parameter name="TransientTime" type="float" value="0"/>
      </Problem>
      <Method name="Wolf Method" type="WolfMethod">
        <Parameter name="Orthonormalization Interval" type="unsignedFloat" value="1"/>
        <Parameter name="Overall time" type="unsignedFloat" value="1000"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-06"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-12"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_7" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_4" target="" append="1"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
      </Problem>
      <Method name="ILDM (LSODA,Deuflhard)" type="TimeScaleSeparation(ILDM,Deuflhard)">
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="1e-06"/>
      </Method>
    </Task>
    <Task key="Task_8" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_5" target="" append="1"/>
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
        <Parameter name="Delta minimum" type="unsignedFloat" value="1e-12"/>
      </Method>
    </Task>
    <Task key="Task_9" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_18" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          Automatically generated report.
        </body>
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_17" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          Automatically generated report.
        </body>
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_0" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          Automatically generated report.
        </body>
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
    <Report key="Report_1" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          Automatically generated report.
        </body>
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
    <Report key="Report_2" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          Automatically generated report.
        </body>
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
        <body xmlns="http://www.w3.org/1999/xhtml">
          Automatically generated report.
        </body>
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_4" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          Automatically generated report.
        </body>
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_5" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          Automatically generated report.
        </body>
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_6" name="fig3" taskType="timeCourse" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          
        </body>
      </Comment>
      <Header>
        <Object cn="CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Reference=Name"/>
        <Object cn="String=\[Time\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Compartments[Compartment],Vector=Metabolites[Active_Osteoblasts],Reference=Name"/>
        <Object cn="String=\[Concentration\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Compartments[Compartment],Vector=Metabolites[Active_Osteoclasts],Reference=Name"/>
        <Object cn="String=\[Concentration\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Compartments[Compartment],Vector=Metabolites[Responding_Osteoblasts],Reference=Name"/>
        <Object cn="String=\[Concentration\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Reference=Time"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Compartments[Compartment],Vector=Metabolites[Active_Osteoblasts],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Compartments[Compartment],Vector=Metabolites[Active_Osteoclasts],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Compartments[Compartment],Vector=Metabolites[Responding_Osteoblasts],Reference=Concentration"/>
      </Body>
    </Report>
  </ListOfReports>
  <ListOfPlots>
    <PlotSpecification name="Concentrations, Volumes, and Global Quantity Values" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[Responding_Osteoblasts]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Compartments[Compartment],Vector=Metabolites[Responding_Osteoblasts],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Active_Osteoblasts]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Compartments[Compartment],Vector=Metabolites[Active_Osteoblasts],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Active_Osteoclasts]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Compartments[Compartment],Vector=Metabolites[Active_Osteoclasts],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Phi_C]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Values[Phi_C],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[D_B]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Values[D_B],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Phi_L]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Values[Phi_L],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Phi_P]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Values[Phi_P],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Pbar]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Values[Pbar],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[P_O]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Values[P_O],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[P_S]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Values[P_S],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[add_Rcells]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Lemaire2004_BoneRemodeling_addRespondingOsteoblast,Vector=Values[add_Rcells],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="lemaire04_addR.xml">
    <SBMLMap SBMLid="B" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="C" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="C_s" COPASIkey="ModelValue_61"/>
    <SBMLMap SBMLid="Compartment" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="D_A" COPASIkey="ModelValue_29"/>
    <SBMLMap SBMLid="D_B" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="D_C" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="D_R" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="I_L" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="I_O" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="I_P" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="K" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="K_L_P" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="K_O_P" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="P_O" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="P_S" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="Pbar" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="Phi_C" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="Phi_L" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="Phi_P" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="R" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="S_P" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="add_Rcells" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="d_B" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="f0" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="k1" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="k2" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="k3" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="k4" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="k5" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="k6" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="kO" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="k_B" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="k_P" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="r_L" COPASIkey="ModelValue_9"/>
  </SBMLReference>
</COPASI>
