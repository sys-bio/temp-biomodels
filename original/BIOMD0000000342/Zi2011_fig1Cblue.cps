<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.6.32 (Debug) (http://www.copasi.org) at 2011-07-14 10:21:35 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="1" versionMinor="0" versionDevel="32">
  <ListOfFunctions>
    <Function key="Function_6" name="Constant flux (irreversible)" type="PreDefined" reversible="false">
      <Expression>
        v
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_49" name="v" order="0" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_13" name="Mass action (irreversible)" type="MassAction" reversible="false">
      <Expression>
        k1*PRODUCT&lt;substrate_i&gt;
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_81" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_79" name="substrate" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_14" name="Mass action (reversible)" type="MassAction" reversible="true">
      <Expression>
        k1*PRODUCT&lt;substrate_i&gt;-k2*PRODUCT&lt;product_j&gt;
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_62" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_39" name="substrate" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_67" name="k2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_71" name="product" order="3" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_92" name="function_4_LRC activation_1" type="UserDefined" reversible="false">
      <Expression>
        Vcyt*ka_LRC*TGF_beta_ex*T2R_surf*T1R_surf
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_388" name="T1R_surf" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_389" name="T2R_surf" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_390" name="TGF_beta_ex" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_391" name="Vcyt" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_392" name="ka_LRC" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_93" name="function_4_Smad2 nuclear import_1" type="UserDefined" reversible="false">
      <Expression>
        Vcyt*kimp_Smad2*Smad2c
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_404" name="Smad2c" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_405" name="Vcyt" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_406" name="kimp_Smad2" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_94" name="function_4_Smad2 nuclear export_1" type="UserDefined" reversible="false">
      <Expression>
        Vnuc*kexp_Smad2*Smad2n
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_410" name="Smad2n" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_411" name="Vnuc" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_412" name="kexp_Smad2" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_95" name="function_4_Smad4 nuclear import_1" type="UserDefined" reversible="false">
      <Expression>
        Vcyt*kimp_Smad4*Smad4c
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_416" name="Smad4c" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_417" name="Vcyt" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_418" name="kimp_Smad4" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_96" name="function_4_Smad4 nuclear export_1" type="UserDefined" reversible="false">
      <Expression>
        Vnuc*kexp_Smad4*Smad4n
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_422" name="Smad4n" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_423" name="Vnuc" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_424" name="kexp_Smad4" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_97" name="function_4_Smad2 phosphorylation_1" type="UserDefined" reversible="false">
      <Expression>
        kpho_Smad2*Smad2c*LRC_endo
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_428" name="LRC_endo" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_429" name="Smad2c" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_430" name="kpho_Smad2" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_98" name="function_4_PSmad2 nuclear import_1" type="UserDefined" reversible="false">
      <Expression>
        Vcyt*kimp_Smad2*PSmad2c
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_434" name="PSmad2c" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_435" name="Vcyt" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_436" name="kimp_Smad2" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_99" name="function_4_PSmad2 nuclear export_1" type="UserDefined" reversible="false">
      <Expression>
        Vnuc*kexp_Smad2*PSmad2n
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_440" name="PSmad2n" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_441" name="Vnuc" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_442" name="kexp_Smad2" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_100" name="function_4_Smad2-Smad4 nuclear import_1" type="UserDefined" reversible="false">
      <Expression>
        Vcyt*kimp_Smads*PSmad2_Smad4_c
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_450" name="PSmad2_Smad4_c" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_451" name="Vcyt" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_452" name="kimp_Smads" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_101" name="function_4_PSmad2 dimer nuclear  import_1" type="UserDefined" reversible="false">
      <Expression>
        Vcyt*kimp_Smads*PSmad2_PSmad2_c
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_466" name="PSmad2_PSmad2_c" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_467" name="Vcyt" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_468" name="kimp_Smads" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_102" name="function_4_negative feedback induced LRC degradation_1" type="UserDefined" reversible="false">
      <Expression>
        klid*LRC_surf*totalNuclearPSmad2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_476" name="LRC_surf" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_477" name="klid" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_478" name="totalNuclearPSmad2" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_0" name="Zi2011_TGF-beta_Pathway" simulationType="time" timeUnit="min" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="nmol" type="deterministic">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Model_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-07-14T11:17:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      <body xmlns="http://www.w3.org/1999/xhtml">
  <p>
      This model is from the article:
      <br/>
  <strong> Quantitative analysis of transient and sustained transforming growth factor-β signaling dynamics.
</strong>
  <br/>
Zhike Zi, Zipei Feng, Douglas A Chapnick, Markus Dahl, Difan Deng, Edda Klipp, Aristidis Moustakas &amp; Xuedong Liu
      <em>Molecular Systems Biology</em>2011 May 24;7:492. 
      <a href="http://www.ncbi.nlm.nih.gov/pubmed/21613981">21613981</a>,
      <br/>
  <strong>Abstract:</strong>
  <br/>
Mammalian cells can decode the concentration of extracellular transforming growth factor-β (TGF-β) and transduce this cue into appropriate cell fate decisions. How variable TGF-β ligand doses quantitatively control intracellular signaling dynamics and how continuous ligand doses are translated into discontinuous cellular fate decisions remain poorly understood. Using a combined experimental and mathematical modeling approach, we discovered that cells respond differently to continuous and pulsating TGF-β stimulation. The TGF-β pathway elicits a transient signaling response to a single pulse of TGF-β stimulation, whereas it is capable of integrating repeated pulses of ligand stimulation at short time interval, resulting in sustained phospho-Smad2 and transcriptional responses. Additionally, the TGF-β pathway displays different sensitivities to ligand doses at different time scales. While ligand-induced short-term Smad2 phosphorylation is graded, long-term Smad2 phosphorylation is switch-like to a small change in TGF-β levels. Correspondingly, the short-term Smad7 gene expression is graded, while long-term PAI-1 gene expression is switch-like, as is the long-term growth inhibitory response. Our results suggest that long-term switch-like signaling responses in the TGF-β pathway might be critical for cell fate determination.
   </p>
  <p>
    <b>Note:</b>
  </p>
  <p>Developer of the model: Zhike Zi</p>
  <p>Reference: Zi Z. et al., Quantitative Analysis of Transient and Sustained Transforming Growth Factor-beta Signaling Dynamics, Molecular Systems Biology, 2011</p>
  <p>1. The global parameter that set the type of stimulation</p>
  <p>(a) for sustained TGF-beta stimulation: set stimulation_type = 1.</p>
  <p>(b) for single pulse of TGF-beta stimulation: set stimulation_type = 2.</p>
  <p>    parameter &quot;single_pulse_duration&quot; is for the duration of stimulation, for example,</p>
  <p>    single_pulse_duration = 0.5, for 0.5 min (30 seconds) of TGF-beta stimulation.</p>
  <p>    *Note: make sure that the time course cover the time point when the event is triggered.</p>
  <p>(c) for single pulse of TGF-beta stimulation in COPASI</p>
  <p>    change the trigger of event &quot;single_pulse_TGF_beta_washout&quot;</p>
  <p>    from</p>
  <p>    &quot;and(eq(stimulation_type, 2), eq(time, single_pulse_duration))&quot;   (for SBML-SAT)</p>
  <p>    to</p>
  <p>    &quot;and(eq(stimulation_type, 2), gt(time, single_pulse_duration))&quot;  (for COPASI)</p>
  <p/>
  <p>2. Notes for TGF-beta dose in terms of molecules per cell</p>
  <p>(a) The following equation applies for conversion of TGF-beta dose in molecules per cell</p>
  <p>    TGF_beta_dose_mol_per_cell = initial TGF_beta_ex*1e-9*Vmed*6e23</p>
  <p>(b) for standard experimental setup 1e6 cells in 2 mL medium</p>
  <p>    0.001 nM initial TGF_beta_ex is approximately equal to the dose of 1200 TGF-beta molecules/cell</p>
  <p>    0.050 nM initial TGF_beta_ex is approximately equal to the dose of 60000 TGF-beta molecules/cell</p>
  <p>    (c) For 1e6 cells in 10 mL medium, please change the initial compartment size of Vmed and the corresponding assignment rule for Vmed.</p>
  <p>        initial Vmed = 1e-8  (1e6 cells in 10 mL medium)</p>
  <p>        Vmed = 0.010/(1e6*exp(log(1.45)*time/1440))  (1e6 cells in 10 mL medium)</p>
  <p/>
  <p>3. Please note that this model contains events and the medium compartment size is varied.</p>
  <p/>
  <p>4. For the model simulation in SBML-SAT, please remove initialAssignments and save it as SBML Level 2 Verion 1 file.</p>
</body>

    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_4" name="default" simulationType="fixed" dimensionality="3">
      </Compartment>
      <Compartment key="Compartment_5" name="Medium" simulationType="assignment" dimensionality="3">
        <Expression>
          0.002/(1e+06*exp(log(1.45)*&lt;CN=Root,Model=Zi2011_TGF-beta_Pathway,Reference=Time&gt;/1440))
        </Expression>
      </Compartment>
      <Compartment key="Compartment_6" name="Cytoplasm" simulationType="fixed" dimensionality="3">
      </Compartment>
      <Compartment key="Compartment_7" name="Nucleus" simulationType="fixed" dimensionality="3">
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_21" name="TGF_beta_ex" simulationType="reactions" compartment="Compartment_5">
      </Metabolite>
      <Metabolite key="Metabolite_39" name="TGF_beta_ns" simulationType="reactions" compartment="Compartment_5">
      </Metabolite>
      <Metabolite key="Metabolite_22" name="T1R_surf" simulationType="reactions" compartment="Compartment_6">
        <InitialExpression>
          (&lt;CN=Root,Model=Zi2011_TGF-beta_Pathway,Vector=Values[k_T1R],Reference=InitialValue&gt;*&lt;CN=Root,Model=Zi2011_TGF-beta_Pathway,Vector=Values[kdeg_T1R],Reference=InitialValue&gt;+&lt;CN=Root,Model=Zi2011_TGF-beta_Pathway,Vector=Values[k_T1R],Reference=InitialValue&gt;*&lt;CN=Root,Model=Zi2011_TGF-beta_Pathway,Vector=Values[kr],Reference=InitialValue&gt;)/(&lt;CN=Root,Model=Zi2011_TGF-beta_Pathway,Vector=Values[kdeg_T1R],Reference=InitialValue&gt;*&lt;CN=Root,Model=Zi2011_TGF-beta_Pathway,Vector=Values[ki],Reference=InitialValue&gt;)
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_23" name="T1R_endo" simulationType="reactions" compartment="Compartment_6">
        <InitialExpression>
          &lt;CN=Root,Model=Zi2011_TGF-beta_Pathway,Vector=Values[k_T1R],Reference=InitialValue&gt;/&lt;CN=Root,Model=Zi2011_TGF-beta_Pathway,Vector=Values[kdeg_T1R],Reference=InitialValue&gt;
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_24" name="T2R_surf" simulationType="reactions" compartment="Compartment_6">
        <InitialExpression>
          (&lt;CN=Root,Model=Zi2011_TGF-beta_Pathway,Vector=Values[k_T2R],Reference=InitialValue&gt;*&lt;CN=Root,Model=Zi2011_TGF-beta_Pathway,Vector=Values[kdeg_T2R],Reference=InitialValue&gt;+&lt;CN=Root,Model=Zi2011_TGF-beta_Pathway,Vector=Values[k_T2R],Reference=InitialValue&gt;*&lt;CN=Root,Model=Zi2011_TGF-beta_Pathway,Vector=Values[kr],Reference=InitialValue&gt;)/(&lt;CN=Root,Model=Zi2011_TGF-beta_Pathway,Vector=Values[kdeg_T2R],Reference=InitialValue&gt;*&lt;CN=Root,Model=Zi2011_TGF-beta_Pathway,Vector=Values[ki],Reference=InitialValue&gt;)
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_25" name="T2R_endo" simulationType="reactions" compartment="Compartment_6">
        <InitialExpression>
          &lt;CN=Root,Model=Zi2011_TGF-beta_Pathway,Vector=Values[k_T2R],Reference=InitialValue&gt;/&lt;CN=Root,Model=Zi2011_TGF-beta_Pathway,Vector=Values[kdeg_T2R],Reference=InitialValue&gt;
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_26" name="LRC_surf" simulationType="reactions" compartment="Compartment_6">
      </Metabolite>
      <Metabolite key="Metabolite_27" name="LRC_endo" simulationType="reactions" compartment="Compartment_6">
      </Metabolite>
      <Metabolite key="Metabolite_28" name="Smad2c" simulationType="reactions" compartment="Compartment_6">
      </Metabolite>
      <Metabolite key="Metabolite_30" name="Smad4c" simulationType="reactions" compartment="Compartment_6">
      </Metabolite>
      <Metabolite key="Metabolite_32" name="PSmad2c" simulationType="reactions" compartment="Compartment_6">
      </Metabolite>
      <Metabolite key="Metabolite_33" name="PSmad2_PSmad2_c" simulationType="reactions" compartment="Compartment_6">
      </Metabolite>
      <Metabolite key="Metabolite_34" name="PSmad2_Smad4_c" simulationType="reactions" compartment="Compartment_6">
      </Metabolite>
      <Metabolite key="Metabolite_38" name="TGF_beta_endo" simulationType="reactions" compartment="Compartment_6">
      </Metabolite>
      <Metabolite key="Metabolite_40" name="AA" simulationType="fixed" compartment="Compartment_6">
      </Metabolite>
      <Metabolite key="Metabolite_41" name="empty_degraded" simulationType="fixed" compartment="Compartment_6">
      </Metabolite>
      <Metabolite key="Metabolite_29" name="Smad2n" simulationType="reactions" compartment="Compartment_7">
      </Metabolite>
      <Metabolite key="Metabolite_31" name="Smad4n" simulationType="reactions" compartment="Compartment_7">
      </Metabolite>
      <Metabolite key="Metabolite_35" name="PSmad2n" simulationType="reactions" compartment="Compartment_7">
      </Metabolite>
      <Metabolite key="Metabolite_36" name="PSmad2_PSmad2_n" simulationType="reactions" compartment="Compartment_7">
      </Metabolite>
      <Metabolite key="Metabolite_37" name="PSmad2_Smad4_n" simulationType="reactions" compartment="Compartment_7">
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_34" name="stimulation_type" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_35" name="single_pulse_duration" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_36" name="totalNumT1R" simulationType="assignment">
        <Expression>
          (&lt;CN=Root,Model=Zi2011_TGF-beta_Pathway,Vector=Compartments[Cytoplasm],Vector=Metabolites[T1R_surf],Reference=Concentration&gt;+&lt;CN=Root,Model=Zi2011_TGF-beta_Pathway,Vector=Compartments[Cytoplasm],Vector=Metabolites[T1R_endo],Reference=Concentration&gt;+&lt;CN=Root,Model=Zi2011_TGF-beta_Pathway,Vector=Compartments[Cytoplasm],Vector=Metabolites[LRC_surf],Reference=Concentration&gt;+&lt;CN=Root,Model=Zi2011_TGF-beta_Pathway,Vector=Compartments[Cytoplasm],Vector=Metabolites[LRC_endo],Reference=Concentration&gt;)*2.3*602
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_37" name="totalNumT2R" simulationType="assignment">
        <Expression>
          (&lt;CN=Root,Model=Zi2011_TGF-beta_Pathway,Vector=Compartments[Cytoplasm],Vector=Metabolites[T2R_surf],Reference=Concentration&gt;+&lt;CN=Root,Model=Zi2011_TGF-beta_Pathway,Vector=Compartments[Cytoplasm],Vector=Metabolites[T2R_endo],Reference=Concentration&gt;+&lt;CN=Root,Model=Zi2011_TGF-beta_Pathway,Vector=Compartments[Cytoplasm],Vector=Metabolites[LRC_surf],Reference=Concentration&gt;+&lt;CN=Root,Model=Zi2011_TGF-beta_Pathway,Vector=Compartments[Cytoplasm],Vector=Metabolites[LRC_endo],Reference=Concentration&gt;)*2.3*602
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_38" name="totalNumLRC" simulationType="assignment">
        <Expression>
          (&lt;CN=Root,Model=Zi2011_TGF-beta_Pathway,Vector=Compartments[Cytoplasm],Vector=Metabolites[LRC_surf],Reference=Concentration&gt;+&lt;CN=Root,Model=Zi2011_TGF-beta_Pathway,Vector=Compartments[Cytoplasm],Vector=Metabolites[LRC_endo],Reference=Concentration&gt;)*2.3*602
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_39" name="totalNumPSmad2" simulationType="assignment">
        <Expression>
          (&lt;CN=Root,Model=Zi2011_TGF-beta_Pathway,Vector=Compartments[Cytoplasm],Vector=Metabolites[PSmad2c],Reference=Concentration&gt;+&lt;CN=Root,Model=Zi2011_TGF-beta_Pathway,Vector=Compartments[Cytoplasm],Vector=Metabolites[PSmad2_PSmad2_c],Reference=Concentration&gt;*2+&lt;CN=Root,Model=Zi2011_TGF-beta_Pathway,Vector=Compartments[Cytoplasm],Vector=Metabolites[PSmad2_Smad4_c],Reference=Concentration&gt;)*2.3*602+(&lt;CN=Root,Model=Zi2011_TGF-beta_Pathway,Vector=Compartments[Nucleus],Vector=Metabolites[PSmad2n],Reference=Concentration&gt;+&lt;CN=Root,Model=Zi2011_TGF-beta_Pathway,Vector=Compartments[Nucleus],Vector=Metabolites[PSmad2_PSmad2_n],Reference=Concentration&gt;*2+&lt;CN=Root,Model=Zi2011_TGF-beta_Pathway,Vector=Compartments[Nucleus],Vector=Metabolites[PSmad2_Smad4_n],Reference=Concentration&gt;)*602
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_40" name="totalNuclearPSmad2" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Zi2011_TGF-beta_Pathway,Vector=Compartments[Nucleus],Vector=Metabolites[PSmad2n],Reference=Concentration&gt;+2*&lt;CN=Root,Model=Zi2011_TGF-beta_Pathway,Vector=Compartments[Nucleus],Vector=Metabolites[PSmad2_PSmad2_n],Reference=Concentration&gt;+&lt;CN=Root,Model=Zi2011_TGF-beta_Pathway,Vector=Compartments[Nucleus],Vector=Metabolites[PSmad2_Smad4_n],Reference=Concentration&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_41" name="totalSmad2c" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Zi2011_TGF-beta_Pathway,Vector=Compartments[Cytoplasm],Vector=Metabolites[Smad2c],Reference=Concentration&gt;+&lt;CN=Root,Model=Zi2011_TGF-beta_Pathway,Vector=Compartments[Cytoplasm],Vector=Metabolites[PSmad2c],Reference=Concentration&gt;+2*&lt;CN=Root,Model=Zi2011_TGF-beta_Pathway,Vector=Compartments[Cytoplasm],Vector=Metabolites[PSmad2_PSmad2_c],Reference=Concentration&gt;+&lt;CN=Root,Model=Zi2011_TGF-beta_Pathway,Vector=Compartments[Cytoplasm],Vector=Metabolites[PSmad2_Smad4_c],Reference=Concentration&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_42" name="totalSmad2n" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Zi2011_TGF-beta_Pathway,Vector=Compartments[Nucleus],Vector=Metabolites[Smad2n],Reference=Concentration&gt;+&lt;CN=Root,Model=Zi2011_TGF-beta_Pathway,Vector=Compartments[Nucleus],Vector=Metabolites[PSmad2n],Reference=Concentration&gt;+2*&lt;CN=Root,Model=Zi2011_TGF-beta_Pathway,Vector=Compartments[Nucleus],Vector=Metabolites[PSmad2_PSmad2_n],Reference=Concentration&gt;+&lt;CN=Root,Model=Zi2011_TGF-beta_Pathway,Vector=Compartments[Nucleus],Vector=Metabolites[PSmad2_Smad4_n],Reference=Concentration&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_43" name="medium_TGF_beta_amount" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Zi2011_TGF-beta_Pathway,Vector=Compartments[Medium],Vector=Metabolites[TGF_beta_ex],Reference=Concentration&gt;*1e-09*&lt;CN=Root,Model=Zi2011_TGF-beta_Pathway,Vector=Compartments[Medium],Reference=Volume&gt;*6e+23
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_44" name="TGF_beta_dose_mol_per_cell" simulationType="fixed">
        <InitialExpression>
          &lt;CN=Root,Model=Zi2011_TGF-beta_Pathway,Vector=Compartments[Medium],Vector=Metabolites[TGF_beta_ex],Reference=InitialConcentration&gt;*1e-09*&lt;CN=Root,Model=Zi2011_TGF-beta_Pathway,Vector=Compartments[Medium],Reference=InitialVolume&gt;*6e+23
        </InitialExpression>
      </ModelValue>
      <ModelValue key="ModelValue_45" name="ki" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_46" name="kr" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_47" name="k_T1R" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_48" name="k_T2R" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_49" name="kdeg_T1R" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_50" name="kdeg_T2R" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_51" name="kdeg_LRC" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_52" name="kdeg_TGF_beta" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_53" name="klid" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_54" name="ka_LRC" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_55" name="kdiss_LRC" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_56" name="kimp_Smad2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_57" name="kexp_Smad2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_58" name="kimp_Smad4" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_59" name="kexp_Smad4" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_60" name="kpho_Smad2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_61" name="kon_Smads" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_62" name="koff_Smads" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_63" name="kimp_Smads" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_64" name="kdepho_Smad2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_65" name="kon_ns" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_66" name="koff_ns" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Zi2011_TGF-beta_Pathway,Vector=Values[kon_ns],Reference=Value&gt;*&lt;CN=Root,Model=Zi2011_TGF-beta_Pathway,Vector=Values[KD_ns],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_67" name="KD_ns" simulationType="fixed">
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_29" name="T1R production" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_678" name="v" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_6">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_47"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_30" name="T1R internalization to early endosome" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_677" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_31" name="T1R recycling from early endosome" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_676" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_32" name="T1R constitutive degradation" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_675" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_33" name="T2R production" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_674" name="v" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_6">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_48"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_34" name="T2R internalization to early endosome" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_673" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_35" name="T2R recycling from early endosome" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_672" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_36" name="T2R constitutive degradation" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_671" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_37" name="LRC activation" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_24" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_670" name="ka_LRC" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_92">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_388">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_389">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_390">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_391">
              <SourceParameter reference="Compartment_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_392">
              <SourceParameter reference="ModelValue_54"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_38" name="LRC internalization to early endosome" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_669" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_39" name="LRC constitutive degradation" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_668" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_40" name="dissociation of LRC in endosome" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
          <Product metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_667" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_41" name="TGF-beta constitutive degradation" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_666" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_52"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_42" name="Smad2 nuclear import" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_665" name="kimp_Smad2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_93">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_404">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_405">
              <SourceParameter reference="Compartment_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_406">
              <SourceParameter reference="ModelValue_56"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_43" name="Smad2 nuclear export" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_664" name="kexp_Smad2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_94">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_410">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_411">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_412">
              <SourceParameter reference="ModelValue_57"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_44" name="Smad4 nuclear import" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_663" name="kimp_Smad4" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_95">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_416">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_417">
              <SourceParameter reference="Compartment_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_418">
              <SourceParameter reference="ModelValue_58"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_45" name="Smad4 nuclear export" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_662" name="kexp_Smad4" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_96">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_422">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_423">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_424">
              <SourceParameter reference="ModelValue_59"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_46" name="Smad2 phosphorylation" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_661" name="kpho_Smad2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_97">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_428">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_429">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_430">
              <SourceParameter reference="ModelValue_60"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_47" name="PSmad2 nuclear import" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_660" name="kimp_Smad2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_98">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_434">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_435">
              <SourceParameter reference="Compartment_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_436">
              <SourceParameter reference="ModelValue_56"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_48" name="PSmad2 nuclear export" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_659" name="kexp_Smad2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_99">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_440">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_441">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_442">
              <SourceParameter reference="ModelValue_57"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_49" name="Smad2-Smad4 complex formation" reversible="true">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_32" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_658" name="k1" value="1"/>
          <Constant key="Parameter_657" name="k2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_14">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_62">
              <SourceParameter reference="ModelValue_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_39">
              <SourceParameter reference="Metabolite_32"/>
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_67">
              <SourceParameter reference="ModelValue_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_71">
              <SourceParameter reference="Metabolite_34"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_50" name="Smad2-Smad4 nuclear import" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_656" name="kimp_Smads" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_100">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_450">
              <SourceParameter reference="Metabolite_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_451">
              <SourceParameter reference="Compartment_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_452">
              <SourceParameter reference="ModelValue_63"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_51" name="Smad2-Smad4 dissociation" reversible="true">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_35" stoichiometry="1"/>
          <Product metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_655" name="k1" value="1"/>
          <Constant key="Parameter_654" name="k2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_14">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_62">
              <SourceParameter reference="ModelValue_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_39">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_67">
              <SourceParameter reference="ModelValue_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_71">
              <SourceParameter reference="Metabolite_35"/>
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_52" name="Smad2 dephosphorylation" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_653" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_64"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_53" name="PSmad2 dimer formation" reversible="true">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_32" stoichiometry="2"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_652" name="k1" value="1"/>
          <Constant key="Parameter_651" name="k2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_14">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_62">
              <SourceParameter reference="ModelValue_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_39">
              <SourceParameter reference="Metabolite_32"/>
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_67">
              <SourceParameter reference="ModelValue_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_71">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_54" name="PSmad2 dimer nuclear  import" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_650" name="kimp_Smads" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_101">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_466">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_467">
              <SourceParameter reference="Compartment_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_468">
              <SourceParameter reference="ModelValue_63"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_55" name="PSmad2 dimmer dissociation" reversible="true">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_35" stoichiometry="2"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_649" name="k1" value="1"/>
          <Constant key="Parameter_648" name="k2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_14">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_62">
              <SourceParameter reference="ModelValue_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_39">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_67">
              <SourceParameter reference="ModelValue_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_71">
              <SourceParameter reference="Metabolite_35"/>
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_56" name="negative feedback induced LRC degradation" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_647" name="klid" value="1"/>
          <Constant key="Parameter_646" name="totalNuclearPSmad2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_102">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_476">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_477">
              <SourceParameter reference="ModelValue_53"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_478">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_57" name="non-specific binding of TGF-beta" reversible="true">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_645" name="k1" value="1"/>
          <Constant key="Parameter_644" name="k2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_14">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_62">
              <SourceParameter reference="ModelValue_65"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_39">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_67">
              <SourceParameter reference="ModelValue_66"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_71">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfEvents>
      <Event key="Event_1" name="TGF-beta washout in singel pulse stimulation" order="1" delayAssignment="true">
        <TriggerExpression>
          &lt;CN=Root,Model=Zi2011_TGF-beta_Pathway,Reference=Time&gt; eq &lt;CN=Root,Model=Zi2011_TGF-beta_Pathway,Vector=Values[single_pulse_duration],Reference=Value&gt; and &lt;CN=Root,Model=Zi2011_TGF-beta_Pathway,Vector=Values[stimulation_type],Reference=Value&gt; eq 2
        </TriggerExpression>
        <DelayExpression>
          0
        </DelayExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_21">
            <Expression>
              0
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
    </ListOfEvents>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_32"/>
      <StateTemplateVariable objectReference="Metabolite_35"/>
      <StateTemplateVariable objectReference="Metabolite_22"/>
      <StateTemplateVariable objectReference="Metabolite_25"/>
      <StateTemplateVariable objectReference="Metabolite_28"/>
      <StateTemplateVariable objectReference="Metabolite_31"/>
      <StateTemplateVariable objectReference="Metabolite_24"/>
      <StateTemplateVariable objectReference="Metabolite_27"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_26"/>
      <StateTemplateVariable objectReference="Metabolite_34"/>
      <StateTemplateVariable objectReference="Metabolite_36"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_38"/>
      <StateTemplateVariable objectReference="Metabolite_29"/>
      <StateTemplateVariable objectReference="Metabolite_37"/>
      <StateTemplateVariable objectReference="Metabolite_39"/>
      <StateTemplateVariable objectReference="Metabolite_30"/>
      <StateTemplateVariable objectReference="Metabolite_33"/>
      <StateTemplateVariable objectReference="Compartment_5"/>
      <StateTemplateVariable objectReference="ModelValue_40"/>
      <StateTemplateVariable objectReference="ModelValue_66"/>
      <StateTemplateVariable objectReference="ModelValue_36"/>
      <StateTemplateVariable objectReference="ModelValue_37"/>
      <StateTemplateVariable objectReference="ModelValue_38"/>
      <StateTemplateVariable objectReference="ModelValue_39"/>
      <StateTemplateVariable objectReference="ModelValue_41"/>
      <StateTemplateVariable objectReference="ModelValue_42"/>
      <StateTemplateVariable objectReference="ModelValue_43"/>
      <StateTemplateVariable objectReference="Metabolite_40"/>
      <StateTemplateVariable objectReference="Metabolite_41"/>
      <StateTemplateVariable objectReference="ModelValue_34"/>
      <StateTemplateVariable objectReference="ModelValue_35"/>
      <StateTemplateVariable objectReference="ModelValue_44"/>
      <StateTemplateVariable objectReference="ModelValue_45"/>
      <StateTemplateVariable objectReference="ModelValue_46"/>
      <StateTemplateVariable objectReference="ModelValue_47"/>
      <StateTemplateVariable objectReference="ModelValue_48"/>
      <StateTemplateVariable objectReference="ModelValue_49"/>
      <StateTemplateVariable objectReference="ModelValue_50"/>
      <StateTemplateVariable objectReference="ModelValue_51"/>
      <StateTemplateVariable objectReference="ModelValue_52"/>
      <StateTemplateVariable objectReference="ModelValue_53"/>
      <StateTemplateVariable objectReference="ModelValue_54"/>
      <StateTemplateVariable objectReference="ModelValue_55"/>
      <StateTemplateVariable objectReference="ModelValue_56"/>
      <StateTemplateVariable objectReference="ModelValue_57"/>
      <StateTemplateVariable objectReference="ModelValue_58"/>
      <StateTemplateVariable objectReference="ModelValue_59"/>
      <StateTemplateVariable objectReference="ModelValue_60"/>
      <StateTemplateVariable objectReference="ModelValue_61"/>
      <StateTemplateVariable objectReference="ModelValue_62"/>
      <StateTemplateVariable objectReference="ModelValue_63"/>
      <StateTemplateVariable objectReference="ModelValue_64"/>
      <StateTemplateVariable objectReference="ModelValue_65"/>
      <StateTemplateVariable objectReference="ModelValue_67"/>
      <StateTemplateVariable objectReference="Compartment_4"/>
      <StateTemplateVariable objectReference="Compartment_6"/>
      <StateTemplateVariable objectReference="Compartment_7"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 0 0 973.0190640059475 1994.491292298637 83936.60822699999 30592.47882 278.5100453209808 0 9035.564649023438 0 0 0 60221.41500000002 0 17163.103275 0 0 70362.70128600001 0 2e-09 0 2.03305917141 10005.0246166479 2272.193048348348 0 0 60.59999999999999 28.5 60000.00000000001 0 0 1 0.5 60000.00000000001 0.333 0.0333 0.0167 0.0190076 0.00256 0.0132 0.00256 0.347 0.0233678 117.897 0.0438111 0.156 0.763 0.156 0.359 0.0488268 0.198472 1 0.889 0.394 0.0505413 40.2257 1 2.3e-12 1e-12 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_11" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_0" target="" append="1"/>
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
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="48000"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="480"/>
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
      <Report reference="Report_1" target="" append="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_4" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_2" target="" append="1"/>
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
    <Task key="Task_6" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_4" target="" append="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_11"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1e-09"/>
      </Method>
    </Task>
    <Task key="Task_7" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_5" target="" append="1"/>
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
      <Report reference="Report_6" target="" append="1"/>
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
      <Report reference="Report_7" target="" append="1"/>
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
    <Task key="Task_0" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_0" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          Automatically generated report.
        </body>
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_1" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          Automatically generated report.
        </body>
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_2" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
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
    <Report key="Report_4" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_5" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
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
    <Report key="Report_6" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_7" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
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
  </ListOfReports>
  <ListOfPlots>
    <PlotSpecification name="fig1" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[totalNumPSmad2]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zi2011_TGF-beta_Pathway,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zi2011_TGF-beta_Pathway,Vector=Values[totalNumPSmad2],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="zi11.xml">
    <SBMLMap SBMLid="AA" COPASIkey="Metabolite_40"/>
    <SBMLMap SBMLid="KD_ns" COPASIkey="ModelValue_67"/>
    <SBMLMap SBMLid="LRC_endo" COPASIkey="Metabolite_27"/>
    <SBMLMap SBMLid="LRC_surf" COPASIkey="Metabolite_26"/>
    <SBMLMap SBMLid="PSmad2_PSmad2_c" COPASIkey="Metabolite_33"/>
    <SBMLMap SBMLid="PSmad2_PSmad2_n" COPASIkey="Metabolite_36"/>
    <SBMLMap SBMLid="PSmad2_Smad4_c" COPASIkey="Metabolite_34"/>
    <SBMLMap SBMLid="PSmad2_Smad4_n" COPASIkey="Metabolite_37"/>
    <SBMLMap SBMLid="PSmad2c" COPASIkey="Metabolite_32"/>
    <SBMLMap SBMLid="PSmad2n" COPASIkey="Metabolite_35"/>
    <SBMLMap SBMLid="Smad2c" COPASIkey="Metabolite_28"/>
    <SBMLMap SBMLid="Smad2n" COPASIkey="Metabolite_29"/>
    <SBMLMap SBMLid="Smad4c" COPASIkey="Metabolite_30"/>
    <SBMLMap SBMLid="Smad4n" COPASIkey="Metabolite_31"/>
    <SBMLMap SBMLid="T1R_endo" COPASIkey="Metabolite_23"/>
    <SBMLMap SBMLid="T1R_surf" COPASIkey="Metabolite_22"/>
    <SBMLMap SBMLid="T2R_endo" COPASIkey="Metabolite_25"/>
    <SBMLMap SBMLid="T2R_surf" COPASIkey="Metabolite_24"/>
    <SBMLMap SBMLid="TGF_beta_dose_mol_per_cell" COPASIkey="ModelValue_44"/>
    <SBMLMap SBMLid="TGF_beta_endo" COPASIkey="Metabolite_38"/>
    <SBMLMap SBMLid="TGF_beta_ex" COPASIkey="Metabolite_21"/>
    <SBMLMap SBMLid="TGF_beta_ns" COPASIkey="Metabolite_39"/>
    <SBMLMap SBMLid="Vcyt" COPASIkey="Compartment_6"/>
    <SBMLMap SBMLid="Vmed" COPASIkey="Compartment_5"/>
    <SBMLMap SBMLid="Vnuc" COPASIkey="Compartment_7"/>
    <SBMLMap SBMLid="default" COPASIkey="Compartment_4"/>
    <SBMLMap SBMLid="empty_degraded" COPASIkey="Metabolite_41"/>
    <SBMLMap SBMLid="k_T1R" COPASIkey="ModelValue_47"/>
    <SBMLMap SBMLid="k_T2R" COPASIkey="ModelValue_48"/>
    <SBMLMap SBMLid="ka_LRC" COPASIkey="ModelValue_54"/>
    <SBMLMap SBMLid="kdeg_LRC" COPASIkey="ModelValue_51"/>
    <SBMLMap SBMLid="kdeg_T1R" COPASIkey="ModelValue_49"/>
    <SBMLMap SBMLid="kdeg_T2R" COPASIkey="ModelValue_50"/>
    <SBMLMap SBMLid="kdeg_TGF_beta" COPASIkey="ModelValue_52"/>
    <SBMLMap SBMLid="kdepho_Smad2" COPASIkey="ModelValue_64"/>
    <SBMLMap SBMLid="kdiss_LRC" COPASIkey="ModelValue_55"/>
    <SBMLMap SBMLid="kexp_Smad2" COPASIkey="ModelValue_57"/>
    <SBMLMap SBMLid="kexp_Smad4" COPASIkey="ModelValue_59"/>
    <SBMLMap SBMLid="ki" COPASIkey="ModelValue_45"/>
    <SBMLMap SBMLid="kimp_Smad2" COPASIkey="ModelValue_56"/>
    <SBMLMap SBMLid="kimp_Smad4" COPASIkey="ModelValue_58"/>
    <SBMLMap SBMLid="kimp_Smads" COPASIkey="ModelValue_63"/>
    <SBMLMap SBMLid="klid" COPASIkey="ModelValue_53"/>
    <SBMLMap SBMLid="koff_Smads" COPASIkey="ModelValue_62"/>
    <SBMLMap SBMLid="koff_ns" COPASIkey="ModelValue_66"/>
    <SBMLMap SBMLid="kon_Smads" COPASIkey="ModelValue_61"/>
    <SBMLMap SBMLid="kon_ns" COPASIkey="ModelValue_65"/>
    <SBMLMap SBMLid="kpho_Smad2" COPASIkey="ModelValue_60"/>
    <SBMLMap SBMLid="kr" COPASIkey="ModelValue_46"/>
    <SBMLMap SBMLid="medium_TGF_beta_amount" COPASIkey="ModelValue_43"/>
    <SBMLMap SBMLid="re1" COPASIkey="Reaction_29"/>
    <SBMLMap SBMLid="re10" COPASIkey="Reaction_38"/>
    <SBMLMap SBMLid="re11" COPASIkey="Reaction_39"/>
    <SBMLMap SBMLid="re12" COPASIkey="Reaction_40"/>
    <SBMLMap SBMLid="re13" COPASIkey="Reaction_41"/>
    <SBMLMap SBMLid="re14" COPASIkey="Reaction_42"/>
    <SBMLMap SBMLid="re15" COPASIkey="Reaction_43"/>
    <SBMLMap SBMLid="re16" COPASIkey="Reaction_44"/>
    <SBMLMap SBMLid="re17" COPASIkey="Reaction_45"/>
    <SBMLMap SBMLid="re18" COPASIkey="Reaction_46"/>
    <SBMLMap SBMLid="re19" COPASIkey="Reaction_47"/>
    <SBMLMap SBMLid="re2" COPASIkey="Reaction_30"/>
    <SBMLMap SBMLid="re20" COPASIkey="Reaction_48"/>
    <SBMLMap SBMLid="re21" COPASIkey="Reaction_49"/>
    <SBMLMap SBMLid="re22" COPASIkey="Reaction_50"/>
    <SBMLMap SBMLid="re23" COPASIkey="Reaction_51"/>
    <SBMLMap SBMLid="re24" COPASIkey="Reaction_52"/>
    <SBMLMap SBMLid="re25" COPASIkey="Reaction_53"/>
    <SBMLMap SBMLid="re26" COPASIkey="Reaction_54"/>
    <SBMLMap SBMLid="re27" COPASIkey="Reaction_55"/>
    <SBMLMap SBMLid="re28" COPASIkey="Reaction_56"/>
    <SBMLMap SBMLid="re29" COPASIkey="Reaction_57"/>
    <SBMLMap SBMLid="re3" COPASIkey="Reaction_31"/>
    <SBMLMap SBMLid="re4" COPASIkey="Reaction_32"/>
    <SBMLMap SBMLid="re5" COPASIkey="Reaction_33"/>
    <SBMLMap SBMLid="re6" COPASIkey="Reaction_34"/>
    <SBMLMap SBMLid="re7" COPASIkey="Reaction_35"/>
    <SBMLMap SBMLid="re8" COPASIkey="Reaction_36"/>
    <SBMLMap SBMLid="re9" COPASIkey="Reaction_37"/>
    <SBMLMap SBMLid="single_pulse_TGF_beta_washout" COPASIkey="Event_1"/>
    <SBMLMap SBMLid="single_pulse_duration" COPASIkey="ModelValue_35"/>
    <SBMLMap SBMLid="stimulation_type" COPASIkey="ModelValue_34"/>
    <SBMLMap SBMLid="totalNuclearPSmad2" COPASIkey="ModelValue_40"/>
    <SBMLMap SBMLid="totalNumLRC" COPASIkey="ModelValue_38"/>
    <SBMLMap SBMLid="totalNumPSmad2" COPASIkey="ModelValue_39"/>
    <SBMLMap SBMLid="totalNumT1R" COPASIkey="ModelValue_36"/>
    <SBMLMap SBMLid="totalNumT2R" COPASIkey="ModelValue_37"/>
    <SBMLMap SBMLid="totalSmad2c" COPASIkey="ModelValue_41"/>
    <SBMLMap SBMLid="totalSmad2n" COPASIkey="ModelValue_42"/>
  </SBMLReference>
</COPASI>
