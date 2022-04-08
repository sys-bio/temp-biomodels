<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.6.32 (Debug) (http://www.copasi.org) at 2010-11-23 13:01:13 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="1" versionMinor="0" versionDevel="32">
  <Model key="Model_0" name="Komarova2005_PTHaction_OsteoclastOsteoblastCoupling" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mol" type="deterministic">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Model_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-11-23T12:32:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
  <rdf:Description rdf:about="#komarova_2005">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-11-23T10:56:52+00:00</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2010-11-23T10:56:52+00:00</dcterms:W3CDTF>
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
  <strong> Mathematical model of paracrine interactions between osteoclasts and osteoblasts predicts anabolic action of parathyroid hormone on bone.
</strong>
  <br/>
Komarova SV.
      <em>Endocrinology.</em>2005 Aug;146(8):3589-95.
      <a href="http://www.ncbi.nlm.nih.gov/pubmed/15860557">15860557</a>,
      <br/>
  <strong>Abstract:</strong>
  <br/>
To restore falling plasma calcium levels, PTH promotes calcium liberation from bone. PTH targets bone-forming cells, osteoblasts, to increase expression of the cytokine receptor activator of nuclear factor kappaB ligand (RANKL), which then stimulates osteoclastic bone resorption. Intriguingly, whereas continuous administration of PTH decreases bone mass, intermittent PTH has an anabolic effect on bone, which was proposed to arise from direct effects of PTH on osteoblastic bone formation. However, antiresorptive therapies impair the ability of PTH to increase bone mass, indicating a complex role for osteoclasts in the process. We developed a mathematical model that describes the actions of PTH at a single site of bone remodeling, where osteoclasts and osteoblasts are regulated by local autocrine and paracrine factors. It was assumed that PTH acts only to increase the production of RANKL by osteoblasts. As a result, PTH stimulated osteoclasts upon application, followed by compensatory osteoblast activation due to the coupling of osteoblasts to osteoclasts through local paracrine factors. Continuous PTH administration resulted in net bone loss, because bone resorption preceded bone formation at all times. In contrast, over a wide range of model parameters, short application of PTH resulted in a net increase in bone mass, because osteoclasts were rapidly removed upon PTH withdrawal, enabling osteoblasts to rebuild the bone. In excellent agreement with experimental findings, increase in the rate of osteoclast death abolished the anabolic effect of PTH on bone. This study presents an original concept for the regulation of bone remodeling by PTH, currently the only approved anabolic treatment for osteoporosis.
   </p>
  <p> The model reproduces Figures 1B and 2A of the reference publication. To obtain the figures 1B, the parameter g21 needs changes. To obtain the figures 1A, the parameters g21, g12 and k2 need to changed. For details look at the curation tab.</p>
  <p>
This model was taken from the
      <a href="http://www.cellml.org/models">CellML repository</a> and automatically converted to SBML.
      <br/>
The original model was:
      <a href="http://www.cellml.org/models/CellMLname">
    <strong>CellMLdetails</strong>
  </a>
  <br/>
The original CellML model was created by:
      <br/>
  <strong>Lloyd, Catherine, May</strong>
  <br/>
c.lloyd@auckland.ac.nz
      <br/>
The University of Auckland
      <br/>
The Bioengineering Institute
      <br/></p>
</body>

    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_1" name="Compartment" simulationType="fixed" dimensionality="3">
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="Osteoclasts" simulationType="ode" compartment="Compartment_1">
        <Expression>
          &lt;CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Values[alpha1],Reference=Value&gt;*&lt;CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Compartments[Compartment],Vector=Metabolites[Osteoclasts],Reference=Concentration&gt;^&lt;CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Values[g11],Reference=Value&gt;*&lt;CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Compartments[Compartment],Vector=Metabolites[Osteoblasts],Reference=Concentration&gt;^&lt;CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Values[g21],Reference=Value&gt;-&lt;CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Values[beta1],Reference=Value&gt;*&lt;CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Compartments[Compartment],Vector=Metabolites[Osteoclasts],Reference=Concentration&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="Osteoblasts" simulationType="ode" compartment="Compartment_1">
        <Expression>
          &lt;CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Values[alpha2],Reference=Value&gt;*&lt;CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Compartments[Compartment],Vector=Metabolites[Osteoclasts],Reference=Concentration&gt;^&lt;CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Values[g12],Reference=Value&gt;*&lt;CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Compartments[Compartment],Vector=Metabolites[Osteoblasts],Reference=Concentration&gt;^&lt;CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Values[g22],Reference=Value&gt;-&lt;CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Values[beta2],Reference=Value&gt;*&lt;CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Compartments[Compartment],Vector=Metabolites[Osteoblasts],Reference=Concentration&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="BoneMass" simulationType="ode" compartment="Compartment_1">
        <Expression>
          &lt;CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Values[k2],Reference=Value&gt;*&lt;CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Values[y2],Reference=Value&gt;-&lt;CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Values[k1],Reference=Value&gt;*&lt;CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Values[y1],Reference=Value&gt;
        </Expression>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_1" name="y1" simulationType="assignment">
        <Expression>
          if(&lt;CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Compartments[Compartment],Vector=Metabolites[Osteoclasts],Reference=Concentration&gt; gt &lt;CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Values[x1_bar],Reference=Value&gt;,&lt;CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Compartments[Compartment],Vector=Metabolites[Osteoclasts],Reference=Concentration&gt;-&lt;CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Values[x1_bar],Reference=Value&gt;,0)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_19" name="y2" simulationType="assignment">
        <Expression>
          if(&lt;CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Compartments[Compartment],Vector=Metabolites[Osteoblasts],Reference=Concentration&gt; gt &lt;CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Values[x2_bar],Reference=Value&gt;,&lt;CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Compartments[Compartment],Vector=Metabolites[Osteoblasts],Reference=Concentration&gt;-&lt;CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Values[x2_bar],Reference=Value&gt;,0)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_20" name="x1_bar" simulationType="assignment">
        <Expression>
          (&lt;CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Values[beta1],Reference=Value&gt;/&lt;CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Values[alpha1],Reference=Value&gt;)^((1-&lt;CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Values[g22],Reference=Value&gt;)/&lt;CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Values[gamma],Reference=Value&gt;)*(&lt;CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Values[beta2],Reference=Value&gt;/&lt;CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Values[alpha2],Reference=Value&gt;)^(&lt;CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Values[g21],Reference=Value&gt;/&lt;CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Values[gamma],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_21" name="x2_bar" simulationType="assignment">
        <Expression>
          (&lt;CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Values[beta1],Reference=Value&gt;/&lt;CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Values[alpha1],Reference=Value&gt;)^(&lt;CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Values[g12],Reference=Value&gt;/&lt;CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Values[gamma],Reference=Value&gt;)*(&lt;CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Values[beta2],Reference=Value&gt;/&lt;CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Values[alpha2],Reference=Value&gt;)^((1-&lt;CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Values[g11],Reference=Value&gt;)/&lt;CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Values[gamma],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_22" name="alpha1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_23" name="beta1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_24" name="alpha2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_25" name="beta2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_26" name="k1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_27" name="k2" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-11-23T12:42:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_28" name="g11" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_29" name="g21" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-11-23T12:34:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          if(&lt;CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Reference=Time&gt; lt 2 and &lt;CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Reference=Time&gt; ge 1,0.1,-0.5)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_30" name="g12" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-11-23T12:42:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_31" name="g22" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_32" name="gamma" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Values[g12],Reference=Value&gt;*&lt;CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Values[g21],Reference=Value&gt;-(1-&lt;CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Values[g11],Reference=Value&gt;)*(1-&lt;CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Values[g22],Reference=Value&gt;)
        </Expression>
      </ModelValue>
    </ListOfModelValues>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="ModelValue_19"/>
      <StateTemplateVariable objectReference="ModelValue_20"/>
      <StateTemplateVariable objectReference="ModelValue_21"/>
      <StateTemplateVariable objectReference="ModelValue_29"/>
      <StateTemplateVariable objectReference="ModelValue_32"/>
      <StateTemplateVariable objectReference="ModelValue_22"/>
      <StateTemplateVariable objectReference="ModelValue_23"/>
      <StateTemplateVariable objectReference="ModelValue_24"/>
      <StateTemplateVariable objectReference="ModelValue_25"/>
      <StateTemplateVariable objectReference="ModelValue_26"/>
      <StateTemplateVariable objectReference="ModelValue_27"/>
      <StateTemplateVariable objectReference="ModelValue_28"/>
      <StateTemplateVariable objectReference="ModelValue_30"/>
      <StateTemplateVariable objectReference="ModelValue_31"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 6.38744460339e+23 1.277488920678e+26 6.022141500000024e+25 0 4.123617694809695 1.081687177730556 208.0083823051903 -0.5 -0.75 3 0.2 4 0.02 0.24 0.005 0.5 0.5 0 1 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_0" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_8" target="" append="1"/>
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
    <Task key="Task_1" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_7" target="fig2a1_blue.dat" append="0"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="15000"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="150"/>
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
    <Task key="Task_2" name="Scan" type="scan" scheduled="false" updateModel="false">
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
    <Task key="Task_3" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_0" target="" append="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_4" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_1" target="" append="1"/>
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
    <Task key="Task_5" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_2" target="" append="1"/>
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
    <Task key="Task_6" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_3" target="" append="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_0"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1e-09"/>
      </Method>
    </Task>
    <Task key="Task_7" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_4" target="" append="1"/>
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
    <Task key="Task_8" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_5" target="" append="1"/>
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
    <Task key="Task_9" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_6" target="" append="1"/>
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
    <Task key="Task_10" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_8" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          Automatically generated report.
        </body>
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_0" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          Automatically generated report.
        </body>
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_1" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
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
    <Report key="Report_2" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
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
    <Report key="Report_3" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_4" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
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
    <Report key="Report_5" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_6" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
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
    <Report key="Report_7" name="fig" taskType="timeCourse" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          
        </body>
      </Comment>
      <Header>
        <Object cn="CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Reference=Name"/>
        <Object cn="String=\[Time\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Compartments[Compartment],Vector=Metabolites[BoneMass],Reference=Name"/>
        <Object cn="String=\[Concentration\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Compartments[Compartment],Vector=Metabolites[Osteoblasts],Reference=Name"/>
        <Object cn="String=\[Concentration\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Compartments[Compartment],Vector=Metabolites[Osteoclasts],Reference=Name"/>
        <Object cn="String=\[Concentration\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Reference=Time"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Compartments[Compartment],Vector=Metabolites[BoneMass],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Compartments[Compartment],Vector=Metabolites[Osteoblasts],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Compartments[Compartment],Vector=Metabolites[Osteoclasts],Reference=Concentration"/>
      </Body>
    </Report>
    <Report key="Report_9" name="report_1" taskType="timeCourse" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          
        </body>
      </Comment>
      <Table printTitle="1">
      </Table>
    </Report>
  </ListOfReports>
  <ListOfPlots>
    <PlotSpecification name="Concentrations, Volumes, and Global Quantity Values" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[Osteoclasts]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Compartments[Compartment],Vector=Metabolites[Osteoclasts],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Osteoblasts]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Compartments[Compartment],Vector=Metabolites[Osteoblasts],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[BoneMass]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Compartments[Compartment],Vector=Metabolites[BoneMass],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[y1]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Values[y1],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[y2]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Values[y2],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[x1_bar]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Values[x1_bar],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[x2_bar]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Values[x2_bar],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[g21]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Values[g21],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[gamma]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Komarova2005_PTHaction_OsteoclastOsteoblastCoupling,Vector=Values[gamma],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="komarova_mod_2005.xml">
    <SBMLMap SBMLid="Compartment" COPASIkey="Compartment_1"/>
    <SBMLMap SBMLid="alpha1" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="alpha2" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="beta1" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="beta2" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="g11" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="g12" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="g21" COPASIkey="ModelValue_29"/>
    <SBMLMap SBMLid="g22" COPASIkey="ModelValue_31"/>
    <SBMLMap SBMLid="gamma" COPASIkey="ModelValue_32"/>
    <SBMLMap SBMLid="k1" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="k2" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="x1" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="x1_bar" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="x2" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="x2_bar" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="y1" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="y2" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="z" COPASIkey="Metabolite_2"/>
  </SBMLReference>
</COPASI>
