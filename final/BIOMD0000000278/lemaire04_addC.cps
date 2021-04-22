<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.6.32 (Debug) (http://www.copasi.org) at 2010-11-19 13:00:48 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="1" versionMinor="0" versionDevel="32">
  <Model key="Model_0" name="Lemaire2004_BoneRemodeling_addOsteoclast" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mol" type="deterministic">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Model_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-11-19T12:59:12Z</dcterms:W3CDTF>
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
  <p> 
This model is an extension of the core model in which Osteoclasts (C) are being added constantly from day 20 to day 80 (i.e for 60 days) at 0.0001pM/day. The model reproduces (Figure 2 of the curation figure), the middle plot of Figure 2A of the reference publication.
</p>
</body>

    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_1" name="Compartment" simulationType="fixed" dimensionality="3">
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_5" name="Responding_Osteoblasts" simulationType="ode" compartment="Compartment_1">
        <Expression>
          &lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Values[D_R],Reference=Value&gt;*&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Values[Phi_C],Reference=Value&gt;-&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Values[D_B],Reference=Value&gt;*&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Compartments[Compartment],Vector=Metabolites[Responding_Osteoblasts],Reference=Concentration&gt;/&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Values[Phi_C],Reference=Value&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="Active_Osteoblasts" simulationType="ode" compartment="Compartment_1">
        <Expression>
          &lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Values[D_B],Reference=Value&gt;*&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Compartments[Compartment],Vector=Metabolites[Responding_Osteoblasts],Reference=Concentration&gt;/&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Values[Phi_C],Reference=Value&gt;-&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Values[k_B],Reference=Value&gt;*&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Compartments[Compartment],Vector=Metabolites[Active_Osteoblasts],Reference=Concentration&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="Active_Osteoclasts" simulationType="ode" compartment="Compartment_1">
        <Expression>
          &lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Values[D_C],Reference=Value&gt;*&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Values[Phi_L],Reference=Value&gt;-&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Values[D_A],Reference=Value&gt;*&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Values[Phi_C],Reference=Value&gt;*&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Compartments[Compartment],Vector=Metabolites[Active_Osteoclasts],Reference=Concentration&gt;+&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Values[add_Ccells],Reference=Value&gt;
        </Expression>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_59" name="C_s" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_58" name="D_A" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_57" name="d_B" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_56" name="D_C" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_55" name="D_R" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_54" name="f0" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_53" name="I_L" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_52" name="I_O" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_51" name="I_P" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_50" name="K" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_49" name="k1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_48" name="k2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_47" name="k3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_46" name="k4" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_45" name="k5" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_44" name="k6" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_43" name="k_B" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_42" name="K_L_P" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_41" name="kO" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_40" name="K_O_P" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_39" name="k_P" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_38" name="r_L" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_37" name="S_P" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_36" name="Phi_C" simulationType="assignment">
        <Expression>
          (&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Compartments[Compartment],Vector=Metabolites[Active_Osteoclasts],Reference=Concentration&gt;+&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Values[f0],Reference=Value&gt;*&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Values[C_s],Reference=Value&gt;)/(&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Compartments[Compartment],Vector=Metabolites[Active_Osteoclasts],Reference=Concentration&gt;+&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Values[C_s],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_35" name="D_B" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Values[f0],Reference=Value&gt;*&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Values[d_B],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_34" name="Phi_L" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Values[k3],Reference=Value&gt;/&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Values[k4],Reference=Value&gt;*&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Values[K_L_P],Reference=Value&gt;*&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Values[Phi_P],Reference=Value&gt;*&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Compartments[Compartment],Vector=Metabolites[Active_Osteoblasts],Reference=Concentration&gt;/(1+&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Values[k3],Reference=Value&gt;*&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Values[K],Reference=Value&gt;/&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Values[k4],Reference=Value&gt;+&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Values[k1],Reference=Value&gt;/(&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Values[k2],Reference=Value&gt;*&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Values[kO],Reference=Value&gt;)*(&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Values[I_O],Reference=Value&gt;+&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Values[K_O_P],Reference=Value&gt;*&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Compartments[Compartment],Vector=Metabolites[Responding_Osteoblasts],Reference=Concentration&gt;/&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Values[Phi_P],Reference=Value&gt;))*(1+&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Values[I_L],Reference=Value&gt;/&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Values[r_L],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_33" name="Phi_P" simulationType="assignment">
        <Expression>
          (&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Values[Pbar],Reference=Value&gt;+&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Values[P_O],Reference=Value&gt;)/(&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Values[Pbar],Reference=Value&gt;+&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Values[P_S],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_32" name="Pbar" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Values[I_P],Reference=Value&gt;/&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Values[k_P],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_31" name="P_O" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Values[S_P],Reference=Value&gt;/&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Values[k_P],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_30" name="P_S" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Values[k6],Reference=Value&gt;/&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Values[k5],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_60" name="add_Ccells" simulationType="assignment">
        <Expression>
          if(&lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Reference=Time&gt; le 80 and &lt;CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Reference=Time&gt; gt 20,0.0001,0)
        </Expression>
      </ModelValue>
    </ListOfModelValues>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="ModelValue_36"/>
      <StateTemplateVariable objectReference="ModelValue_35"/>
      <StateTemplateVariable objectReference="ModelValue_34"/>
      <StateTemplateVariable objectReference="ModelValue_33"/>
      <StateTemplateVariable objectReference="ModelValue_32"/>
      <StateTemplateVariable objectReference="ModelValue_31"/>
      <StateTemplateVariable objectReference="ModelValue_30"/>
      <StateTemplateVariable objectReference="ModelValue_60"/>
      <StateTemplateVariable objectReference="ModelValue_59"/>
      <StateTemplateVariable objectReference="ModelValue_58"/>
      <StateTemplateVariable objectReference="ModelValue_57"/>
      <StateTemplateVariable objectReference="ModelValue_56"/>
      <StateTemplateVariable objectReference="ModelValue_55"/>
      <StateTemplateVariable objectReference="ModelValue_54"/>
      <StateTemplateVariable objectReference="ModelValue_53"/>
      <StateTemplateVariable objectReference="ModelValue_52"/>
      <StateTemplateVariable objectReference="ModelValue_51"/>
      <StateTemplateVariable objectReference="ModelValue_50"/>
      <StateTemplateVariable objectReference="ModelValue_49"/>
      <StateTemplateVariable objectReference="ModelValue_48"/>
      <StateTemplateVariable objectReference="ModelValue_47"/>
      <StateTemplateVariable objectReference="ModelValue_46"/>
      <StateTemplateVariable objectReference="ModelValue_45"/>
      <StateTemplateVariable objectReference="ModelValue_44"/>
      <StateTemplateVariable objectReference="ModelValue_43"/>
      <StateTemplateVariable objectReference="ModelValue_42"/>
      <StateTemplateVariable objectReference="ModelValue_41"/>
      <StateTemplateVariable objectReference="ModelValue_40"/>
      <StateTemplateVariable objectReference="ModelValue_39"/>
      <StateTemplateVariable objectReference="ModelValue_38"/>
      <StateTemplateVariable objectReference="ModelValue_37"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 4.657524236100003e+20 4.385323440300003e+20 5.49640854705e+20 0.1966445109679165 0.035 0.05982275279878373 0.01937984496124031 0 2.906976744186046 150 0 0.005 0.7 0.7 0.0021 0.0007 0.05 0 0 0 10 0.01 10 0.00058 0.017 0.02 3 0.189 3000000 0.35 200000 86 1000 250 1 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_9" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_6" target="" append="1"/>
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
    <Task key="Task_8" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_18" target="fig2.dat" append="0"/>
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
    <Task key="Task_7" name="Scan" type="scan" scheduled="false" updateModel="false">
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
    <Task key="Task_6" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_5" target="" append="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_5" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_4" target="" append="1"/>
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
      <Report reference="Report_3" target="" append="1"/>
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
    <Task key="Task_3" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_2" target="" append="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_9"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1e-09"/>
      </Method>
    </Task>
    <Task key="Task_2" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_1" target="" append="1"/>
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
    <Task key="Task_1" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_0" target="" append="1"/>
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
    <Task key="Task_10" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_17" target="" append="1"/>
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
    <Task key="Task_11" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_6" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          Automatically generated report.
        </body>
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_5" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          Automatically generated report.
        </body>
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_4" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
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
    <Report key="Report_3" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
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
    <Report key="Report_1" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
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
    <Report key="Report_0" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_17" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
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
    <Report key="Report_18" name="fig2" taskType="timeCourse" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          
        </body>
      </Comment>
      <Header>
        <Object cn="CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Reference=Name"/>
        <Object cn="String=\[Time\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Compartments[Compartment],Vector=Metabolites[Active_Osteoblasts],Reference=Name"/>
        <Object cn="String=\[Concentration\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Compartments[Compartment],Vector=Metabolites[Active_Osteoclasts],Reference=Name"/>
        <Object cn="String=\[Concentration\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Compartments[Compartment],Vector=Metabolites[Responding_Osteoblasts],Reference=Name"/>
        <Object cn="String=\[Concentration\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Reference=Time"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Compartments[Compartment],Vector=Metabolites[Active_Osteoblasts],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Compartments[Compartment],Vector=Metabolites[Active_Osteoclasts],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Compartments[Compartment],Vector=Metabolites[Responding_Osteoblasts],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Compartments[Compartment],Vector=Metabolites[Responding_Osteoblasts],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Active_Osteoblasts]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Compartments[Compartment],Vector=Metabolites[Active_Osteoblasts],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Active_Osteoclasts]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Compartments[Compartment],Vector=Metabolites[Active_Osteoclasts],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Phi_C]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Values[Phi_C],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[D_B]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Values[D_B],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Phi_L]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Values[Phi_L],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Phi_P]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Values[Phi_P],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Pbar]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Values[Pbar],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[P_O]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Values[P_O],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[P_S]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Values[P_S],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[add_Ccells]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Lemaire2004_BoneRemodeling_addOsteoclast,Vector=Values[add_Ccells],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="lemaire04_addC.xml">
    <SBMLMap SBMLid="B" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="C" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="C_s" COPASIkey="ModelValue_59"/>
    <SBMLMap SBMLid="Compartment" COPASIkey="Compartment_1"/>
    <SBMLMap SBMLid="D_A" COPASIkey="ModelValue_58"/>
    <SBMLMap SBMLid="D_B" COPASIkey="ModelValue_35"/>
    <SBMLMap SBMLid="D_C" COPASIkey="ModelValue_56"/>
    <SBMLMap SBMLid="D_R" COPASIkey="ModelValue_55"/>
    <SBMLMap SBMLid="I_L" COPASIkey="ModelValue_53"/>
    <SBMLMap SBMLid="I_O" COPASIkey="ModelValue_52"/>
    <SBMLMap SBMLid="I_P" COPASIkey="ModelValue_51"/>
    <SBMLMap SBMLid="K" COPASIkey="ModelValue_50"/>
    <SBMLMap SBMLid="K_L_P" COPASIkey="ModelValue_42"/>
    <SBMLMap SBMLid="K_O_P" COPASIkey="ModelValue_40"/>
    <SBMLMap SBMLid="P_O" COPASIkey="ModelValue_31"/>
    <SBMLMap SBMLid="P_S" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="Pbar" COPASIkey="ModelValue_32"/>
    <SBMLMap SBMLid="Phi_C" COPASIkey="ModelValue_36"/>
    <SBMLMap SBMLid="Phi_L" COPASIkey="ModelValue_34"/>
    <SBMLMap SBMLid="Phi_P" COPASIkey="ModelValue_33"/>
    <SBMLMap SBMLid="R" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="S_P" COPASIkey="ModelValue_37"/>
    <SBMLMap SBMLid="add_Ccells" COPASIkey="ModelValue_60"/>
    <SBMLMap SBMLid="d_B" COPASIkey="ModelValue_57"/>
    <SBMLMap SBMLid="f0" COPASIkey="ModelValue_54"/>
    <SBMLMap SBMLid="k1" COPASIkey="ModelValue_49"/>
    <SBMLMap SBMLid="k2" COPASIkey="ModelValue_48"/>
    <SBMLMap SBMLid="k3" COPASIkey="ModelValue_47"/>
    <SBMLMap SBMLid="k4" COPASIkey="ModelValue_46"/>
    <SBMLMap SBMLid="k5" COPASIkey="ModelValue_45"/>
    <SBMLMap SBMLid="k6" COPASIkey="ModelValue_44"/>
    <SBMLMap SBMLid="kO" COPASIkey="ModelValue_41"/>
    <SBMLMap SBMLid="k_B" COPASIkey="ModelValue_43"/>
    <SBMLMap SBMLid="k_P" COPASIkey="ModelValue_39"/>
    <SBMLMap SBMLid="r_L" COPASIkey="ModelValue_38"/>
  </SBMLReference>
</COPASI>
