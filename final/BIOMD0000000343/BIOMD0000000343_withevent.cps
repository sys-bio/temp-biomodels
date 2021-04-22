<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.7 (Build 34) (http://www.copasi.org) at 2011-07-28 14:04:47 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="1" versionMinor="0" versionDevel="34">
  <Model key="Model_0" name="Brannmark2010_InsulinSignalling_Mifamodel_Fig5D" simulationType="time" timeUnit="min" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mol" type="deterministic" avogadroConstant="6.02214179e+023">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Model_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-06-30T00:00:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2011-06-30T18:00:25+05:30</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      
  &lt;body xmlns=&quot;http://www.w3.org/1999/xhtml&quot;&gt;
    &lt;p&gt;
      This model is from the article:
      &lt;br/&gt;
    &lt;strong&gt; Mass and information feedbacks through receptor endocytosis govern insulin signaling as revealed using a parameter-free modeling framework.
&lt;/strong&gt;
    &lt;br/&gt;
Brannmark C, Palmer R, Glad ST, Cedersund G, Stralfors P.
      &lt;em&gt;J Biol Chem.&lt;/em&gt;2010 Jun 25;285(26):20171-9. 
      &lt;a href=&quot;http://www.ncbi.nlm.nih.gov/pubmed/20421297&quot;&gt;20421297&lt;/a&gt;,
      &lt;br/&gt;
    &lt;strong&gt;Abstract:&lt;/strong&gt;
    &lt;br/&gt;
Insulin and other hormones control target cells through a network of signal-mediating molecules. Such networks are extremely complex due to multiple feedback loops in combination with redundancy, shared signal mediators, and cross-talk between signal pathways. We present a novel framework that integrates experimental work and mathematical modeling to quantitatively characterize the role and relation between co-existing submechanisms in complex signaling networks. The approach is independent of knowing or uniquely estimating model parameters because it only relies on (i) rejections and (ii) core predictions (uniquely identified properties in unidentifiable models). The power of our approach is demonstrated through numerous iterations between experiments, model-based data analyses, and theoretical predictions to characterize the relative role of co-existing feedbacks governing insulin signaling. We examined phosphorylation of the insulin receptor and insulin receptor substrate-1 and endocytosis of the receptor in response to various different experimental perturbations in primary human adipocytes. The analysis revealed that receptor endocytosis is necessary for two identified feedback mechanisms involving mass and information transfer, respectively. Experimental findings indicate that interfering with the feedback may substantially increase overall signaling strength, suggesting novel therapeutic targets for insulin resistance and type 2 diabetes. Because the central observations are present in other signaling networks, our results may indicate a general mechanism in hormonal control.
   &lt;/p&gt;
    &lt;p&gt;This model originates from BioModels Database: A Database of Annotated Published Models (http://www.ebi.ac.uk/biomodels/). It is copyright (c) 2005-2011 The BioModels.net Team.&lt;br/&gt;
For more information see the &lt;a href=&quot;http://www.ebi.ac.uk/biomodels/legal.html&quot; target=&quot;_blank&quot;&gt;terms of use&lt;/a&gt;.&lt;br/&gt;
To cite BioModels Database, please use: &lt;a href=&quot;http://www.ncbi.nlm.nih.gov/pubmed/20587024&quot; target=&quot;_blank&quot;&gt;Li C, Donizelli M, Rodriguez N, Dharuri H, Endler L, Chelliah V, Li L, He E, Henry A, Stefan MI, Snoep JL, Hucka M, Le Novère N, Laibe C (2010) BioModels Database: An enhanced, curated and annotated resource for published quantitative kinetic models. BMC Syst Biol., 4:92.&lt;/a&gt;
  &lt;/p&gt;
&lt;/body&gt;

    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="compartemnt 1" simulationType="fixed" dimensionality="3">
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="IR" simulationType="ode" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-07-04T20:32:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          -&lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Compartments[compartemnt 1],Vector=Metabolites[V1a],Reference=Concentration&gt;+&lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Compartments[compartemnt 1],Vector=Metabolites[V1b],Reference=Concentration&gt;+&lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Compartments[compartemnt 1],Vector=Metabolites[v1r],Reference=Concentration&gt;+&lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Compartments[compartemnt 1],Vector=Metabolites[V1g],Reference=Concentration&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="IRins" simulationType="ode" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-07-04T20:33:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Compartments[compartemnt 1],Vector=Metabolites[V1a],Reference=Concentration&gt;-&lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Compartments[compartemnt 1],Vector=Metabolites[V1b],Reference=Concentration&gt;-&lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Compartments[compartemnt 1],Vector=Metabolites[V1c],Reference=Concentration&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="IRp" simulationType="ode" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-07-04T20:33:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Compartments[compartemnt 1],Vector=Metabolites[V1c],Reference=Concentration&gt;-&lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Compartments[compartemnt 1],Vector=Metabolites[V1d],Reference=Concentration&gt;-&lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Compartments[compartemnt 1],Vector=Metabolites[V1g],Reference=Concentration&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="IRip" simulationType="ode" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-07-04T20:33:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Compartments[compartemnt 1],Vector=Metabolites[V1d],Reference=Concentration&gt;-&lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Compartments[compartemnt 1],Vector=Metabolites[V1e],Reference=Concentration&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="IRi" simulationType="ode" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-07-04T20:33:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Compartments[compartemnt 1],Vector=Metabolites[V1e],Reference=Concentration&gt;-&lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Compartments[compartemnt 1],Vector=Metabolites[v1r],Reference=Concentration&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="IRS" simulationType="ode" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-07-04T20:33:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          -&lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Compartments[compartemnt 1],Vector=Metabolites[V2],Reference=Concentration&gt;+&lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Compartments[compartemnt 1],Vector=Metabolites[Vm2],Reference=Concentration&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="IRSip" simulationType="ode" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-07-04T20:33:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Compartments[compartemnt 1],Vector=Metabolites[V2],Reference=Concentration&gt;-&lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Compartments[compartemnt 1],Vector=Metabolites[Vm2],Reference=Concentration&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="X" simulationType="ode" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-07-04T20:33:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          -&lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Compartments[compartemnt 1],Vector=Metabolites[V3],Reference=Concentration&gt;+&lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Compartments[compartemnt 1],Vector=Metabolites[Vm3],Reference=Concentration&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="Xp" simulationType="ode" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-07-04T20:33:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Compartments[compartemnt 1],Vector=Metabolites[V3],Reference=Concentration&gt;-&lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Compartments[compartemnt 1],Vector=Metabolites[Vm3],Reference=Concentration&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="V1a" simulationType="assignment" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-07-04T20:33:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Values[k1a],Reference=Value&gt;*&lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Values[ins],Reference=Value&gt;*&lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Compartments[compartemnt 1],Vector=Metabolites[IR],Reference=Concentration&gt;+&lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Values[k1abasic],Reference=Value&gt;*&lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Compartments[compartemnt 1],Vector=Metabolites[IR],Reference=Concentration&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="V1b" simulationType="assignment" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-07-04T20:33:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Values[k1b],Reference=Value&gt;*&lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Compartments[compartemnt 1],Vector=Metabolites[IRins],Reference=Concentration&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="V1c" simulationType="assignment" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-07-04T20:33:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Values[k1c],Reference=Value&gt;*&lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Compartments[compartemnt 1],Vector=Metabolites[IRins],Reference=Concentration&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="V1d" simulationType="assignment" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-07-04T20:33:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Values[k1d],Reference=Value&gt;*&lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Compartments[compartemnt 1],Vector=Metabolites[IRp],Reference=Concentration&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="V1e" simulationType="assignment" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-07-04T20:34:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Compartments[compartemnt 1],Vector=Metabolites[IRip],Reference=Concentration&gt;*((&lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Values[k1e],Reference=Value&gt;+&lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Values[k1f],Reference=Value&gt;*&lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Compartments[compartemnt 1],Vector=Metabolites[Xp],Reference=Concentration&gt;)/(1+&lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Compartments[compartemnt 1],Vector=Metabolites[Xp],Reference=Concentration&gt;))
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="V1g" simulationType="assignment" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-07-04T20:34:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Values[k1g],Reference=Value&gt;*&lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Compartments[compartemnt 1],Vector=Metabolites[IRp],Reference=Concentration&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="v1r" simulationType="assignment" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-07-04T20:34:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Values[k1r],Reference=Value&gt;*&lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Compartments[compartemnt 1],Vector=Metabolites[IRi],Reference=Concentration&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_16" name="V2" simulationType="assignment" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-07-04T20:34:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Values[k21],Reference=Value&gt;*(&lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Compartments[compartemnt 1],Vector=Metabolites[IRp],Reference=Concentration&gt;+&lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Values[k22],Reference=Value&gt;*&lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Compartments[compartemnt 1],Vector=Metabolites[IRip],Reference=Concentration&gt;)*&lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Compartments[compartemnt 1],Vector=Metabolites[IRS],Reference=Concentration&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="Vm2" simulationType="assignment" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-07-04T20:34:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Values[km2],Reference=Value&gt;*&lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Compartments[compartemnt 1],Vector=Metabolites[IRSip],Reference=Concentration&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_18" name="V3" simulationType="assignment" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-07-04T20:34:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Values[k3],Reference=Value&gt;*&lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Compartments[compartemnt 1],Vector=Metabolites[X],Reference=Concentration&gt;*&lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Compartments[compartemnt 1],Vector=Metabolites[IRSip],Reference=Concentration&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="Vm3" simulationType="assignment" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-07-04T20:34:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Values[km3],Reference=Value&gt;*&lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Compartments[compartemnt 1],Vector=Metabolites[Xp],Reference=Concentration&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_20" name="simXp" simulationType="assignment" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-07-04T20:34:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Compartments[compartemnt 1],Vector=Metabolites[Xp],Reference=Concentration&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_21" name="intamount" simulationType="assignment" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-07-05T15:58:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Compartments[compartemnt 1],Vector=Metabolites[IRi],Reference=Concentration&gt;+&lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Compartments[compartemnt 1],Vector=Metabolites[IRip],Reference=Concentration&gt;)/10
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_22" name="measIRp" simulationType="assignment" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-07-04T20:40:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Values[ky1],Reference=Value&gt;*(&lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Compartments[compartemnt 1],Vector=Metabolites[IRp],Reference=Concentration&gt;+&lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Compartments[compartemnt 1],Vector=Metabolites[IRip],Reference=Concentration&gt;)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_23" name="measdoublestep" simulationType="assignment" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-07-04T20:34:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Values[ky2],Reference=Value&gt;*&lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Compartments[compartemnt 1],Vector=Metabolites[IRSip],Reference=Concentration&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_24" name="measanna" simulationType="assignment" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-07-04T20:34:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Values[kyanna],Reference=Value&gt;*&lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Compartments[compartemnt 1],Vector=Metabolites[IRSip],Reference=Concentration&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_25" name="measdosR" simulationType="assignment" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-07-04T20:34:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Values[kyDosR],Reference=Value&gt;*&lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Compartments[compartemnt 1],Vector=Metabolites[IRSip],Reference=Concentration&gt;
        </Expression>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="k1a" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-07-04T20:34:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="k1abasic" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_2" name="k1b" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_3" name="k1e" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_4" name="k1f" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_5" name="k1g" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_6" name="k1r" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_7" name="k21" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_8" name="k22" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_9" name="km2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_10" name="k3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_11" name="km3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_12" name="ky1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_13" name="ky2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_14" name="kyanna" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_15" name="kyDosR" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-07-04T20:27:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="ins" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-07-04T20:26:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="k1c" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_18" name="k1d" simulationType="fixed">
      </ModelValue>
    </ListOfModelValues>
    <ListOfEvents>
      <Event key="Event_0" name="initial ins" order="1">
        <TriggerExpression>
          &lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Reference=Time&gt; eq 0
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="ModelValue_16">
            <Expression>
              1.2
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_1" name="ins addition" order="2">
        <TriggerExpression>
          &lt;CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Reference=Time&gt; ge 4
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="ModelValue_16">
            <Expression>
              10
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
    </ListOfEvents>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
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
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_18"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_20"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_22"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_24"/>
      <StateTemplateVariable objectReference="Metabolite_25"/>
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
      <StateTemplateVariable objectReference="ModelValue_13"/>
      <StateTemplateVariable objectReference="ModelValue_14"/>
      <StateTemplateVariable objectReference="ModelValue_15"/>
      <StateTemplateVariable objectReference="ModelValue_16"/>
      <StateTemplateVariable objectReference="ModelValue_17"/>
      <StateTemplateVariable objectReference="ModelValue_18"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 6.02214179e+024 0 0 0 0 6.02214179e+024 0 6.02214179e+024 0 1.598818811532589e+024 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.3892881852 0.012452744 0.02000224505 4.38334e-005 20.0726035037 286.6994648072 3.6327773442 1.6722503302 0.036381619 32.5942371891 1.6286590231 0.1131073982 152.9631668536 8936.219557405 16760.1203140926 13740.4321729991 0.65 0.3635167928 1580.6782649401 1 
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
        <Parameter name="StepNumber" type="unsignedInteger" value="1000"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="10"/>
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
    <PlotSpecification name="Fig D" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[measdoublestep]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Brannmark2010_InsulinSignalling_Mifamodel_Fig5D,Vector=Compartments[compartemnt 1],Vector=Metabolites[measdoublestep],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="mifawithevent.xml">
    <SBMLMap SBMLid="IR" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="IRS" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="IRSip" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="IRi" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="IRins" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="IRip" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="IRp" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="V1a" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="V1b" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="V1c" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="V1d" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="V1e" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="V1g" COPASIkey="Metabolite_14"/>
    <SBMLMap SBMLid="V1r" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="V2" COPASIkey="Metabolite_16"/>
    <SBMLMap SBMLid="V3" COPASIkey="Metabolite_18"/>
    <SBMLMap SBMLid="Vm2" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="Vm3" COPASIkey="Metabolite_19"/>
    <SBMLMap SBMLid="X" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="Xp" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="compartment_0000001" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="event_1" COPASIkey="Event_0"/>
    <SBMLMap SBMLid="event_2" COPASIkey="Event_1"/>
    <SBMLMap SBMLid="ins" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="intamount" COPASIkey="Metabolite_21"/>
    <SBMLMap SBMLid="k1a" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="k1abasic" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="k1b" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="k1c" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="k1d" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="k1e" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="k1f" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="k1g" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="k1r" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="k21" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="k22" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="k3" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="km2" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="km3" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="ky1" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="ky2" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="kyDosR" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="kyanna" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="measIRp" COPASIkey="Metabolite_22"/>
    <SBMLMap SBMLid="measanna" COPASIkey="Metabolite_24"/>
    <SBMLMap SBMLid="measdosR" COPASIkey="Metabolite_25"/>
    <SBMLMap SBMLid="measdoublestep" COPASIkey="Metabolite_23"/>
    <SBMLMap SBMLid="simXP" COPASIkey="Metabolite_20"/>
  </SBMLReference>
</COPASI>
