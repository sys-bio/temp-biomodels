<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.7 (Build 34) (http://www.copasi.org) at 2011-09-21 12:08:06 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="1" versionMinor="0" versionDevel="34">
  <Model key="Model_1" name="Bertram2007_IsletCell_Oscillations" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mol" type="deterministic" avogadroConstant="6.02214179e+023">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Model_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-09-20T00:00:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2011-09-20T15:08:39+05:30</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      <body xmlns="http://www.w3.org/1999/xhtml">
    <p>
      This is the model described in the article:
      
        <br/>
    <strong>Interaction of glycolysis and mitochondrial respiration in metabolic oscillations of pancreatic islets. </strong>
    <br/>
       Bertram R, Satin LS, Pedersen MG, Luciani DS, Sherman A. 
        <em>Biophys J. </em> 2007 Mar 1;92(5):1544-55. Pubmed ID: 
      
        <a href="http://www.ncbi.nlm.nih.gov/pubmed/17172305">17172305</a>, 
doi: 
        <a href="http://dx.doi.org/10.1529/biophysj.106.097154">10.1529/biophysj.106.097154</a>.
      
        <br/>
    <strong>Abstract:</strong>
    <br/>
 Insulin secretion from pancreatic beta-cells is oscillatory, with a typical period of 2-7 min, reflecting oscillations in membrane potential and the cytosolic Ca(2+) concentration. Our central hypothesis is that the slow 2-7 min oscillations are due to glycolytic oscillations, whereas faster oscillations that are superimposed are due to Ca(2+) feedback onto metabolism or ion channels. We extend a previous mathematical model based on this hypothesis to include a more detailed description of mitochondrial metabolism. We demonstrate that this model can account for typical oscillatory patterns of membrane potential and Ca(2+) concentration in islets. It also accounts for temporal data on oxygen consumption in islets. A recent challenge to the notion that glycolytic oscillations drive slow Ca(2+) oscillations in islets are data showing that oscillations in Ca(2+), mitochondrial oxygen consumption, and NAD(P)H levels are all terminated by membrane hyperpolarization. We demonstrate that these data are in fact compatible with a model in which glycolytic oscillations are the key player in rhythmic islet activity. Finally, we use the model to address the recent finding that the activity of islets from some mice is uniformly fast, whereas that from islets of other mice is slow. We propose a mechanism for this dichotomy.
   </p>
    <p>
This model was taken from the 
      
        <a href="http://www.cellml.org/models">CellML repository</a> and automatically converted to SBML.
      
        <br/>
The original model was: 
      
        <a href="http://www.cellml.org/models/bertram_satin_pedersen_luciani_sherman_2007_version02">
      <strong>Bertram, Satin, Pedersen, Luciani, Sherman, 2007 version 02</strong>
    </a>
    <br/>
The original CellML model was created and curated by:
      
        <br/>
    <strong>Catherine May Lloyd</strong>
    <br/>
    c.lloyd(at)auckland.ac.nz
      
        <br/>
    The University of Auckland, Bioengineering Institute
</p>
    <p>This model originates from BioModels Database: A Database of Annotated Published Models (http://www.ebi.ac.uk/biomodels/). It is copyright (c) 2005-2011 The BioModels.net Team.<br/>
For more information see the <a href="http://www.ebi.ac.uk/biomodels/legal.html" target="_blank">terms of use</a>.<br/>
To cite BioModels Database, please use: <a href="http://www.ncbi.nlm.nih.gov/pubmed/20587024" target="_blank">Li C, Donizelli M, Rodriguez N, Dharuri H, Endler L, Chelliah V, Li L, He E, Henry A, Stefan MI, Snoep JL, Hucka M, Le Novère N, Laibe C (2010) BioModels Database: An enhanced, curated and annotated resource for published quantitative kinetic models. BMC Syst Biol., 4:92.</a>
  </p>
</body>
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="Compartment" simulationType="fixed" dimensionality="3">
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="Vm" simulationType="ode" compartment="Compartment_0">
        <Expression>
          -(&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[Ik],Reference=Value&gt;+&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[Ica],Reference=Value&gt;+&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[Ikca],Reference=Value&gt;+&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[Ikatp],Reference=Value&gt;)/&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[cm],Reference=Value&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="n" simulationType="ode" compartment="Compartment_0">
        <Expression>
          (&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[n_infinity],Reference=Value&gt;-&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[n],Reference=Concentration&gt;)/&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[tau_n],Reference=Value&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="G6P" simulationType="ode" compartment="Compartment_0">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[JGK_ms],Reference=Value&gt;-&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[JPFK_ms],Reference=Value&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="FBP" simulationType="ode" compartment="Compartment_0">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[JPFK_ms],Reference=Value&gt;-0.5*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[JGPDH],Reference=Value&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="NADHm" simulationType="ode" compartment="Compartment_0">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[gamma],Reference=Value&gt;*(&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[JPDH],Reference=Value&gt;-&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[JO],Reference=Value&gt;)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="delta_psi" simulationType="ode" compartment="Compartment_0">
        <Expression>
          (&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[JHres],Reference=Value&gt;-(&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[JHatp],Reference=Value&gt;+&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[JANT],Reference=Value&gt;+&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[JHleak],Reference=Value&gt;+&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[JNaCa],Reference=Value&gt;+2*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[Juni],Reference=Value&gt;))/&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[Cmito],Reference=Value&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="Cam" simulationType="ode" compartment="Compartment_0">
        <Expression>
          -&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[fmito],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[Jmito],Reference=Value&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="ADPm" simulationType="ode" compartment="Compartment_0">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[gamma],Reference=Value&gt;*(&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[JANT],Reference=Value&gt;-&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[JF1F0],Reference=Value&gt;)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="adp" simulationType="ode" compartment="Compartment_0">
        <Expression>
          -&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[delta],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[JANT],Reference=Value&gt;+&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[Jhyd],Reference=Value&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="c" simulationType="ode" compartment="Compartment_0">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[fcyt],Reference=Value&gt;*(&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[Jmem],Reference=Value&gt;+&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[Jer],Reference=Value&gt;+&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[delta],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[Jmito],Reference=Value&gt;)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="Caer" simulationType="ode" compartment="Compartment_0">
        <Expression>
          -&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[fer],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[Vc_Ver],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[Jer],Reference=Value&gt;
        </Expression>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="cm" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_1" name="Ik" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[gK],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[n],Reference=Concentration&gt;*(&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[Vm],Reference=Concentration&gt;-&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[VK],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="gK" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_3" name="n_infinity" simulationType="assignment">
        <Expression>
          1/(1+exp(-(16+&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[Vm],Reference=Concentration&gt;)/5))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="tau_n" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_5" name="Ica" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[gCa],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[m_infinity],Reference=Value&gt;*(&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[Vm],Reference=Concentration&gt;-&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[VCa],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="gCa" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_7" name="m_infinity" simulationType="assignment">
        <Expression>
          1/(1+exp(-(20+&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[Vm],Reference=Concentration&gt;)/12))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="Ikca" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[gkCa],Reference=Value&gt;*(&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[c],Reference=Concentration&gt;^2/(&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[c],Reference=Concentration&gt;^2+&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[kd],Reference=Value&gt;^2))*(&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[Vm],Reference=Concentration&gt;-&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[VK],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="gkCa" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_10" name="kd" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_11" name="Ikatp" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[gkATP_],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[katpo],Reference=Value&gt;*(&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[Vm],Reference=Concentration&gt;-&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[VK],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="gkATP_" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_13" name="katpo" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[topo],Reference=Value&gt;/&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[bottomo],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="topo" simulationType="assignment">
        <Expression>
          0.08*(1+2*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[mgadp],Reference=Value&gt;/17)+0.89*(&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[mgadp],Reference=Value&gt;/17)^2
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="bottomo" simulationType="assignment">
        <Expression>
          (1+&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[mgadp],Reference=Value&gt;/17)^2*(1+&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[adp3m],Reference=Value&gt;/26+&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[atp4m],Reference=Value&gt;/1)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="mgadp" simulationType="assignment">
        <Expression>
          0.165*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[adp],Reference=Concentration&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="adp3m" simulationType="assignment">
        <Expression>
          0.135*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[adp],Reference=Concentration&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_18" name="atp4m" simulationType="assignment">
        <Expression>
          0.05*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[atp],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_19" name="JGPDH" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[kGPDH],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[FBP],Reference=Concentration&gt;^(1/2)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_20" name="kGPDH" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_21" name="F6P" simulationType="assignment">
        <Expression>
          0.3*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[G6P],Reference=Concentration&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_22" name="JPFK" simulationType="assignment">
        <Expression>
          (&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[VmaxPFK],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[lambda],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[topa16],Reference=Value&gt;+&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[VmaxPFK],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[topb],Reference=Value&gt;)/&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[bottom16],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_23" name="JPFK_ms" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[kappa],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[JPFK],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_24" name="bottom1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_25" name="weight1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_26" name="topa1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_27" name="k1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_28" name="k2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_29" name="k3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_30" name="k4" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_31" name="VmaxPFK" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_32" name="weight2" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[atp],Reference=Value&gt;^2/&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[k4],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_33" name="topa2" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[topa1],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_34" name="bottom2" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[bottom1],Reference=Value&gt;+&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[weight2],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_35" name="topa3" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[topa2],Reference=Value&gt;+&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[weight3],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_36" name="weight3" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[F6P],Reference=Value&gt;^2/&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[k3],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_37" name="bottom3" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[bottom2],Reference=Value&gt;+&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[weight3],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_38" name="f13" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_39" name="f43" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_40" name="f23" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_41" name="f42" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_42" name="f41" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_43" name="weight4" simulationType="assignment">
        <Expression>
          (&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[F6P],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[atp],Reference=Value&gt;)^2/(&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[k3],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[k4],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[f43],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_44" name="topa4" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[topa3],Reference=Value&gt;+&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[weight4],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_45" name="bottom4" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[bottom3],Reference=Value&gt;+&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[weight4],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_46" name="weight5" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[FBP],Reference=Concentration&gt;/&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[k2],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_47" name="topa5" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[topa4],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_48" name="bottom5" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[bottom4],Reference=Value&gt;+&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[weight5],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_49" name="weight6" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[FBP],Reference=Concentration&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[atp],Reference=Value&gt;^2/(&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[k2],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[f42],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[k4],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_50" name="topa6" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[topa5],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_51" name="bottom6" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[bottom5],Reference=Value&gt;+&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[weight6],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_52" name="weight7" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[FBP],Reference=Concentration&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[F6P],Reference=Value&gt;^2/(&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[k2],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[f23],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[k3],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_53" name="topa7" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[topa6],Reference=Value&gt;+&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[weight7],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_54" name="bottom7" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[bottom6],Reference=Value&gt;+&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[weight7],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_55" name="weight8" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[FBP],Reference=Concentration&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[F6P],Reference=Value&gt;^2*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[atp],Reference=Value&gt;^2/(&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[k2],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[f23],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[f42],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[f43],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[k3],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[k4],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_56" name="topa8" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[topa7],Reference=Value&gt;+&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[weight8],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_57" name="bottom8" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[bottom7],Reference=Value&gt;+&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[weight8],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_58" name="weight9" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[AMP],Reference=Value&gt;/&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[k1],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_59" name="topa9" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[topa8],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_60" name="bottom9" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[bottom8],Reference=Value&gt;+&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[weight9],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_61" name="weight10" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[AMP],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[atp],Reference=Value&gt;^2/(&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[k1],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[k4],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[f41],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_62" name="topa10" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[topa9],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_63" name="bottom10" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[bottom9],Reference=Value&gt;+&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[weight10],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_64" name="weight11" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[AMP],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[F6P],Reference=Value&gt;^2/(&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[k1],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[k3],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[f13],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_65" name="topa11" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[topa10],Reference=Value&gt;+&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[weight11],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_66" name="bottom11" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[bottom10],Reference=Value&gt;+&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[weight11],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_67" name="weight12" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[AMP],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[F6P],Reference=Value&gt;^2*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[atp],Reference=Value&gt;^2/(&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[k1],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[f13],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[f41],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[f43],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[k3],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[k4],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_68" name="topa12" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[topa11],Reference=Value&gt;+&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[weight12],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_69" name="bottom12" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[bottom11],Reference=Value&gt;+&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[weight12],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_70" name="weight13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[AMP],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[FBP],Reference=Concentration&gt;/(&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[k1],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[k2],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_71" name="topa13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[topa12],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_72" name="bottom13" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[bottom12],Reference=Value&gt;+&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[weight13],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_73" name="weight14" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[AMP],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[FBP],Reference=Concentration&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[atp],Reference=Value&gt;^2/(&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[k1],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[k2],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[f42],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[f41],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[k4],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_74" name="topa14" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[topa13],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_75" name="bottom14" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[bottom13],Reference=Value&gt;+&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[weight14],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_76" name="weight15" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[AMP],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[FBP],Reference=Concentration&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[F6P],Reference=Value&gt;^2/(&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[k1],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[k2],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[f23],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[f13],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[k3],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_77" name="topa15" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[topa14],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_78" name="bottom15" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[bottom14],Reference=Value&gt;+&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[weight15],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_79" name="weight16" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[AMP],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[FBP],Reference=Concentration&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[F6P],Reference=Value&gt;^2*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[atp],Reference=Value&gt;^2/(&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[k1],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[k2],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[k3],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[k4],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[f23],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[f13],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[f42],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[f41],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[f43],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_80" name="topa16" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[topa15],Reference=Value&gt;+&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[weight16],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_81" name="bottom16" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[bottom15],Reference=Value&gt;+&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[weight16],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_82" name="topb" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[weight15],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_83" name="lambda" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_84" name="JPDH" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[p1],Reference=Value&gt;/(&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[p2],Reference=Value&gt;+&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[NADHm],Reference=Concentration&gt;/&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[NADm],Reference=Value&gt;)*(&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[Cam],Reference=Concentration&gt;/(&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[p3],Reference=Value&gt;+&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[Cam],Reference=Concentration&gt;))*(&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[JGPDH],Reference=Value&gt;+&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[JGPDHbas],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_85" name="p1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_86" name="p2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_87" name="p3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_88" name="JGPDHbas" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_89" name="JO" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[p4],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[NADHm],Reference=Concentration&gt;/(&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[p5],Reference=Value&gt;+&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[NADHm],Reference=Concentration&gt;)/(1+exp((&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[delta_psi],Reference=Concentration&gt;-&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[p6],Reference=Value&gt;)/&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[p7],Reference=Value&gt;))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_90" name="p4" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_91" name="p5" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_92" name="p6" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_93" name="p7" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_94" name="NADm" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[NADmtot],Reference=Value&gt;-&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[NADHm],Reference=Concentration&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_95" name="NADmtot" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_96" name="Cmito" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_97" name="JHres" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[p8],Reference=Value&gt;*(&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[NADHm],Reference=Concentration&gt;/(&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[p9],Reference=Value&gt;+&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[NADHm],Reference=Concentration&gt;))*(1/(1+exp((&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[delta_psi],Reference=Concentration&gt;-&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[p10],Reference=Value&gt;)/&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[p11],Reference=Value&gt;)))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_98" name="p8" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_99" name="p9" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_100" name="p10" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_101" name="p11" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_102" name="JF1F0" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[p16],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[p13],Reference=Value&gt;/(&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[p13],Reference=Value&gt;+&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[ATPm],Reference=Value&gt;)*(1/(1+exp((&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[p14],Reference=Value&gt;-&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[delta_psi],Reference=Concentration&gt;)/&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[p15],Reference=Value&gt;)))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_103" name="p13" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_104" name="p14" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_105" name="p15" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_106" name="p16" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_107" name="JHatp" simulationType="assignment">
        <Expression>
          3*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[JF1F0],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_108" name="JGK_ms" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[kappa],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[JGK],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_109" name="JGK" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_110" name="JHleak" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[p17],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[delta_psi],Reference=Concentration&gt;+&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[p18],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_111" name="p17" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_112" name="p18" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_113" name="JANT" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[p19],Reference=Value&gt;*(&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[RATm],Reference=Value&gt;/(&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[RATm],Reference=Value&gt;+&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[p20],Reference=Value&gt;))*exp(0.5*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[FRT],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[delta_psi],Reference=Concentration&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_114" name="p19" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_115" name="p20" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_116" name="FRT" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_117" name="RATm" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[ATPm],Reference=Value&gt;/&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[ADPm],Reference=Concentration&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_118" name="Juni" simulationType="assignment">
        <Expression>
          (&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[p21],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[delta_psi],Reference=Concentration&gt;-&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[p22],Reference=Value&gt;)*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[c],Reference=Concentration&gt;^2
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_119" name="p21" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_120" name="p22" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_121" name="JNaCa" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[p23],Reference=Value&gt;*(&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[Cam],Reference=Concentration&gt;/&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[c],Reference=Concentration&gt;)*exp(&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[p24],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[delta_psi],Reference=Concentration&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_122" name="p23" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_123" name="p24" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_124" name="fmito" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_125" name="Jmito" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[JNaCa],Reference=Value&gt;-&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[Juni],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_126" name="ATPm" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[Amtot],Reference=Value&gt;-&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[ADPm],Reference=Concentration&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_127" name="Amtot" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_128" name="Jhyd" simulationType="assignment">
        <Expression>
          (&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[khyd],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[c],Reference=Concentration&gt;+&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[khydbas],Reference=Value&gt;)*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[atp],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_129" name="khyd" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_130" name="khydbas" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_131" name="atp" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[atot],Reference=Value&gt;-&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[adp],Reference=Concentration&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_132" name="atot" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_133" name="fcyt" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_134" name="Jmem" simulationType="assignment">
        <Expression>
          -(&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[alpha],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[Ica],Reference=Value&gt;+&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[kPMCA],Reference=Value&gt;*(&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[c],Reference=Concentration&gt;-&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[Cbas],Reference=Value&gt;))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_135" name="kPMCA" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_136" name="alpha" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_137" name="Cbas" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_138" name="Jleak" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[pleak],Reference=Value&gt;*(&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[Caer],Reference=Concentration&gt;-&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[c],Reference=Concentration&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_139" name="pleak" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_140" name="JSERCA" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[kSERCA],Reference=Value&gt;*&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[c],Reference=Concentration&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_141" name="kSERCA" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_142" name="Jer" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[Jleak],Reference=Value&gt;-&lt;CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[JSERCA],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_143" name="fer" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_144" name="Vc_Ver" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_145" name="gamma" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_146" name="kappa" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_147" name="delta" simulationType="assignment">
        <Expression>
          3.9/53.2
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_148" name="VK" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_149" name="VCa" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_150" name="AMP" simulationType="fixed">
      </ModelValue>
    </ListOfModelValues>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="ModelValue_3"/>
      <StateTemplateVariable objectReference="ModelValue_5"/>
      <StateTemplateVariable objectReference="ModelValue_7"/>
      <StateTemplateVariable objectReference="ModelValue_8"/>
      <StateTemplateVariable objectReference="ModelValue_11"/>
      <StateTemplateVariable objectReference="ModelValue_13"/>
      <StateTemplateVariable objectReference="ModelValue_14"/>
      <StateTemplateVariable objectReference="ModelValue_15"/>
      <StateTemplateVariable objectReference="ModelValue_16"/>
      <StateTemplateVariable objectReference="ModelValue_17"/>
      <StateTemplateVariable objectReference="ModelValue_18"/>
      <StateTemplateVariable objectReference="ModelValue_19"/>
      <StateTemplateVariable objectReference="ModelValue_21"/>
      <StateTemplateVariable objectReference="ModelValue_22"/>
      <StateTemplateVariable objectReference="ModelValue_23"/>
      <StateTemplateVariable objectReference="ModelValue_32"/>
      <StateTemplateVariable objectReference="ModelValue_33"/>
      <StateTemplateVariable objectReference="ModelValue_34"/>
      <StateTemplateVariable objectReference="ModelValue_35"/>
      <StateTemplateVariable objectReference="ModelValue_36"/>
      <StateTemplateVariable objectReference="ModelValue_37"/>
      <StateTemplateVariable objectReference="ModelValue_43"/>
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
      <StateTemplateVariable objectReference="ModelValue_66"/>
      <StateTemplateVariable objectReference="ModelValue_67"/>
      <StateTemplateVariable objectReference="ModelValue_68"/>
      <StateTemplateVariable objectReference="ModelValue_69"/>
      <StateTemplateVariable objectReference="ModelValue_70"/>
      <StateTemplateVariable objectReference="ModelValue_71"/>
      <StateTemplateVariable objectReference="ModelValue_72"/>
      <StateTemplateVariable objectReference="ModelValue_73"/>
      <StateTemplateVariable objectReference="ModelValue_74"/>
      <StateTemplateVariable objectReference="ModelValue_75"/>
      <StateTemplateVariable objectReference="ModelValue_76"/>
      <StateTemplateVariable objectReference="ModelValue_77"/>
      <StateTemplateVariable objectReference="ModelValue_78"/>
      <StateTemplateVariable objectReference="ModelValue_79"/>
      <StateTemplateVariable objectReference="ModelValue_80"/>
      <StateTemplateVariable objectReference="ModelValue_81"/>
      <StateTemplateVariable objectReference="ModelValue_82"/>
      <StateTemplateVariable objectReference="ModelValue_84"/>
      <StateTemplateVariable objectReference="ModelValue_89"/>
      <StateTemplateVariable objectReference="ModelValue_94"/>
      <StateTemplateVariable objectReference="ModelValue_97"/>
      <StateTemplateVariable objectReference="ModelValue_102"/>
      <StateTemplateVariable objectReference="ModelValue_107"/>
      <StateTemplateVariable objectReference="ModelValue_108"/>
      <StateTemplateVariable objectReference="ModelValue_110"/>
      <StateTemplateVariable objectReference="ModelValue_113"/>
      <StateTemplateVariable objectReference="ModelValue_117"/>
      <StateTemplateVariable objectReference="ModelValue_118"/>
      <StateTemplateVariable objectReference="ModelValue_121"/>
      <StateTemplateVariable objectReference="ModelValue_125"/>
      <StateTemplateVariable objectReference="ModelValue_126"/>
      <StateTemplateVariable objectReference="ModelValue_128"/>
      <StateTemplateVariable objectReference="ModelValue_131"/>
      <StateTemplateVariable objectReference="ModelValue_134"/>
      <StateTemplateVariable objectReference="ModelValue_138"/>
      <StateTemplateVariable objectReference="ModelValue_140"/>
      <StateTemplateVariable objectReference="ModelValue_142"/>
      <StateTemplateVariable objectReference="ModelValue_147"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
      <StateTemplateVariable objectReference="ModelValue_4"/>
      <StateTemplateVariable objectReference="ModelValue_6"/>
      <StateTemplateVariable objectReference="ModelValue_9"/>
      <StateTemplateVariable objectReference="ModelValue_10"/>
      <StateTemplateVariable objectReference="ModelValue_12"/>
      <StateTemplateVariable objectReference="ModelValue_20"/>
      <StateTemplateVariable objectReference="ModelValue_24"/>
      <StateTemplateVariable objectReference="ModelValue_25"/>
      <StateTemplateVariable objectReference="ModelValue_26"/>
      <StateTemplateVariable objectReference="ModelValue_27"/>
      <StateTemplateVariable objectReference="ModelValue_28"/>
      <StateTemplateVariable objectReference="ModelValue_29"/>
      <StateTemplateVariable objectReference="ModelValue_30"/>
      <StateTemplateVariable objectReference="ModelValue_31"/>
      <StateTemplateVariable objectReference="ModelValue_38"/>
      <StateTemplateVariable objectReference="ModelValue_39"/>
      <StateTemplateVariable objectReference="ModelValue_40"/>
      <StateTemplateVariable objectReference="ModelValue_41"/>
      <StateTemplateVariable objectReference="ModelValue_42"/>
      <StateTemplateVariable objectReference="ModelValue_83"/>
      <StateTemplateVariable objectReference="ModelValue_85"/>
      <StateTemplateVariable objectReference="ModelValue_86"/>
      <StateTemplateVariable objectReference="ModelValue_87"/>
      <StateTemplateVariable objectReference="ModelValue_88"/>
      <StateTemplateVariable objectReference="ModelValue_90"/>
      <StateTemplateVariable objectReference="ModelValue_91"/>
      <StateTemplateVariable objectReference="ModelValue_92"/>
      <StateTemplateVariable objectReference="ModelValue_93"/>
      <StateTemplateVariable objectReference="ModelValue_95"/>
      <StateTemplateVariable objectReference="ModelValue_96"/>
      <StateTemplateVariable objectReference="ModelValue_98"/>
      <StateTemplateVariable objectReference="ModelValue_99"/>
      <StateTemplateVariable objectReference="ModelValue_100"/>
      <StateTemplateVariable objectReference="ModelValue_101"/>
      <StateTemplateVariable objectReference="ModelValue_103"/>
      <StateTemplateVariable objectReference="ModelValue_104"/>
      <StateTemplateVariable objectReference="ModelValue_105"/>
      <StateTemplateVariable objectReference="ModelValue_106"/>
      <StateTemplateVariable objectReference="ModelValue_109"/>
      <StateTemplateVariable objectReference="ModelValue_111"/>
      <StateTemplateVariable objectReference="ModelValue_112"/>
      <StateTemplateVariable objectReference="ModelValue_114"/>
      <StateTemplateVariable objectReference="ModelValue_115"/>
      <StateTemplateVariable objectReference="ModelValue_116"/>
      <StateTemplateVariable objectReference="ModelValue_119"/>
      <StateTemplateVariable objectReference="ModelValue_120"/>
      <StateTemplateVariable objectReference="ModelValue_122"/>
      <StateTemplateVariable objectReference="ModelValue_123"/>
      <StateTemplateVariable objectReference="ModelValue_124"/>
      <StateTemplateVariable objectReference="ModelValue_127"/>
      <StateTemplateVariable objectReference="ModelValue_129"/>
      <StateTemplateVariable objectReference="ModelValue_130"/>
      <StateTemplateVariable objectReference="ModelValue_132"/>
      <StateTemplateVariable objectReference="ModelValue_133"/>
      <StateTemplateVariable objectReference="ModelValue_135"/>
      <StateTemplateVariable objectReference="ModelValue_136"/>
      <StateTemplateVariable objectReference="ModelValue_137"/>
      <StateTemplateVariable objectReference="ModelValue_139"/>
      <StateTemplateVariable objectReference="ModelValue_141"/>
      <StateTemplateVariable objectReference="ModelValue_143"/>
      <StateTemplateVariable objectReference="ModelValue_144"/>
      <StateTemplateVariable objectReference="ModelValue_145"/>
      <StateTemplateVariable objectReference="ModelValue_146"/>
      <StateTemplateVariable objectReference="ModelValue_148"/>
      <StateTemplateVariable objectReference="ModelValue_149"/>
      <StateTemplateVariable objectReference="ModelValue_150"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 -3.613285074e+025 0 1.81266467879e+026 1.30078262664e+024 2.408856716e+023 9.8763125356e+025 1.204428358e+023 6.684577386899999e+024 6.847175215230001e+026 1.0237641043e+023 2.07763891755e+026 0 0.0001507103580597574 -2927.841631627948 0.03444519566621115 466.296163499462 2433.430257937913 0.01013929274140798 110.2336389697232 10871.92586121306 187.605 153.495 68.15000000000001 0.0007348469228349535 90.3 0.3743640852798465 0.0003743640852798465 8444.404545454545 0 8445.404545454545 0.1630818 0.1630818 8445.567627254544 68.85643466004545 69.01951646004545 8514.424061914589 2.16 69.01951646004545 8516.584061914589 911.995690909091 69.01951646004545 9428.57975282368 1.76128344 70.78079990004545 9430.341036263681 37.18247471642454 107.96327461647 9467.523510980105 16.66666666666667 107.96327461647 9484.190177646771 7037.003787878788 107.96327461647 16521.19396552556 135.9015 243.86477461647 16657.09546552556 2869.018110835227 3112.882885451697 19526.11357636079 36 3112.882885451697 19562.11357636079 759.9964090909091 3112.882885451697 20322.10998545169 1467.7362 3112.882885451697 21789.84618545169 1549.269779851023 4662.15266530272 23339.11596530272 1467.7362 0.4516011603510686 0.4468135582351935 9.6 5.212824846077259 1.129015937076227 3.387047811228681 0.0004 0.298 1.123950847247297 0.3513513513513514 0.1577940000000001 0.1622444295513875 0.004450429551387442 3.9 0.07973550000000002 1363 0.001175287342325766 0.068966 0.06800000000000001 0.0009659999999999946 0.07330827067669173 5300 2700 20 1000 300 0.5 16000 0.0005 1 1 0 30 1 50000 220 5 0.02 20 0.2 20 20 0.06 400 1 0.01 0.0005 0.6 0.1 177 5 10 1.8 7 0.1 177 5 10 190 8.5 35 0.4 0.002 -0.03 0.35 2 0.037410133 0.04 1.1 0.01 0.016 0.01 15 5e-005 5e-005 2500 0.01 0.1 4.5e-006 0.05 0.0002 0.4 0.01 31 0.001 0.001 -75 25 500 1 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_12" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_8" target="" append="1"/>
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
    <Task key="Task_13" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="60000"/>
        <Parameter name="StepSize" type="float" value="10"/>
        <Parameter name="Duration" type="float" value="600000"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="0"/>
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
    <Task key="Task_14" name="Scan" type="scan" scheduled="false" updateModel="false">
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
    <Task key="Task_15" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_9" target="" append="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_16" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_10" target="" append="1"/>
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
    <Task key="Task_17" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_11" target="" append="1"/>
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
    <Task key="Task_18" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_12" target="" append="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_12"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1e-009"/>
      </Method>
    </Task>
    <Task key="Task_19" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_13" target="" append="1"/>
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
    <Task key="Task_20" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_14" target="" append="1"/>
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
    <Task key="Task_21" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_15" target="" append="1"/>
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
    <Task key="Task_22" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_8" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_9" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_10" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
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
    <Report key="Report_11" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
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
    <Report key="Report_12" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_13" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
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
    <Report key="Report_14" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_15" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
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
        <PlotItem name="[FBP]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bertram2007_IsletCell_Oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[FBP],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[NADHm]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bertram2007_IsletCell_Oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[NADHm],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[c]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bertram2007_IsletCell_Oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[c],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[delta_psi]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bertram2007_IsletCell_Oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Compartments[Compartment],Vector=Metabolites[delta_psi],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[JO]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bertram2007_IsletCell_Oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[JO],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[atp]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bertram2007_IsletCell_Oscillations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Bertram2007_IsletCell_Oscillations,Vector=Values[atp],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="80156.xml">
    <SBMLMap SBMLid="ADPm" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="AMP" COPASIkey="ModelValue_150"/>
    <SBMLMap SBMLid="ATPm" COPASIkey="ModelValue_126"/>
    <SBMLMap SBMLid="Amtot" COPASIkey="ModelValue_127"/>
    <SBMLMap SBMLid="Caer" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="Cam" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="Cbas" COPASIkey="ModelValue_137"/>
    <SBMLMap SBMLid="Cmito" COPASIkey="ModelValue_96"/>
    <SBMLMap SBMLid="Compartment" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="F6P" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="FBP" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="FRT" COPASIkey="ModelValue_116"/>
    <SBMLMap SBMLid="G6P" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="Ica" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="Ik" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="Ikatp" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="Ikca" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="JANT" COPASIkey="ModelValue_113"/>
    <SBMLMap SBMLid="JF1F0" COPASIkey="ModelValue_102"/>
    <SBMLMap SBMLid="JGK" COPASIkey="ModelValue_109"/>
    <SBMLMap SBMLid="JGK_ms" COPASIkey="ModelValue_108"/>
    <SBMLMap SBMLid="JGPDH" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="JGPDHbas" COPASIkey="ModelValue_88"/>
    <SBMLMap SBMLid="JHatp" COPASIkey="ModelValue_107"/>
    <SBMLMap SBMLid="JHleak" COPASIkey="ModelValue_110"/>
    <SBMLMap SBMLid="JHres" COPASIkey="ModelValue_97"/>
    <SBMLMap SBMLid="JNaCa" COPASIkey="ModelValue_121"/>
    <SBMLMap SBMLid="JO" COPASIkey="ModelValue_89"/>
    <SBMLMap SBMLid="JPDH" COPASIkey="ModelValue_84"/>
    <SBMLMap SBMLid="JPFK" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="JPFK_ms" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="JSERCA" COPASIkey="ModelValue_140"/>
    <SBMLMap SBMLid="Jer" COPASIkey="ModelValue_142"/>
    <SBMLMap SBMLid="Jhyd" COPASIkey="ModelValue_128"/>
    <SBMLMap SBMLid="Jleak" COPASIkey="ModelValue_138"/>
    <SBMLMap SBMLid="Jmem" COPASIkey="ModelValue_134"/>
    <SBMLMap SBMLid="Jmito" COPASIkey="ModelValue_125"/>
    <SBMLMap SBMLid="Juni" COPASIkey="ModelValue_118"/>
    <SBMLMap SBMLid="NADHm" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="NADm" COPASIkey="ModelValue_94"/>
    <SBMLMap SBMLid="NADmtot" COPASIkey="ModelValue_95"/>
    <SBMLMap SBMLid="RATm" COPASIkey="ModelValue_117"/>
    <SBMLMap SBMLid="VCa" COPASIkey="ModelValue_149"/>
    <SBMLMap SBMLid="VK" COPASIkey="ModelValue_148"/>
    <SBMLMap SBMLid="Vc_Ver" COPASIkey="ModelValue_144"/>
    <SBMLMap SBMLid="Vm" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="VmaxPFK" COPASIkey="ModelValue_31"/>
    <SBMLMap SBMLid="adp" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="adp3m" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="alpha" COPASIkey="ModelValue_136"/>
    <SBMLMap SBMLid="atot" COPASIkey="ModelValue_132"/>
    <SBMLMap SBMLid="atp" COPASIkey="ModelValue_131"/>
    <SBMLMap SBMLid="atp4m" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="bottom1" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="bottom10" COPASIkey="ModelValue_63"/>
    <SBMLMap SBMLid="bottom11" COPASIkey="ModelValue_66"/>
    <SBMLMap SBMLid="bottom12" COPASIkey="ModelValue_69"/>
    <SBMLMap SBMLid="bottom13" COPASIkey="ModelValue_72"/>
    <SBMLMap SBMLid="bottom14" COPASIkey="ModelValue_75"/>
    <SBMLMap SBMLid="bottom15" COPASIkey="ModelValue_78"/>
    <SBMLMap SBMLid="bottom16" COPASIkey="ModelValue_81"/>
    <SBMLMap SBMLid="bottom2" COPASIkey="ModelValue_34"/>
    <SBMLMap SBMLid="bottom3" COPASIkey="ModelValue_37"/>
    <SBMLMap SBMLid="bottom4" COPASIkey="ModelValue_45"/>
    <SBMLMap SBMLid="bottom5" COPASIkey="ModelValue_48"/>
    <SBMLMap SBMLid="bottom6" COPASIkey="ModelValue_51"/>
    <SBMLMap SBMLid="bottom7" COPASIkey="ModelValue_54"/>
    <SBMLMap SBMLid="bottom8" COPASIkey="ModelValue_57"/>
    <SBMLMap SBMLid="bottom9" COPASIkey="ModelValue_60"/>
    <SBMLMap SBMLid="bottomo" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="c" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="cm" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="delta" COPASIkey="ModelValue_147"/>
    <SBMLMap SBMLid="delta_psi" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="f13" COPASIkey="ModelValue_38"/>
    <SBMLMap SBMLid="f23" COPASIkey="ModelValue_40"/>
    <SBMLMap SBMLid="f41" COPASIkey="ModelValue_42"/>
    <SBMLMap SBMLid="f42" COPASIkey="ModelValue_41"/>
    <SBMLMap SBMLid="f43" COPASIkey="ModelValue_39"/>
    <SBMLMap SBMLid="fcyt" COPASIkey="ModelValue_133"/>
    <SBMLMap SBMLid="fer" COPASIkey="ModelValue_143"/>
    <SBMLMap SBMLid="fmito" COPASIkey="ModelValue_124"/>
    <SBMLMap SBMLid="gCa" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="gK" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="gamma" COPASIkey="ModelValue_145"/>
    <SBMLMap SBMLid="gkATP_" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="gkCa" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="k1" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="k2" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="k3" COPASIkey="ModelValue_29"/>
    <SBMLMap SBMLid="k4" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="kGPDH" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="kPMCA" COPASIkey="ModelValue_135"/>
    <SBMLMap SBMLid="kSERCA" COPASIkey="ModelValue_141"/>
    <SBMLMap SBMLid="kappa" COPASIkey="ModelValue_146"/>
    <SBMLMap SBMLid="katpo" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="kd" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="khyd" COPASIkey="ModelValue_129"/>
    <SBMLMap SBMLid="khydbas" COPASIkey="ModelValue_130"/>
    <SBMLMap SBMLid="lambda" COPASIkey="ModelValue_83"/>
    <SBMLMap SBMLid="m_infinity" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="mgadp" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="n" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="n_infinity" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="p1" COPASIkey="ModelValue_85"/>
    <SBMLMap SBMLid="p10" COPASIkey="ModelValue_100"/>
    <SBMLMap SBMLid="p11" COPASIkey="ModelValue_101"/>
    <SBMLMap SBMLid="p13" COPASIkey="ModelValue_103"/>
    <SBMLMap SBMLid="p14" COPASIkey="ModelValue_104"/>
    <SBMLMap SBMLid="p15" COPASIkey="ModelValue_105"/>
    <SBMLMap SBMLid="p16" COPASIkey="ModelValue_106"/>
    <SBMLMap SBMLid="p17" COPASIkey="ModelValue_111"/>
    <SBMLMap SBMLid="p18" COPASIkey="ModelValue_112"/>
    <SBMLMap SBMLid="p19" COPASIkey="ModelValue_114"/>
    <SBMLMap SBMLid="p2" COPASIkey="ModelValue_86"/>
    <SBMLMap SBMLid="p20" COPASIkey="ModelValue_115"/>
    <SBMLMap SBMLid="p21" COPASIkey="ModelValue_119"/>
    <SBMLMap SBMLid="p22" COPASIkey="ModelValue_120"/>
    <SBMLMap SBMLid="p23" COPASIkey="ModelValue_122"/>
    <SBMLMap SBMLid="p24" COPASIkey="ModelValue_123"/>
    <SBMLMap SBMLid="p3" COPASIkey="ModelValue_87"/>
    <SBMLMap SBMLid="p4" COPASIkey="ModelValue_90"/>
    <SBMLMap SBMLid="p5" COPASIkey="ModelValue_91"/>
    <SBMLMap SBMLid="p6" COPASIkey="ModelValue_92"/>
    <SBMLMap SBMLid="p7" COPASIkey="ModelValue_93"/>
    <SBMLMap SBMLid="p8" COPASIkey="ModelValue_98"/>
    <SBMLMap SBMLid="p9" COPASIkey="ModelValue_99"/>
    <SBMLMap SBMLid="pleak" COPASIkey="ModelValue_139"/>
    <SBMLMap SBMLid="tau_n" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="topa1" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="topa10" COPASIkey="ModelValue_62"/>
    <SBMLMap SBMLid="topa11" COPASIkey="ModelValue_65"/>
    <SBMLMap SBMLid="topa12" COPASIkey="ModelValue_68"/>
    <SBMLMap SBMLid="topa13" COPASIkey="ModelValue_71"/>
    <SBMLMap SBMLid="topa14" COPASIkey="ModelValue_74"/>
    <SBMLMap SBMLid="topa15" COPASIkey="ModelValue_77"/>
    <SBMLMap SBMLid="topa16" COPASIkey="ModelValue_80"/>
    <SBMLMap SBMLid="topa2" COPASIkey="ModelValue_33"/>
    <SBMLMap SBMLid="topa3" COPASIkey="ModelValue_35"/>
    <SBMLMap SBMLid="topa4" COPASIkey="ModelValue_44"/>
    <SBMLMap SBMLid="topa5" COPASIkey="ModelValue_47"/>
    <SBMLMap SBMLid="topa6" COPASIkey="ModelValue_50"/>
    <SBMLMap SBMLid="topa7" COPASIkey="ModelValue_53"/>
    <SBMLMap SBMLid="topa8" COPASIkey="ModelValue_56"/>
    <SBMLMap SBMLid="topa9" COPASIkey="ModelValue_59"/>
    <SBMLMap SBMLid="topb" COPASIkey="ModelValue_82"/>
    <SBMLMap SBMLid="topo" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="weight1" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="weight10" COPASIkey="ModelValue_61"/>
    <SBMLMap SBMLid="weight11" COPASIkey="ModelValue_64"/>
    <SBMLMap SBMLid="weight12" COPASIkey="ModelValue_67"/>
    <SBMLMap SBMLid="weight13" COPASIkey="ModelValue_70"/>
    <SBMLMap SBMLid="weight14" COPASIkey="ModelValue_73"/>
    <SBMLMap SBMLid="weight15" COPASIkey="ModelValue_76"/>
    <SBMLMap SBMLid="weight16" COPASIkey="ModelValue_79"/>
    <SBMLMap SBMLid="weight2" COPASIkey="ModelValue_32"/>
    <SBMLMap SBMLid="weight3" COPASIkey="ModelValue_36"/>
    <SBMLMap SBMLid="weight4" COPASIkey="ModelValue_43"/>
    <SBMLMap SBMLid="weight5" COPASIkey="ModelValue_46"/>
    <SBMLMap SBMLid="weight6" COPASIkey="ModelValue_49"/>
    <SBMLMap SBMLid="weight7" COPASIkey="ModelValue_52"/>
    <SBMLMap SBMLid="weight8" COPASIkey="ModelValue_55"/>
    <SBMLMap SBMLid="weight9" COPASIkey="ModelValue_58"/>
  </SBMLReference>
</COPASI>
